package repository

import (
	"context"
	"strconv"
	"strings"
	"time"

	"github.com/L1mus/Tickitz-backend/internal/model"
	"github.com/jackc/pgx/v5/pgxpool"
)

type MovieRepository struct {
	db *pgxpool.Pool
}

func NewMovieRepository(db *pgxpool.Pool) *MovieRepository {
	return &MovieRepository{db: db}
}

func (r *MovieRepository) GetMovieDetail(ctx context.Context, movieID int) (*model.MovieDetail, error) {
	const q = `
		SELECT m.id, m.title, COALESCE(m.poster, '') AS poster, m.release_date, CAST(m.duration AS TEXT) AS duration, COALESCE(m.synopsis, '') AS synopsis, COALESCE(m.category, '') AS category, STRING_AGG(DISTINCT d.name, ', ') AS directors
		FROM movies m
		LEFT JOIN movie_directors md ON m.id = md.movie_id
		LEFT JOIN directors d ON md.director_id = d.id
		WHERE m.id = $1
		GROUP BY
			m.id, m.title, m.poster, m.release_date,
			m.duration, m.synopsis, m.category`

	row := r.db.QueryRow(ctx, q, movieID)

	var movie model.MovieDetail
	err := row.Scan(&movie.ID, &movie.Title, &movie.Poster, &movie.ReleaseDate, &movie.Duration, &movie.Synopsis, &movie.Category, &movie.Directors)
	if err != nil {
		return nil, err
	}
	return &movie, nil
}

func (r *MovieRepository) GetMovieGenres(ctx context.Context, movieID int) ([]model.Genre, error) {
	const q = `
		SELECT g.id, g.genre
		FROM genres g
		JOIN movie_genres mg ON g.id = mg.genre_id
		WHERE mg.movie_id = $1`

	rows, err := r.db.Query(ctx, q, movieID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var genres []model.Genre
	for rows.Next() {
		var g model.Genre
		if err := rows.Scan(&g.ID, &g.Genre); err != nil {
			return nil, err
		}
		genres = append(genres, g)
	}
	return genres, rows.Err()
}

func (r *MovieRepository) GetMovieCasts(ctx context.Context, movieID int) ([]model.Cast, error) {
	const q = `
		SELECT c.id, c.name
		FROM casts c
		JOIN movie_casts mc ON c.id = mc.cast_id
		WHERE mc.movie_id = $1`

	rows, err := r.db.Query(ctx, q, movieID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var casts []model.Cast
	for rows.Next() {
		var c model.Cast
		if err := rows.Scan(&c.ID, &c.Name); err != nil {
			return nil, err
		}
		casts = append(casts, c)
	}
	return casts, rows.Err()
}

func (r *MovieRepository) GetShowtimesByFilter(
	ctx context.Context,
	movieID int,
	date time.Time,
	city string,
	showTime *string,
) ([]model.ShowtimeItem, error) {
	const q = `
		SELECT st.id AS showtime_id, c.id AS cinema_id, c.name AS cinema_name, COALESCE(c.logo, '') AS cinema_logo, st.date AS show_date, CAST(st.time AS TEXT) AS show_time, st.price AS ticket_price
		FROM showtimes st
		JOIN cinemas c ON st.cinema_id = c.id
		JOIN locations l ON c.location_id = l.id
		WHERE
			st.movie_id = $1
			AND st.date = $2
			AND l.city = $3
			AND (st.time = $4::TIME OR $4 IS NULL)
		ORDER BY st.time ASC`

	rows, err := r.db.Query(ctx, q, movieID, date, city, showTime)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var items []model.ShowtimeItem
	for rows.Next() {
		var s model.ShowtimeItem
		if err := rows.Scan(&s.ShowtimeID, &s.CinemaID, &s.CinemaName, &s.CinemaLogo, &s.ShowDate, &s.ShowTime, &s.TicketPrice); err != nil {
			return nil, err
		}
		items = append(items, s)
	}
	return items, rows.Err()
}

func (r *MovieRepository) GetAvailableLocations(ctx context.Context, movieID int) ([]model.Location, error) {
	const q = `
		SELECT DISTINCT l.id, l.city
		FROM locations l
		JOIN cinemas c ON l.id = c.location_id
		JOIN showtimes st ON c.id = st.cinema_id
		WHERE st.movie_id = $1
		ORDER BY l.city ASC`

	rows, err := r.db.Query(ctx, q, movieID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var locations []model.Location
	for rows.Next() {
		var l model.Location
		if err := rows.Scan(&l.ID, &l.City); err != nil {
			return nil, err
		}
		locations = append(locations, l)
	}
	return locations, rows.Err()
}

func (r *MovieRepository) GetAllMovies(ctx context.Context) ([]model.Movies, error) {
	const q = `SELECT m.id, m.title, STRING_AGG(g.id || ':' || g.genre, ',') AS genre, m.poster, m.release_date 
				FROM movies m
				JOIN movie_genres mg ON mg.movie_id = m.id 
				JOIN genres g ON g.id = mg.genre_id
				GROUP BY m.id, m.title, m.poster, m.release_date
				ORDER BY m.release_date ASC
				`
	rows, err := r.db.Query(ctx, q)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var movies []model.Movies
	for rows.Next() {
		var m model.Movies
		var genreString string

		if err := rows.Scan(&m.Id, &m.Title, &genreString, &m.Poster, &m.ReleaseDate); err != nil {
			return nil, err
		}

		if genreString != "" {
			splitGenres := strings.Split(genreString, ",")
			for _, gPair := range splitGenres {
				gInfo := strings.Split(gPair, ":")
				if len(gInfo) == 2 {
					gID, _ := strconv.Atoi(gInfo[0])

					m.Genre = append(m.Genre, model.Genre{
						ID:    gID,
						Genre: strings.TrimSpace(gInfo[1]),
					})
				}
			}
		}
		movies = append(movies, m)
	}
	return movies, rows.Err()
}
