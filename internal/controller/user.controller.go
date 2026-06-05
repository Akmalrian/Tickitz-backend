package controller

import (
	"log"

	"github.com/L1mus/Tickitz-backend/internal/service"
	"github.com/gin-gonic/gin"
)

type UserController struct {
	userService *service.UserService
}

func NewUserController(userService *service.UserService) *UserController {
	return &UserController{
		userService: userService,
	}
}

func (c *UserController) GetUserProfile(ctx *gin.Context) {
	log.Println("test guys")
}
