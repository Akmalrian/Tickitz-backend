package repository

import (
	"context"

	"github.com/L1mus/Tickitz-backend/internal/model"
	"github.com/jackc/pgx/v5/pgxpool"
)

type UserRepository struct {
	db *pgxpool.Pool
}

func NewUserRepository(db *pgxpool.Pool) *UserRepository {
	return &UserRepository{
		db: db,
	}
}

func (r *UserRepository) GetUserProfile(ctx context.Context, userID int) (*model.UserProfile, error) {
	const q = `
		SELECT id,
			COALESCE(first_name, '') AS first_name,
			COALESCE(last_name, '') AS last_name,
			email,
			COALESCE(phone, '') AS phone,
			COALESCE(photo, '') AS photo,
			point,
			created_at,
			updated_at
		FROM users
		WHERE id = $1`

	row := r.db.QueryRow(ctx, q, userID)
	var up model.UserProfile
	err := row.Scan(&up.Id, &up.FirstName, &up.LastName, &up.Email, &up.Phone, &up.Photo, &up.Point, &up.Created_At, &up.Updated_At)
	if err != nil {
		return nil, err
	}
	return &up, nil
}

func (r *UserRepository) UpdateProfileById(ctx context.Context, userID int, firstName, lastName, phone, photo, hashedPassword *string) (model.UserProfile, error) {
	q := `
		UPDATE users
		SET
			first_name = COALESCE($2, first_name),
			last_name = COALESCE($3, last_name),
			phone = COALESCE($4, phone),
			photo = COALESCE($5, photo),
			password = COALESCE($6, password),
			updated_at = NOW()
		WHERE id = $1
		RETURNING id, first_name, last_name, phone, photo;
	`

	args := []any{userID, firstName, lastName, phone, photo, hashedPassword}

	var user model.UserProfile
	err := r.db.QueryRow(ctx, q, args...).Scan(
		&user.Id,
		&user.FirstName,
		&user.LastName,
		&user.Phone,
		&user.Photo,
	)

	if err != nil {
		return model.UserProfile{}, err
	}
	return user, nil
}
