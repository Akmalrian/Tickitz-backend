package router

import (
	"github.com/gin-gonic/gin"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/redis/go-redis/v9"
)

func OrderRouter(router *gin.Engine, db *pgxpool.Pool, rdb *redis.Client) {
	// orderRouter := router.Group("/orders")

}
