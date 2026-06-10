package pkg

import (
	"fmt"
	"strconv"

	"gopkg.in/gomail.v2"
)

type Mailer interface {
	SendOTP(to string, otpCode string) error
}

type gomailMailer struct {
	host     string
	port     int
	username string
	password string
	from     string
}

func NewGomailMailer(host, portStr, username, password, from string) Mailer {
	port, err := strconv.Atoi(portStr)
	if err != nil {
		port = 587
	}

	return &gomailMailer{
		host:     host,
		port:     port,
		username: username,
		password: password,
		from:     from,
	}
}

func (m *gomailMailer) SendOTP(to string, otpCode string) error {
	msg := gomail.NewMessage()

	msg.SetHeader("From", m.from)
	msg.SetHeader("To", to)
	msg.SetHeader("Subject", "Tickitz - Kode OTP Anda")

	body := fmt.Sprintf(`
		<div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #e5e7eb; border-radius: 8px;">
            <h2 style="color: #1f2937; text-align: center;">Security Verification</h2>
            <p style="color: #4b5563; font-size: 16px;">Hello,</p>
            <p style="color: #4b5563; font-size: 16px;">Please use the following OTP code to continue your process in the Tickitz app:</p>
            
            <div style="background-color: #f3f4f6; padding: 16px; border-radius: 8px; text-align: center; margin: 24px 0;">
                <h1 style="color: #2563eb; letter-spacing: 8px; margin: 0; font-size: 32px;">%s</h1>
            </div>
            
            <p style="color: #4b5563; font-size: 14px;">This code is only valid for <strong>5 minutes</strong>. Do not share this code with anyone.</p>
            <hr style="border: none; border-top: 1px solid #e5e7eb; margin: 24px 0;" />
            <p style="color: #9ca3af; font-size: 12px; text-align: center;">This is an automated email, please do not reply.</p>
        </div>`, otpCode)

	msg.SetBody("text/html", body)

	dialer := gomail.NewDialer(m.host, m.port, m.username, m.password)

	if err := dialer.DialAndSend(msg); err != nil {
		return fmt.Errorf("gomail failed send email: %w", err)
	}

	return nil
}