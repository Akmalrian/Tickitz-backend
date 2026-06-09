package service

import (
	"context"
	"log"

	apperror "github.com/L1mus/Tickitz-backend/internal/appError"
	"github.com/L1mus/Tickitz-backend/internal/dto"
	"github.com/L1mus/Tickitz-backend/internal/repository"
	"github.com/jackc/pgx/v5/pgxpool"
)

type OrderService struct {
	orderRepo *repository.OrderRepository
	db        *pgxpool.Pool
}

func NewOrderService(orderRepo *repository.OrderRepository, db *pgxpool.Pool) *OrderService {
	return &OrderService{
		orderRepo: orderRepo,
		db:        db,
	}
}

func (s *OrderService) GetSeats(ctx context.Context, showtimeID int) (dto.SeatPageResponse, error) {
	/*
	   Mulai DB transaction (BEGIN)
	   defer: rollback jika ada panic/error
	   Ambil summary showtime (movie, cinema, tanggal, harga)
	   Jika error → rollback, return error
	   Ambil cinema_id dari summary (dibutuhkan untuk query kursi)
	   Ambil semua kursi + status (Available/Sold) untuk showtime & cinema ini
	   Jika error → rollback, return error
	   Commit DB transaction
	   return response, nil
	*/
	tx, err := s.db.Begin(ctx)
	if err != nil {
		return dto.SeatPageResponse{}, err
	}
	defer func(tx pgx.Tx, ctx context.Context) {
		if err != nil {
			log.Println("rollback error: ", err.Error())
		}
	}(tx, ctx)
	detailMovie, err := s.orderRepo.GetShowtimeSummary(ctx, tx, showtimeID)
	if err != nil {
		return dto.SeatPageResponse{}, err
	}

	data, err := s.orderRepo.GetSeatsByShowtime(ctx, tx, showtimeID, detailMovie.CinemaID)
	if err != nil {
		return dto.SeatPageResponse{}, err
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
