package model

import "time"

type MovieDetail struct {
	ID          int
	Title       string
	Poster      string
	ReleaseDate *time.Time
	Duration    *string
	Synopsis    string
	Category    string
	Directors   string
}

type Genre struct {
	ID    int
	Genre string
}

type Cast struct {
	ID   int
	Name string
}

type ShowtimeItem struct {
	ShowtimeID  int
	CinemaID    int
	CinemaName  string
	CinemaLogo  string
	ShowDate    time.Time
	ShowTime    string
	TicketPrice int
}

type Location struct {
	ID   int
	City string
}
