CREATE TABLE locations(
    id SERIAL PRIMARY KEY,
    city VARCHAR(255)
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone VARCHAR(255),
    photo VARCHAR(255),
    location_id INT,
    isActive BOOLEAN DEFAULT FALSE NOT NULL,
    role ENUM('User', 'Admin') NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP,
    
    FOREIGN KEY (location_id) REFERENCES locations(id)
);

CREATE TABLE movies(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    duration INTERVAL HOUR TO MINUTE,
    poster VARCHAR,
    synopsis TEXT
    release_date DATETIME,
    category VARCHAR,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP,
);

CREATE TABLE genres(
    id SERIAL PRIMARY KEY,
    genre VARCHAR(255)
)

CREATE TABLE casts(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100q)
)

CREATE TABLE directors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
)

CREATE TABLE movie_genres(
    movie_id INT,
    genre_id INT,

    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE movie_casts(
    movie_id INT,
    cast_id INT,

    PRIMARY KEY (movie_id, cast_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (cast_id) REFERENCES casts(cast_id)
);

CREATE TABLE movie_directors(
    movie_id INT,
    director_id INT,

    PRIMARY KEY (movie_id, director_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

CREATE TABLE cinemas(
    id SERIAL PRIMARY KEY,
    location_id INT,
    name VARCHAR(255),
    logo VARCHAR(255),
    capacity integer,
    isAvaible BOOLEAN DEFAULT TRUE,

    FOREIGN KEY (location_id) REFERENCES locations(id)
);

CREATE TABLE showtime(
    id SERIAL PRIMARY KEY,
    movie_id INT,
    cinema_id INT,
    date DATE,
    time TIMESTAMP,
    price INT,

    FOREIGN KEY (movie_id) REFERENCES movies(id)
    FOREIGN KEY (cinema_id) REFERENCES cinemas(id)
);

CREATE TABLE seats{
    id SERIAL PRIMARY KEY,
    cinema_id INT,
    seat_number INT, 
    row VARCHAR

    FOREIGN KEY (cinema_id) REFERENCES cinemas(id)
}

CREATE TABLE bookings(
    id SERIAL PRIMARY KEY,
    user_id INT,
    showtime_id INT,
    quantity INT,
    status_ticket ENUM('used', 'not_used') DEFAULT 'not_used' ,
    status_paid ENUM('paid', 'not_paid') DEFAULT 'not_paid',
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP

    FOREIGN KEY (user_id) REFERENCES users(id)
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);

CREATE TABLE payment_methods(
    id SERIAL PRIMARY KEY,
    logo VARCHAR(255),
    name VARCHAR(100)
);

CREATE TABLE transactions{
    id SERIAL PRIMARY KEY,
    booking_id INT,
    payment_method_id INT,
    virtual_number VARCHAR(255),
    total_price INT,
    status_transaction ENUM('Completed', 'Pending', 'Failed') DEFAULT 'Pending'
    qr_code VARCHAR(255)
}


