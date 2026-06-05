package service

import (
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
