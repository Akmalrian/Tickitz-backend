package service

import (
	"context"
	"fmt"
	"strings"
	"time"

	"github.com/L1mus/Tickitz-backend/internal/cache"
	"github.com/L1mus/Tickitz-backend/internal/dto"
	"github.com/L1mus/Tickitz-backend/internal/repository"
	"github.com/redis/go-redis/v9"
)

type UserService struct {
	userRepository *repository.UserRepository
	rdb            *redis.Client
}

func NewUserService(userRepository *repository.UserRepository, rdb *redis.Client) *UserService {
	return &UserService{
		userRepository: userRepository,
		rdb:            rdb,
	}
}

const userProfileTTL = 10 * time.Minute

func (s *UserService) GetProfile(ctx context.Context, userID int) (dto.UserProfileResponse, error) {
	/*
		 Cek cache Redis dulu dengan key: "user:profile:{userID}"
		 Jika ada di cache → parse dan return langsung (tidak query DB)
		 Jika tidak ada di cache:
		     Ambil dari DB (first_name, last_name, email, phone)
		     Jika error → return error
		     Simpan ke Redis dengan TTL (misalnya 10 menit)
		     return data profile, nil
		strategi cache-aside:
		1. Cek Redis dulu (key: "user:profile:{userID}")
		2. Jika HIT → parse dan return langsung (tanpa query DB)
		3. Jika MISS → query DB → simpan ke Redis (TTL 10 menit) → return
	*/
	cacheKey := fmt.Sprintf("user:profile:%d", userID)
	var resp dto.UserProfileResponse
	hit, err := cache.GetFromCache(ctx, s.rdb, cacheKey, &resp)
	if err != nil {
		_ = err
	}
	if hit {
		return resp, nil
	}

	profile, err := s.userRepository.GetUserProfile(ctx, userID)
	if err != nil {
		return dto.UserProfileResponse{}, fmt.Errorf("get user profile from db: %w", err)
	}

	fullName := strings.TrimSpace(profile.FirstName + " " + profile.LastName)

	resp = dto.UserProfileResponse{
		FirstName: profile.FirstName,
		LastName:  profile.LastName,
		FullName:  fullName,
		Email:     profile.Email,
		Phone:     profile.Phone,
	}
	_ = cache.SaveToCache(ctx, s.rdb, cacheKey, resp, userProfileTTL)

	return resp, nil
}

func (s *UserService) InvalidateProfileCache(ctx context.Context, userID int) error {
	cacheKey := fmt.Sprintf("user:profile:%d", userID)
	return cache.DelFromCache(ctx, s.rdb, cacheKey)
}
