package router

import (
	"github.com/L1mus/Tickitz-backend/internal/controller"
	"github.com/L1mus/Tickitz-backend/internal/repository"
	"github.com/L1mus/Tickitz-backend/internal/service"
	"github.com/gin-gonic/gin"
	"github.com/jackc/pgx/v5/pgxpool"
)

func MovieRouter(router *gin.RouterGroup, db *pgxpool.Pool) {
	movieRouter := router.Group("/movies")
	movieRepository := repository.NewMovieRepository(db)
	movieService := service.NewMovieService(movieRepository)
	movieController := controller.NewMovieController(movieService)
	movieRouter.GET("", movieController.GetAllMovies)
}
