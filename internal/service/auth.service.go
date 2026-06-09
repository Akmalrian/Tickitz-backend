package service

import (
	"context"
	"errors"
	"fmt"
	"time"

	apperror "github.com/L1mus/Tickitz-backend/internal/appError"
	"github.com/L1mus/Tickitz-backend/internal/dto"
	"github.com/L1mus/Tickitz-backend/internal/model"
	"github.com/L1mus/Tickitz-backend/internal/repository"
	"github.com/L1mus/Tickitz-backend/pkg"
	"github.com/redis/go-redis/v9"
)

type AuthService struct {
	authRepo repository.AuthRepository
	rdb *redis.Client
	mailer pkg.Mailer
}

func NewAuthService(authRepo repository.AuthRepository , rdb *redis.Client, mailer pkg.Mailer) *AuthService {
	return &AuthService{
		authRepo:authRepo,
		rdb:rdb,
		mailer:mailer,
	}
}

func (as *AuthService) Login(ctx context.Context, req dto.LoginRequest) (dto.LoginResponse, error) {
	if req.Email == "" || req.Password == "" {
		return dto.LoginResponse{}, apperror.ErrInvalidCredentials
	}
	if len(req.Password) < 8 {
		return dto.LoginResponse{}, apperror.ErrInvalidPassword
	}
	if !pkg.IsValidEmail(req.Email) {
		return dto.LoginResponse{}, apperror.ErrInvalidEmail
	}

	user, err := as.authRepo.GetUserByEmail(ctx, req.Email)
	if err != nil {
		if errors.Is(err, apperror.ErrUserNotFound) {
			return dto.LoginResponse{}, apperror.ErrUserNotFound
		}
		return dto.LoginResponse{}, apperror.ErrInternalServer
	}

	if !user.Is_Active {
		return dto.LoginResponse{}, errors.New("please activate your account using the OTP sent to your email")
	}

	hashCfg := &pkg.HashConfig{}
	if err := hashCfg.Compare(req.Password, user.Password); err != nil {
		return dto.LoginResponse{}, apperror.ErrInvalidPassword
	}

	var fullName string
	if user.First_Name != nil {
		fullName = *user.First_Name
	}
	
	if fullName == "" {
		fullName = user.Email
	} else if user.Last_Name != nil {
		fullName = fmt.Sprintf("%s %s", fullName, *user.Last_Name)
	}

	claims := pkg.NewClaims(int(user.ID), fullName)
	token, err := claims.GenJWT()
	if err != nil {
		return dto.LoginResponse{}, apperror.ErrInternalServer
	}

	return dto.LoginResponse{
		Message: "Login successful",
		Token:   token,
	}, nil
}

func (as *AuthService) Register(ctx context.Context, req dto.RegisterRequest) (dto.RegisterResponse, error) {
	if req.Email == "" || req.Password == "" {
		return dto.RegisterResponse{}, apperror.ErrInvalidCredentials
	}
	if len(req.Password) < 8 {
		return dto.RegisterResponse{}, apperror.ErrInvalidPassword
	}
	if !pkg.IsValidEmail(req.Email) {
		return dto.RegisterResponse{}, apperror.ErrInvalidEmail
	}

	isExist, err := as.authRepo.CheckEmailExist(ctx, req.Email)
	if err != nil {
		return dto.RegisterResponse{}, apperror.ErrInternalServer
	}
	if isExist {
		return dto.RegisterResponse{}, apperror.ErrEmailRegistered
	}

	hashCfg := &pkg.HashConfig{}
    hashCfg.UseRecommended()
    hashedPassword := hashCfg.GenHash(req.Password)

    newUser := &model.Users{
        Email:    req.Email,
        Password: hashedPassword,
    }

	if err := as.authRepo.CreateUser(ctx, newUser); err != nil {
		return dto.RegisterResponse{}, apperror.ErrInternalServer
	}

	otpCode, err := pkg.GenerateOTP()
	if err != nil {
		return dto.RegisterResponse{}, apperror.ErrInternalServer
	}

	// save in redis
	redisKey := "otp:register:" + req.Email
	if err := as.rdb.Set(ctx, redisKey, otpCode, 5*time.Minute).Err(); err != nil {
		return dto.RegisterResponse{}, apperror.ErrInternalServer
	}
	fmt.Printf("DEBUG: OTP Code for %s is: %s\n", req.Email, otpCode)

	// send email otp
	if err := as.mailer.SendOTP(req.Email, otpCode); err != nil {
		fmt.Printf("Warning: failed to send OTP to %s: %v\n", req.Email, err)
		fmt.Println("otp: ", otpCode)
	}

	return dto.RegisterResponse{
		Message:   "Registration successful. Please check your email for the OTP.",
		Email:     req.Email,
		Is_Active: false,
	}, nil
}

func (as *AuthService) ActivateAccount(ctx context.Context, req dto.ActivationRequest) error {
	redisKey := "otp:register:" + req.Email

	// get otp in redis
	storedOTP, err := as.rdb.Get(ctx, redisKey).Result()
	if err != nil {
		if err == redis.Nil {
			return apperror.ErrOTPExpired
		}
		return apperror.ErrInternalServer
	}
	if storedOTP != req.OTP {
		return apperror.ErrOTPInvalid
	}

	if err := as.authRepo.ActivateUser(ctx, req.Email); err != nil {
		if errors.Is(err, apperror.ErrUserNotFound) {
			return apperror.ErrUserNotFound
		}
		return apperror.ErrInternalServer
	}

	_ = as.rdb.Del(ctx, redisKey)

	return nil
}