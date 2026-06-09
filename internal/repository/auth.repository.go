package repository

import (
	"context"
	"errors"

	apperror "github.com/L1mus/Tickitz-backend/internal/appError"
	"github.com/L1mus/Tickitz-backend/internal/model"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
)

type AuthRepository interface {
	CreateUser(ctx context.Context, user *model.Users) error
	CheckEmailExist(ctx context.Context, email string) (bool, error)
	GetUserByEmail(ctx context.Context, email string) (model.Users, error)
	ActivateUser(ctx context.Context, email string) error
}
type authRepository struct {
	db *pgxpool.Pool
}

func NewAuthRepository(db *pgxpool.Pool) AuthRepository {
	return &authRepository{
		db: db,
	}
}

func (ar *authRepository) CreateUser(ctx context.Context, user *model.Users) error {
	query := `INSERT INTO users (email, password) VALUES ($1, $2)`
	
	_, err := ar.db.Exec(ctx, query, user.Email, user.Password)
	return err
}

func (ar *authRepository) CheckEmailExist(ctx context.Context, email string) (bool, error) {
	query := `SELECT EXISTS(SELECT 1 FROM users WHERE email = $1)`

	var exists bool
	err := ar.db.QueryRow(ctx, query, email).Scan(&exists)
	if err != nil {
		return false, err
	}

	return exists, nil
}
func (ar *authRepository) GetUserByEmail(ctx context.Context, email string) (model.Users, error) {
	query := `SELECT id, email, password, first_name, last_name, phone, photo, role, location_id,isactive FROM users WHERE email = $1`
	var user model.Users
	var locID *int
	err := ar.db.QueryRow(ctx, query, email).Scan(&user.ID, &user.Email, &user.Password, &user.First_Name, &user.Last_Name, &user.Phone, &user.Photo, &user.Role, &locID,&user.Is_Active,)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.Users{}, apperror.ErrUserNotFound
		}
		return model.Users{}, err
	}
	if locID != nil {
		user.Location = &model.Locations{
			ID: *locID,
		}
	}
	return user, nil
}

func (ar *authRepository) ActivateUser(ctx context.Context, email string) error {
	query := `UPDATE users SET isactive = true, updated_at = NOW() WHERE email = $1`

	result, err := ar.db.Exec(ctx, query, email)
	if err != nil {
		return err
	}

	if result.RowsAffected() == 0 {
		return apperror.ErrUserNotFound
	}

	return nil
}