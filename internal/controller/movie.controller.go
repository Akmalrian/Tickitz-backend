package controller

import (
	"fmt"
	"net/http"

	apperror "github.com/L1mus/Tickitz-backend/internal/appError"
	"github.com/L1mus/Tickitz-backend/internal/response"
	"github.com/L1mus/Tickitz-backend/internal/service"
	"github.com/gin-gonic/gin"
)

type MovieController struct {
	movieService *service.MovieService
}

func NewMovieController(movieService *service.MovieService) *MovieController {
	return &MovieController{
		movieService: movieService,
	}
}

// @Summary      Get All movies
// @Description  fetch all movie data to be displayed on the main page
// @Tags         movie
// @Accept       json
// @Produce      json
// @Success      200 {object} dto.ResponseSuccess
// @Failure      500 {object} dto.ResponseError
// @Router       /movies [get]
func (c *MovieController) GetAllMovies(ctx *gin.Context) {
	movies, err := c.movieService.GetMovies(ctx.Request.Context())
	if err != nil {
		fmt.Println("LOG ERROR 500:", err.Error())
		response.Error(ctx, http.StatusInternalServerError, apperror.ErrInternalServer.Error())
		return
	}

	response.Success(ctx, http.StatusOK, "get movies success", movies)
}

// @Summary      Get All movies
// @Description  fetch all movie data to be displayed on the main page
// @Tags         movie
// @Accept       json
// @Produce      json
// @Success      200 {object} dto.ResponseSuccess
// @Failure      500 {object} dto.ResponseError
// @Router       /movies [get]
// func (c *MovieController) GetMovieDetail(ctx *gin.Context, movieID int) {

// }
