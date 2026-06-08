package dto

type ProfileRequest struct {
	FirstName *string `form:"firstname" json:"firstname"`
	LastName  *string `form:"lastname" json:"lastname"`
	Phone     *string `form:"phone" json:"phone"`
}

type ChangePasswordRequest struct {
	NewPassword     string `form:"new_password" json:"new_password"`
	ConfirmPassword string `form:"confirm_password" json:"confirm_password"`
}

type UserProfileResponse struct {
	Id        int     `json:"id"`
	FirstName *string `json:"first_name"`
	LastName  *string `json:"last_name"`
	FullName  *string `json:"full_name"`
	Email     string  `json:"email"`
	Photo     *string `json:"photo"`
	Phone     *string `json:"phone"`
	Point     *int    `json:"point"`
}
