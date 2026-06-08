package service

import (
	"github.com/L1mus/Tickitz-backend/internal/repository"
	"github.com/jackc/pgx/v5/pgxpool"
)

type OrderService struct {
	orderRepo *repository.OrderRepository
	db        *pgxpool.Pool
}

func NewOrderService(
	orderRepo *repository.OrderRepository,
	db *pgxpool.Pool,
) *OrderService {
	return &OrderService{
		orderRepo: orderRepo,
		db:        db,
	}
}

func (s *OrderService) GetSeatPage() {
	/*
	   Mulai DB transaction (BEGIN)
	   defer: rollback jika ada panic/error
	   Ambil summary showtime (movie, cinema, tanggal, harga)
	   Jika error → rollback, return error
	   Ambil cinema_id dari summary (dibutuhkan untuk query kursi)
	   Ambil semua kursi + status (Available/Sold) untuk showtime & cinema ini
	   Jika error → rollback, return error
	   Commit DB transaction
	   Rakit jadi response: summary + daftar kursi
	   return response, nil
	*/
}

func (s *OrderService) CreateBooking() {
	/*
	   Validasi: pastikan req.SeatIDs tidak kosong
	   Validasi: pastikan jumlah seat == req.Quantity
	   Mulai DB transaction (BEGIN)
	   defer: rollback jika ada panic/error
	   Re-cek kursi yang diminta apakah masih Available
	   (query ulang status kursi di dalam transaction)
	   Jika ada yang sudah Sold → rollback, return error "Seat already taken"
	   INSERT ke tabel bookings
	       → set status_ticket = 'active', status_paid = 'not_paid'
	       → return booking_id
	   Loop setiap seat_id di req.SeatIDs:
	       INSERT ke booking_seats (booking_id, seat_id, showtime_id)
	       Jika error (kemungkinan race condition / duplicate) → rollback, return error
	   Commit DB transaction
	   return booking_id, nil
	*/
}
