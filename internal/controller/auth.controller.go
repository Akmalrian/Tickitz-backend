package controller

import (
	"errors"
	"fmt"
	"net/http"
	"strings"

	apperror "github.com/L1mus/Tickitz-backend/internal/appError"
	"github.com/L1mus/Tickitz-backend/internal/dto"
	"github.com/L1mus/Tickitz-backend/internal/response"
	"github.com/L1mus/Tickitz-backend/internal/service"
	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
)

type AuthController struct {
	authService *service.AuthService
}

func NewAuthController(authService *service.AuthService) *AuthController {
	return &AuthController{
		authService: authService,
	}
}

// @Summary      Login User
// @Description  Melakukan autentikasi menggunakan email dan password untuk mendapatkan token JWT
// @Tags         Auth
// @Accept       json
// @Produce      json
// @Param        request body dto.LoginRequest true "Payload Login"
// @Success      200 {object} dto.ResponseSuccess{data=dto.LoginResponse} "Login Berhasil"
// @Failure      400 {object} dto.ResponseError "Format input tidak valid"
// @Failure      401 {object} dto.ResponseError "Email atau password salah"
// @Failure      500 {object} dto.ResponseError "Internal server error"
// @Router       /auth [post]
func (c *AuthController) Login(ctx *gin.Context) {
	var req dto.LoginRequest
	if err := ctx.ShouldBindWith(&req, binding.JSON); err != nil {
		errStr := err.Error()

		if strings.Contains(errStr, "password") || strings.Contains(errStr, "min=8") {
			response.Error(ctx, http.StatusBadRequest, apperror.ErrInvalidPassword.Error())
		} else if strings.Contains(errStr, "email") {
			response.Error(ctx, http.StatusBadRequest, apperror.ErrInvalidEmail.Error())
		} else if strings.Contains(errStr, "required") {
			response.Error(ctx, http.StatusBadRequest, apperror.ErrCredentialsRequired.Error())
		} else {
			response.Error(ctx, http.StatusBadRequest, "Invalid input data")
		}
		return
	}

	res, err := c.authService.Login(ctx.Request.Context(), req)
	if err != nil {
		if errors.Is(err, apperror.ErrInvalidCredentials) ||
			errors.Is(err, apperror.ErrUserNotFound) ||
			errors.Is(err, apperror.ErrInvalidPassword) {
			response.Error(ctx, http.StatusUnauthorized, apperror.ErrInvalidCredentials.Error())
			return
		}
		if err.Error() == "please activate your account using the OTP sent to your email" {
			response.Error(ctx, http.StatusForbidden, err.Error())
			return
		}

		fmt.Println("LOG ERROR 500:", err.Error())
		response.Error(ctx, http.StatusInternalServerError, apperror.ErrInternalServer.Error())
		return
	}

	response.Success(ctx, http.StatusOK, "Login Success", res)
}

// @Summary      Register User
// @Description  Mendaftarkan pengguna baru dan mengirimkan OTP ke email
// @Tags         Auth
// @Accept       json
// @Produce      json
// @Param        request body dto.RegisterRequest true "Payload Register"
// @Success      201 {object} dto.ResponseSuccess{data=dto.RegisterResponse} "Register Berhasil"
// @Failure      400 {object} dto.ResponseError "Format input tidak valid"
// @Failure      409 {object} dto.ResponseError "Email sudah terdaftar"
// @Failure      500 {object} dto.ResponseError "Internal server error"
// @Router       /auth/register [post]
func (c *AuthController) Register(ctx *gin.Context) {
	var req dto.RegisterRequest
	if err := ctx.ShouldBindWith(&req, binding.JSON); err != nil {
		errStr := err.Error()

		if strings.Contains(errStr, "password") || strings.Contains(errStr, "min=8") {
			response.Error(ctx, http.StatusBadRequest, apperror.ErrInvalidPassword.Error())
		} else if strings.Contains(errStr, "email") {
			response.Error(ctx, http.StatusBadRequest, apperror.ErrInvalidEmail.Error())
		} else if strings.Contains(errStr, "required") {
			response.Error(ctx, http.StatusBadRequest, apperror.ErrCredentialsRequired.Error())
		} else {
			response.Error(ctx, http.StatusBadRequest, "Invalid input data")
		}
		return
	}

	res, err := c.authService.Register(ctx.Request.Context(), req)
	if err != nil {
		if errors.Is(err, apperror.ErrEmailRegistered) {
			response.Error(ctx, http.StatusConflict, apperror.ErrEmailRegistered.Error())
			return
		}

		fmt.Println("LOG ERROR 500:", err.Error())
		response.Error(ctx, http.StatusInternalServerError, apperror.ErrInternalServer.Error())
		return
	}

	response.Success(ctx, http.StatusCreated, "Check OTP in your email", res)
}

// @Summary      Activate Account
// @Description  Verifikasi OTP untuk mengaktifkan akun user
// @Tags         Auth
// @Accept       json
// @Produce      json
// @Param        request body dto.ActivationRequest true "Payload Aktivasi"
// @Success      200 {object} dto.ResponseSuccess "Akun berhasil diaktifkan"
// @Failure      400 {object} dto.ResponseError "OTP tidak valid/kadaluarsa"
// @Failure      500 {object} dto.ResponseError "Internal server error"
// @Router       /auth/activate [post]
func (c *AuthController) Activate(ctx *gin.Context) {
	var req dto.ActivationRequest
	if err := ctx.ShouldBindWith(&req, binding.JSON); err != nil {
		response.Error(ctx, http.StatusBadRequest, "Invalid input data")
		return
	}

	err := c.authService.ActivateAccount(ctx.Request.Context(), req)
	if err != nil {
		statusCode := http.StatusInternalServerError
		if errors.Is(err, apperror.ErrOTPInvalid) || errors.Is(err, apperror.ErrOTPExpired) {
			statusCode = http.StatusBadRequest
		}

		response.Error(ctx, statusCode, err.Error())
		return
	}

	response.Success(ctx, http.StatusOK, "Account activated successfully", nil)
}