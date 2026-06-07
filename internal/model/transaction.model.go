package model

import "time"

type PaymentMethod struct {
	ID   int
	Name string
	Logo string
}

type BookingSummary struct {
	BookingID    int
	MovieTitle   string
	Category     string
	CinemaName   string
	ShowDate     time.Time
	ShowTime     string
	TicketPrice  int
	Quantity     int
	TotalPayment int
	StatusPaid   string
}

type BookedSeat struct {
	Label string
}

type TransactionModal struct {
	TransactionID   int
	VirtualRek      int64
	TotalPrice      int
	Status          string
	PaymentDeadline time.Time
}

type TicketResult struct {
	QRCode        string
	TotalPrice    int
	PaymentStatus string
	MovieTitle    string
	Category      string
	ShowDate      time.Time
	ShowTime      string
	TicketCount   int
	SeatLabels    string
}
