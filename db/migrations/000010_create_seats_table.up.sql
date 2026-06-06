CREATE TABLE seats (
    id SERIAL PRIMARY KEY,
    cinema_id INTEGER,
    seat_number INTEGER NOT NULL,
    row VARCHAR(10) NOT NULL,
    seat_type type_seat DEFAULT 'regular',
    CONSTRAINT fk_seats_cinema FOREIGN KEY (cinema_id) REFERENCES cinemas(id)
);