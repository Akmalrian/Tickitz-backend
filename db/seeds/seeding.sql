-- ============================================================
--  TICKITZ — DUMMY DATA FOR TESTING
--  Generated based on schema analysis & UI design mockups
--  Tables: locations, users, payment_methods, genres, casts,
--          directors, movies, cinemas, seats, showtimes,
--          bookings, transactions, movie_genres, movie_casts,
--          movie_directors, booking_seats
-- ============================================================
 -- NOTE: schema uses "role_user" type for users.role, but
--       ENUM defined as "status_role". Adjust to your migration.
--       Also "seats" has no PK — referenced via rowid/ctid or
--       you may want to add one; booking_seats.seat_id may need
--       adjustment depending on your actual migration.
 -- ============================================================
-- 1. LOCATIONS (10 kota Indonesia)
-- ============================================================

INSERT INTO locations (id, city)
VALUES (1, 'Jakarta'),
       (2, 'Surabaya'),
       (3, 'Bandung'),
       (4, 'Medan'),
       (5, 'Semarang'),
       (6, 'Makassar'),
       (7, 'Palembang'),
       (8, 'Denpasar'),
       (9, 'Yogyakarta'),
       (10, 'Malang');

-- ============================================================
-- 2. PAYMENT METHODS (8 metode)
-- ============================================================

INSERT INTO payment_methods (id, logo, name)
VALUES (1, 'https://cdn.tickitz.id/pm/gopay.png', 'GoPay'),
       (2, 'https://cdn.tickitz.id/pm/ovo.png', 'OVO'),
       (3, 'https://cdn.tickitz.id/pm/dana.png', 'DANA'),
       (4, 'https://cdn.tickitz.id/pm/bca.png', 'Transfer BCA'),
       (5, 'https://cdn.tickitz.id/pm/mandiri.png', 'Transfer Mandiri'),
       (6, 'https://cdn.tickitz.id/pm/bni.png', 'Transfer BNI'),
       (7, 'https://cdn.tickitz.id/pm/creditcard.png', 'Kartu Kredit'),
       (8, 'https://cdn.tickitz.id/pm/alfamart.png', 'Alfamart');

-- ============================================================
-- 3. GENRES (12 genre)
-- ============================================================

INSERT INTO genres (id, genre)
VALUES (1, 'Action'),
       (2, 'Comedy'),
       (3, 'Drama'),
       (4, 'Horror'),
       (5, 'Romance'),
       (6, 'Sci-Fi'),
       (7, 'Thriller'),
       (8, 'Animation'),
       (9, 'Adventure'),
       (10, 'Fantasy'),
       (11, 'Crime'),
       (12, 'Documentary');

-- ============================================================
-- 4. DIRECTORS (15 sutradara)
-- ============================================================

INSERT INTO directors (id, name)
VALUES (1, 'Christopher Nolan'),
       (2, 'James Cameron'),
       (3, 'Joko Anwar'),
       (4, 'Ridley Scott'),
       (5, 'Greta Gerwig'),
       (6, 'Bong Joon-ho'),
       (7, 'Martin Scorsese'),
       (8, 'Hanung Bramantyo'),
       (9, 'J.J. Abrams'),
       (10, 'Nia DaCosta'),
       (11, 'Ryan Coogler'),
       (12, 'Denny Sumargo'),
       (13, 'Anthony Russo'),
       (14, 'Chloe Zhao'),
       (15, 'Raditya Dika');

-- ============================================================
-- 5. CASTS (25 aktor/aktris)
-- ============================================================

INSERT INTO casts (id, name)
VALUES (1, 'Cillian Murphy'),
       (2, 'Tom Hanks'),
       (3, 'Reza Rahadian'),
       (4, 'Laura Basuki'),
       (5, 'Ryan Gosling'),
       (6, 'Margot Robbie'),
       (7, 'Song Kang-ho'),
       (8, 'Zendaya'),
       (9, 'Timothée Chalamet'),
       (10, 'Prilly Latuconsina'),
       (11, 'Nicholas Saputra'),
       (12, 'Raisa Andriana'),
       (13, 'Chris Evans'),
       (14, 'Scarlett Johansson'),
       (15, 'Iko Uwais'),
       (16, 'Dian Sastrowardoyo'),
       (17, 'Lupita Nyong''o'),
       (18, 'Pedro Pascal'),
       (19, 'Florence Pugh'),
       (20, 'Adipati Dolken'),
       (21, 'Bunga Citra Lestari'),
       (22, 'Oscar Isaac'),
       (23, 'Ana de Armas'),
       (24, 'Chelsea Islan'),
       (25, 'Hamish Daud');

-- ============================================================
-- 6. MOVIES (15 film)
-- ============================================================

INSERT INTO movies (id, title, duration, poster, realase_data, synopsis, category)
VALUES (1, 'Interstellar Reborn', '02:49:00', 'https://cdn.tickitz.id/posters/interstellar_reborn.jpg', '2025-03-15', 'Seorang astronot nekat melintasi lubang cacing demi menyelamatkan umat manusia dari kehancuran bumi yang semakin tak layak huni.', '13+'),
       (2, 'Satria Dewa: Gatotkaca 2', '02:05:00', 'https://cdn.tickitz.id/posters/gatotkaca2.jpg', '2025-04-20', 'Gatotkaca kembali bangkit menghadapi ancaman kekuatan jahat yang lebih besar dari sebelumnya untuk melindungi nusantara.', '13+'),
       (3, 'Oppenheimer Rising', '03:00:00', 'https://cdn.tickitz.id/posters/oppenheimer_rising.jpg', '2025-02-10', 'Kisah lanjutan dari dilema moral seorang ilmuwan fisika nuklir yang terpaksa berhadapan dengan konsekuensi ciptaannya.', '17+'),
       (4, 'Dune: The Final Chapter', '02:35:00', 'https://cdn.tickitz.id/posters/dune3.jpg', '2025-05-01', 'Paul Atreides memimpin perang terakhir melawan kekaisaran galaksi demi kebebasan rakyat Arrakis.', '13+'),
       (5, 'Horor Rumah Merah', '01:45:00', 'https://cdn.tickitz.id/posters/rumah_merah.jpg', '2025-04-05', 'Sebuah keluarga muda pindah ke rumah merah misterius dan mulai mengalami teror supranatural yang mengancam nyawa mereka.', '17+'),
       (6, 'Cinta Di Ujung Jalan', '01:50:00', 'https://cdn.tickitz.id/posters/cinta_ujung_jalan.jpg', '2025-03-28', 'Dua jiwa yang bertolak belakang bertemu secara tidak sengaja dan menemukan cinta di tengah perjalanan hidup yang penuh kejutan.', 'SU'),
       (7, 'Avengers: New Dawn', '02:55:00', 'https://cdn.tickitz.id/posters/avengers_new_dawn.jpg', '2025-05-10', 'Generasi pahlawan baru bergabung untuk menghadapi ancaman multidimensi yang mengancam eksistensi seluruh semesta.', '13+'),
       (8, 'KKN di Desa Penari 3', '01:55:00', 'https://cdn.tickitz.id/posters/kkn3.jpg', '2025-04-12', 'Mahasiswa KKN angkatan baru kembali ke desa penari dan mengungkap ritual terlarang yang lebih gelap dari sebelumnya.', '17+'),
       (9, 'The Killer''s Code', '02:10:00', 'https://cdn.tickitz.id/posters/killers_code.jpg', '2025-02-25', 'Seorang detektif jenius harus memecahkan kode misterius yang ditinggalkan pembunuh berantai sebelum korban berikutnya jatuh.', '17+'),
       (10, 'Elemental Storm', '01:58:00', 'https://cdn.tickitz.id/posters/elemental_storm.jpg', '2025-03-05', 'Animasi epik tentang empat elemen alam yang harus bersatu untuk mencegah badai kiamat yang menghancurkan dunia mereka.', 'SU'),
       (11, 'Jakarta Under Siege', '02:20:00', 'https://cdn.tickitz.id/posters/jakarta_under_siege.jpg', '2025-05-20', 'Aksi menegangkan ketika kelompok teroris menguasai pusat kota Jakarta dan satu pria harus menghentikan mereka sendirian.', '17+'),
       (12, 'Love in Bali', '01:40:00', 'https://cdn.tickitz.id/posters/love_in_bali.jpg', '2025-04-25', 'Seorang fotografer bertemu dengan wanita lokal Bali yang membantunya menemukan kembali makna hidup dan cinta sejati.', 'SU'),
       (13, 'Galaxy Patrol Z', '02:15:00', 'https://cdn.tickitz.id/posters/galaxy_patrol_z.jpg', '2025-06-01', 'Tim patroli galaksi lintas planet harus menghadapi invasi alien raksasa yang mengancam sistem tata surya mereka.', '13+'),
       (14, 'Pembuktian', '02:00:00', 'https://cdn.tickitz.id/posters/pembuktian.jpg', '2025-03-20', 'Drama keluarga menyentuh tentang seorang anak yang berjuang membuktikan innocensi ayahnya yang dipenjara atas tuduhan palsu.', '13+'),
       (15, 'Paradoks', '02:25:00', 'https://cdn.tickitz.id/posters/paradoks.jpg', '2025-05-30', 'Thriller psikologis tentang seorang pria yang terbangun di tubuh versi dirinya di masa lalu dan harus mencegah tragedi besar.', '17+');

-- ============================================================
-- 7. MOVIE_GENRES (relasi film-genre)
-- ============================================================

INSERT INTO movie_genres (movie_id, genre_id)
VALUES (1, 6),
       (1, 9),
       -- Interstellar Reborn: Sci-Fi, Adventure
(2, 1),
                                                (2, 9),
                                                (2, 10),
                                                -- Gatotkaca 2: Action, Adventure, Fantasy
(3, 3),
                                                                                          (3, 7),
                                                                                          -- Oppenheimer Rising: Drama, Thriller
(4, 6),
                                                                                                                                (4, 9),
                                                                                                                                (4, 1),
                                                                                                                                -- Dune 3: Sci-Fi, Adventure, Action
(5, 4),
                                                                                                                                                                    (5, 7),
                                                                                                                                                                    -- Rumah Merah: Horror, Thriller
(6, 5),
                                                                                                                                                                                                    (6, 3),
                                                                                                                                                                                                    -- Cinta Ujung Jalan: Romance, Drama
(7, 1),
                                                                                                                                                                                                                                        (7, 9),
                                                                                                                                                                                                                                        (7, 6),
                                                                                                                                                                                                                                        -- Avengers: Action, Adventure, Sci-Fi
(8, 4),
                                                                                                                                                                                                                                                                              -- KKN 3: Horror
(9, 11),
                                                                                                                                                                                                                                                                                              (9, 7),
                                                                                                                                                                                                                                                                                              -- Killer's Code: Crime, Thriller
(10, 8),
                                                                                                                                                                                                                                                                                                                               (10, 9),
                                                                                                                                                                                                                                                                                                                               (10, 10),
                                                                                                                                                                                                                                                                                                                               -- Elemental Storm: Animation, Adventure, Fantasy
(11, 1),
                                                                                                                                                                                                                                                                                                                                                                                (11, 7),
                                                                                                                                                                                                                                                                                                                                                                                -- Jakarta Under Siege: Action, Thriller
(12, 5),
                                                                                                                                                                                                                                                                                                                                                                                                                        (12, 3),
                                                                                                                                                                                                                                                                                                                                                                                                                        -- Love in Bali: Romance, Drama
(13, 6),
                                                                                                                                                                                                                                                                                                                                                                                                                                                       (13, 1),
                                                                                                                                                                                                                                                                                                                                                                                                                                                       (13, 9),
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- Galaxy Patrol Z: Sci-Fi, Action, Adventure
(14, 3),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    -- Pembuktian: Drama
(15, 7),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (15, 3); -- Paradoks: Thriller, Drama

-- ============================================================
-- 8. MOVIE_DIRECTORS (relasi film-director)
-- ============================================================

INSERT INTO movie_directors (movie_id, director_id)
VALUES (1, 1),
       -- Interstellar Reborn — Christopher Nolan
(2, 3),
                                                 -- Gatotkaca 2 — Joko Anwar
(3, 1),
                                                                            -- Oppenheimer Rising — Christopher Nolan
(4, 4),
                                                                                                                     -- Dune 3 — Ridley Scott
(5, 3),
                                                                                                                                             -- Rumah Merah — Joko Anwar
(6, 8),
                                                                                                                                                                        -- Cinta Ujung Jalan — Hanung Bramantyo
(7, 13),
                                                                                                                                                                                                               -- Avengers — Anthony Russo
(8, 3),
                                                                                                                                                                                                                                          -- KKN 3 — Joko Anwar
(9, 7),
                                                                                                                                                                                                                                                               -- Killer's Code — Martin Scorsese
(10, 14),
                                                                                                                                                                                                                                                                                                 -- Elemental Storm — Chloe Zhao
(11, 12),
                                                                                                                                                                                                                                                                                                                                -- Jakarta Under Siege — Denny Sumargo
(12, 15),
                                                                                                                                                                                                                                                                                                                                                                      -- Love in Bali — Raditya Dika
(13, 9),
                                                                                                                                                                                                                                                                                                                                                                                                    -- Galaxy Patrol Z — J.J. Abrams
(14, 8),
                                                                                                                                                                                                                                                                                                                                                                                                                                    -- Pembuktian — Hanung Bramantyo
(15, 6); -- Paradoks — Bong Joon-ho

-- ============================================================
-- 9. MOVIE_CASTS (relasi film-cast)
-- ============================================================

INSERT INTO movie_casts (movie_id, cast_id)
VALUES (1, 1),
       (1, 8),
       -- Interstellar Reborn
(2, 3),
                             (2, 10),
                             (2, 15),
                             -- Gatotkaca 2
(3, 1),
                                           (3, 18),
                                           -- Oppenheimer Rising
(4, 9),
                                                                (4, 8),
                                                                (4, 18),
                                                                -- Dune 3
(5, 10),
                                                                         (5, 24),
                                                                         -- Rumah Merah
(6, 4),
                                                                                       (6, 20),
                                                                                       -- Cinta Ujung Jalan
(7, 13),
                                                                                                           (7, 14),
                                                                                                           (7, 17),
                                                                                                           -- Avengers
(8, 10),
                                                                                                                      (8, 16),
                                                                                                                      -- KKN 3
(9, 7),
                                                                                                                              (9, 22),
                                                                                                                              -- Killer's Code
(10, 5),
                                                                                                                                              (10, 6),
                                                                                                                                              -- Elemental Storm
(11, 15),
                                                                                                                                                                (11, 3),
                                                                                                                                                                -- Jakarta Under Siege
(12, 4),
                                                                                                                                                                                      (12, 25),
                                                                                                                                                                                      -- Love in Bali
(13, 9),
                                                                                                                                                                                                     (13, 18),
                                                                                                                                                                                                     -- Galaxy Patrol Z
(14, 3),
                                                                                                                                                                                                                       (14, 16),
                                                                                                                                                                                                                       -- Pembuktian
(15, 11),
                                                                                                                                                                                                                                    (15, 24); -- Paradoks

-- ============================================================
-- 10. CINEMAS (12 bioskop di berbagai kota)
-- ============================================================

INSERT INTO cinemas (id, location_id, name, logo, capacity, isAvailable)
VALUES (1, 1, 'XXI Grand Indonesia', 'https://cdn.tickitz.id/cinema/xxi.png', 120, true),
       (2, 1, 'CGV Blitz Grand Indonesia','https://cdn.tickitz.id/cinema/cgv.png', 96, true),
       (3, 1, 'Cinepolis Kuningan City', 'https://cdn.tickitz.id/cinema/cinepolis.png', 80, true),
       (4, 2, 'XXI Tunjungan Plaza', 'https://cdn.tickitz.id/cinema/xxi.png', 110, true),
       (5, 2, 'CGV Surabaya Town Square', 'https://cdn.tickitz.id/cinema/cgv.png', 88, true),
       (6, 3, 'CGV Paris Van Java', 'https://cdn.tickitz.id/cinema/cgv.png', 96, true),
       (7, 3, 'XXI Cihampelas Walk', 'https://cdn.tickitz.id/cinema/xxi.png', 80, true),
       (8, 4, 'XXI Sun Plaza Medan', 'https://cdn.tickitz.id/cinema/xxi.png', 100, true),
       (9, 5, 'XXI Paragon Mall Semarang','https://cdn.tickitz.id/cinema/xxi.png', 90, true),
       (10, 8, 'CGV Bali Galeria', 'https://cdn.tickitz.id/cinema/cgv.png', 88, true),
       (11, 9, 'XXI Plaza Ambarrukmo', 'https://cdn.tickitz.id/cinema/xxi.png', 80, true),
       (12, 1, 'IMAX Dbox FX Sudirman', 'https://cdn.tickitz.id/cinema/imax.png', 60, true);

-- ============================================================
-- 11. SEATS (generate kursi untuk setiap bioskop)
--     Format: baris A-L, nomor 1-10 (kapasitas ~120)
--     Untuk bioskop kapasitas lebih kecil, baris lebih sedikit
-- ============================================================
 -- Cinema 1 (120 kursi): Baris A-L, nomor 1-10

INSERT INTO seats (cinema_id, seat_number, row)
VALUES (1,1,'A'),
       (1,2,'A'),
       (1,3,'A'),
       (1,4,'A'),
       (1,5,'A'),
       (1,6,'A'),
       (1,7,'A'),
       (1,8,'A'),
       (1,9,'A'),
       (1,10,'A'),
       (1,1,'B'),
       (1,2,'B'),
       (1,3,'B'),
       (1,4,'B'),
       (1,5,'B'),
       (1,6,'B'),
       (1,7,'B'),
       (1,8,'B'),
       (1,9,'B'),
       (1,10,'B'),
       (1,1,'C'),
       (1,2,'C'),
       (1,3,'C'),
       (1,4,'C'),
       (1,5,'C'),
       (1,6,'C'),
       (1,7,'C'),
       (1,8,'C'),
       (1,9,'C'),
       (1,10,'C'),
       (1,1,'D'),
       (1,2,'D'),
       (1,3,'D'),
       (1,4,'D'),
       (1,5,'D'),
       (1,6,'D'),
       (1,7,'D'),
       (1,8,'D'),
       (1,9,'D'),
       (1,10,'D'),
       (1,1,'E'),
       (1,2,'E'),
       (1,3,'E'),
       (1,4,'E'),
       (1,5,'E'),
       (1,6,'E'),
       (1,7,'E'),
       (1,8,'E'),
       (1,9,'E'),
       (1,10,'E'),
       (1,1,'F'),
       (1,2,'F'),
       (1,3,'F'),
       (1,4,'F'),
       (1,5,'F'),
       (1,6,'F'),
       (1,7,'F'),
       (1,8,'F'),
       (1,9,'F'),
       (1,10,'F'),
       (1,1,'G'),
       (1,2,'G'),
       (1,3,'G'),
       (1,4,'G'),
       (1,5,'G'),
       (1,6,'G'),
       (1,7,'G'),
       (1,8,'G'),
       (1,9,'G'),
       (1,10,'G'),
       (1,1,'H'),
       (1,2,'H'),
       (1,3,'H'),
       (1,4,'H'),
       (1,5,'H'),
       (1,6,'H'),
       (1,7,'H'),
       (1,8,'H'),
       (1,9,'H'),
       (1,10,'H'),
       (1,1,'I'),
       (1,2,'I'),
       (1,3,'I'),
       (1,4,'I'),
       (1,5,'I'),
       (1,6,'I'),
       (1,7,'I'),
       (1,8,'I'),
       (1,9,'I'),
       (1,10,'I'),
       (1,1,'J'),
       (1,2,'J'),
       (1,3,'J'),
       (1,4,'J'),
       (1,5,'J'),
       (1,6,'J'),
       (1,7,'J'),
       (1,8,'J'),
       (1,9,'J'),
       (1,10,'J'),
       (1,1,'K'),
       (1,2,'K'),
       (1,3,'K'),
       (1,4,'K'),
       (1,5,'K'),
       (1,6,'K'),
       (1,7,'K'),
       (1,8,'K'),
       (1,9,'K'),
       (1,10,'K'),
       (1,1,'L'),
       (1,2,'L'),
       (1,3,'L'),
       (1,4,'L'),
       (1,5,'L'),
       (1,6,'L'),
       (1,7,'L'),
       (1,8,'L'),
       (1,9,'L'),
       (1,10,'L');

-- Cinema 2 (96 kursi): Baris A-J (minus 2), nomor 1-10 (hanya 9 baris + 6)

INSERT INTO seats (cinema_id, seat_number, row)
VALUES (2,1,'A'),
       (2,2,'A'),
       (2,3,'A'),
       (2,4,'A'),
       (2,5,'A'),
       (2,6,'A'),
       (2,7,'A'),
       (2,8,'A'),
       (2,9,'A'),
       (2,10,'A'),
       (2,1,'B'),
       (2,2,'B'),
       (2,3,'B'),
       (2,4,'B'),
       (2,5,'B'),
       (2,6,'B'),
       (2,7,'B'),
       (2,8,'B'),
       (2,9,'B'),
       (2,10,'B'),
       (2,1,'C'),
       (2,2,'C'),
       (2,3,'C'),
       (2,4,'C'),
       (2,5,'C'),
       (2,6,'C'),
       (2,7,'C'),
       (2,8,'C'),
       (2,9,'C'),
       (2,10,'C'),
       (2,1,'D'),
       (2,2,'D'),
       (2,3,'D'),
       (2,4,'D'),
       (2,5,'D'),
       (2,6,'D'),
       (2,7,'D'),
       (2,8,'D'),
       (2,9,'D'),
       (2,10,'D'),
       (2,1,'E'),
       (2,2,'E'),
       (2,3,'E'),
       (2,4,'E'),
       (2,5,'E'),
       (2,6,'E'),
       (2,7,'E'),
       (2,8,'E'),
       (2,9,'E'),
       (2,10,'E'),
       (2,1,'F'),
       (2,2,'F'),
       (2,3,'F'),
       (2,4,'F'),
       (2,5,'F'),
       (2,6,'F'),
       (2,7,'F'),
       (2,8,'F'),
       (2,9,'F'),
       (2,10,'F'),
       (2,1,'G'),
       (2,2,'G'),
       (2,3,'G'),
       (2,4,'G'),
       (2,5,'G'),
       (2,6,'G'),
       (2,7,'G'),
       (2,8,'G'),
       (2,9,'G'),
       (2,10,'G'),
       (2,1,'H'),
       (2,2,'H'),
       (2,3,'H'),
       (2,4,'H'),
       (2,5,'H'),
       (2,6,'H'),
       (2,7,'H'),
       (2,8,'H'),
       (2,9,'H'),
       (2,10,'H'),
       (2,1,'I'),
       (2,2,'I'),
       (2,3,'I'),
       (2,4,'I'),
       (2,5,'I'),
       (2,6,'I'),
       (2,7,'I'),
       (2,8,'I'),
       (2,9,'I'),
       (2,10,'I'),
       (2,1,'J'),
       (2,2,'J'),
       (2,3,'J'),
       (2,4,'J'),
       (2,5,'J'),
       (2,6,'J');

-- Cinema 3 (80 kursi): Baris A-H, nomor 1-10

INSERT INTO seats (cinema_id, seat_number, row)
VALUES (3,1,'A'),
       (3,2,'A'),
       (3,3,'A'),
       (3,4,'A'),
       (3,5,'A'),
       (3,6,'A'),
       (3,7,'A'),
       (3,8,'A'),
       (3,9,'A'),
       (3,10,'A'),
       (3,1,'B'),
       (3,2,'B'),
       (3,3,'B'),
       (3,4,'B'),
       (3,5,'B'),
       (3,6,'B'),
       (3,7,'B'),
       (3,8,'B'),
       (3,9,'B'),
       (3,10,'B'),
       (3,1,'C'),
       (3,2,'C'),
       (3,3,'C'),
       (3,4,'C'),
       (3,5,'C'),
       (3,6,'C'),
       (3,7,'C'),
       (3,8,'C'),
       (3,9,'C'),
       (3,10,'C'),
       (3,1,'D'),
       (3,2,'D'),
       (3,3,'D'),
       (3,4,'D'),
       (3,5,'D'),
       (3,6,'D'),
       (3,7,'D'),
       (3,8,'D'),
       (3,9,'D'),
       (3,10,'D'),
       (3,1,'E'),
       (3,2,'E'),
       (3,3,'E'),
       (3,4,'E'),
       (3,5,'E'),
       (3,6,'E'),
       (3,7,'E'),
       (3,8,'E'),
       (3,9,'E'),
       (3,10,'E'),
       (3,1,'F'),
       (3,2,'F'),
       (3,3,'F'),
       (3,4,'F'),
       (3,5,'F'),
       (3,6,'F'),
       (3,7,'F'),
       (3,8,'F'),
       (3,9,'F'),
       (3,10,'F'),
       (3,1,'G'),
       (3,2,'G'),
       (3,3,'G'),
       (3,4,'G'),
       (3,5,'G'),
       (3,6,'G'),
       (3,7,'G'),
       (3,8,'G'),
       (3,9,'G'),
       (3,10,'G'),
       (3,1,'H'),
       (3,2,'H'),
       (3,3,'H'),
       (3,4,'H'),
       (3,5,'H'),
       (3,6,'H'),
       (3,7,'H'),
       (3,8,'H'),
       (3,9,'H'),
       (3,10,'H');

-- Cinema 4–12: Baris A-H atau A-J, nomor 1-10 (disederhanakan)

INSERT INTO seats (cinema_id, seat_number, row)
VALUES (4,1,'A'),
       (4,2,'A'),
       (4,3,'A'),
       (4,4,'A'),
       (4,5,'A'),
       (4,6,'A'),
       (4,7,'A'),
       (4,8,'A'),
       (4,9,'A'),
       (4,10,'A'),
       (4,1,'B'),
       (4,2,'B'),
       (4,3,'B'),
       (4,4,'B'),
       (4,5,'B'),
       (4,6,'B'),
       (4,7,'B'),
       (4,8,'B'),
       (4,9,'B'),
       (4,10,'B'),
       (4,1,'C'),
       (4,2,'C'),
       (4,3,'C'),
       (4,4,'C'),
       (4,5,'C'),
       (4,6,'C'),
       (4,7,'C'),
       (4,8,'C'),
       (4,9,'C'),
       (4,10,'C'),
       (4,1,'D'),
       (4,2,'D'),
       (4,3,'D'),
       (4,4,'D'),
       (4,5,'D'),
       (4,6,'D'),
       (4,7,'D'),
       (4,8,'D'),
       (4,9,'D'),
       (4,10,'D'),
       (4,1,'E'),
       (4,2,'E'),
       (4,3,'E'),
       (4,4,'E'),
       (4,5,'E'),
       (4,6,'E'),
       (4,7,'E'),
       (4,8,'E'),
       (4,9,'E'),
       (4,10,'E'),
       (4,1,'F'),
       (4,2,'F'),
       (4,3,'F'),
       (4,4,'F'),
       (4,5,'F'),
       (4,6,'F'),
       (4,7,'F'),
       (4,8,'F'),
       (4,9,'F'),
       (4,10,'F'),
       (4,1,'G'),
       (4,2,'G'),
       (4,3,'G'),
       (4,4,'G'),
       (4,5,'G'),
       (4,6,'G'),
       (4,7,'G'),
       (4,8,'G'),
       (4,9,'G'),
       (4,10,'G'),
       (4,1,'H'),
       (4,2,'H'),
       (4,3,'H'),
       (4,4,'H'),
       (4,5,'H'),
       (4,6,'H'),
       (4,7,'H'),
       (4,8,'H'),
       (4,9,'H'),
       (4,10,'H'),
       (4,1,'I'),
       (4,2,'I'),
       (4,3,'I'),
       (4,4,'I'),
       (4,5,'I'),
       (4,6,'I'),
       (4,7,'I'),
       (4,8,'I'),
       (4,9,'I'),
       (4,10,'I'),
       (4,1,'J'),
       (4,2,'J'),
       (4,3,'J'),
       (4,4,'J'),
       (4,5,'J'),
       (4,6,'J'),
       (4,7,'J'),
       (4,8,'J'),
       (4,9,'J'),
       (4,10,'J'),
       (4,1,'K'),
       (4,2,'K');


INSERT INTO seats (cinema_id, seat_number, row)
VALUES (5,1,'A'),
       (5,2,'A'),
       (5,3,'A'),
       (5,4,'A'),
       (5,5,'A'),
       (5,6,'A'),
       (5,7,'A'),
       (5,8,'A'),
       (5,9,'A'),
       (5,10,'A'),
       (5,1,'B'),
       (5,2,'B'),
       (5,3,'B'),
       (5,4,'B'),
       (5,5,'B'),
       (5,6,'B'),
       (5,7,'B'),
       (5,8,'B'),
       (5,9,'B'),
       (5,10,'B'),
       (5,1,'C'),
       (5,2,'C'),
       (5,3,'C'),
       (5,4,'C'),
       (5,5,'C'),
       (5,6,'C'),
       (5,7,'C'),
       (5,8,'C'),
       (5,9,'C'),
       (5,10,'C'),
       (5,1,'D'),
       (5,2,'D'),
       (5,3,'D'),
       (5,4,'D'),
       (5,5,'D'),
       (5,6,'D'),
       (5,7,'D'),
       (5,8,'D'),
       (5,9,'D'),
       (5,10,'D'),
       (5,1,'E'),
       (5,2,'E'),
       (5,3,'E'),
       (5,4,'E'),
       (5,5,'E'),
       (5,6,'E'),
       (5,7,'E'),
       (5,8,'E'),
       (5,9,'E'),
       (5,10,'E'),
       (5,1,'F'),
       (5,2,'F'),
       (5,3,'F'),
       (5,4,'F'),
       (5,5,'F'),
       (5,6,'F'),
       (5,7,'F'),
       (5,8,'F'),
       (5,9,'F'),
       (5,10,'F'),
       (5,1,'G'),
       (5,2,'G'),
       (5,3,'G'),
       (5,4,'G'),
       (5,5,'G'),
       (5,6,'G'),
       (5,7,'G'),
       (5,8,'G'),
       (5,9,'G'),
       (5,10,'G'),
       (5,1,'H'),
       (5,2,'H'),
       (5,3,'H'),
       (5,4,'H'),
       (5,5,'H'),
       (5,6,'H'),
       (5,7,'H'),
       (5,8,'H');


INSERT INTO seats (cinema_id, seat_number, row)
VALUES (6,1,'A'),
       (6,2,'A'),
       (6,3,'A'),
       (6,4,'A'),
       (6,5,'A'),
       (6,6,'A'),
       (6,7,'A'),
       (6,8,'A'),
       (6,9,'A'),
       (6,10,'A'),
       (6,1,'B'),
       (6,2,'B'),
       (6,3,'B'),
       (6,4,'B'),
       (6,5,'B'),
       (6,6,'B'),
       (6,7,'B'),
       (6,8,'B'),
       (6,9,'B'),
       (6,10,'B'),
       (6,1,'C'),
       (6,2,'C'),
       (6,3,'C'),
       (6,4,'C'),
       (6,5,'C'),
       (6,6,'C'),
       (6,7,'C'),
       (6,8,'C'),
       (6,9,'C'),
       (6,10,'C'),
       (6,1,'D'),
       (6,2,'D'),
       (6,3,'D'),
       (6,4,'D'),
       (6,5,'D'),
       (6,6,'D'),
       (6,7,'D'),
       (6,8,'D'),
       (6,9,'D'),
       (6,10,'D'),
       (6,1,'E'),
       (6,2,'E'),
       (6,3,'E'),
       (6,4,'E'),
       (6,5,'E'),
       (6,6,'E'),
       (6,7,'E'),
       (6,8,'E'),
       (6,9,'E'),
       (6,10,'E'),
       (6,1,'F'),
       (6,2,'F'),
       (6,3,'F'),
       (6,4,'F'),
       (6,5,'F'),
       (6,6,'F'),
       (6,7,'F'),
       (6,8,'F'),
       (6,9,'F'),
       (6,10,'F'),
       (6,1,'G'),
       (6,2,'G'),
       (6,3,'G'),
       (6,4,'G'),
       (6,5,'G'),
       (6,6,'G'),
       (6,7,'G'),
       (6,8,'G'),
       (6,9,'G'),
       (6,10,'G'),
       (6,1,'H'),
       (6,2,'H'),
       (6,3,'H'),
       (6,4,'H'),
       (6,5,'H'),
       (6,6,'H'),
       (6,7,'H'),
       (6,8,'H'),
       (6,9,'H'),
       (6,10,'H'),
       (6,1,'I'),
       (6,2,'I'),
       (6,3,'I'),
       (6,4,'I'),
       (6,5,'I'),
       (6,6,'I');


INSERT INTO seats (cinema_id, seat_number, row)
VALUES (7,1,'A'),
       (7,2,'A'),
       (7,3,'A'),
       (7,4,'A'),
       (7,5,'A'),
       (7,6,'A'),
       (7,7,'A'),
       (7,8,'A'),
       (7,9,'A'),
       (7,10,'A'),
       (7,1,'B'),
       (7,2,'B'),
       (7,3,'B'),
       (7,4,'B'),
       (7,5,'B'),
       (7,6,'B'),
       (7,7,'B'),
       (7,8,'B'),
       (7,9,'B'),
       (7,10,'B'),
       (7,1,'C'),
       (7,2,'C'),
       (7,3,'C'),
       (7,4,'C'),
       (7,5,'C'),
       (7,6,'C'),
       (7,7,'C'),
       (7,8,'C'),
       (7,9,'C'),
       (7,10,'C'),
       (7,1,'D'),
       (7,2,'D'),
       (7,3,'D'),
       (7,4,'D'),
       (7,5,'D'),
       (7,6,'D'),
       (7,7,'D'),
       (7,8,'D'),
       (7,9,'D'),
       (7,10,'D'),
       (7,1,'E'),
       (7,2,'E'),
       (7,3,'E'),
       (7,4,'E'),
       (7,5,'E'),
       (7,6,'E'),
       (7,7,'E'),
       (7,8,'E'),
       (7,9,'E'),
       (7,10,'E'),
       (7,1,'F'),
       (7,2,'F'),
       (7,3,'F'),
       (7,4,'F'),
       (7,5,'F'),
       (7,6,'F'),
       (7,7,'F'),
       (7,8,'F'),
       (7,9,'F'),
       (7,10,'F'),
       (7,1,'G'),
       (7,2,'G'),
       (7,3,'G'),
       (7,4,'G'),
       (7,5,'G'),
       (7,6,'G'),
       (7,7,'G'),
       (7,8,'G'),
       (7,9,'G'),
       (7,10,'G'),
       (7,1,'H'),
       (7,2,'H'),
       (7,3,'H'),
       (7,4,'H'),
       (7,5,'H'),
       (7,6,'H'),
       (7,7,'H'),
       (7,8,'H'),
       (7,9,'H'),
       (7,10,'H');


INSERT INTO seats (cinema_id, seat_number, row)
VALUES (12,1,'A'),
       (12,2,'A'),
       (12,3,'A'),
       (12,4,'A'),
       (12,5,'A'),
       (12,6,'A'),
       (12,7,'A'),
       (12,8,'A'),
       (12,9,'A'),
       (12,10,'A'),
       (12,1,'B'),
       (12,2,'B'),
       (12,3,'B'),
       (12,4,'B'),
       (12,5,'B'),
       (12,6,'B'),
       (12,7,'B'),
       (12,8,'B'),
       (12,9,'B'),
       (12,10,'B'),
       (12,1,'C'),
       (12,2,'C'),
       (12,3,'C'),
       (12,4,'C'),
       (12,5,'C'),
       (12,6,'C'),
       (12,7,'C'),
       (12,8,'C'),
       (12,9,'C'),
       (12,10,'C'),
       (12,1,'D'),
       (12,2,'D'),
       (12,3,'D'),
       (12,4,'D'),
       (12,5,'D'),
       (12,6,'D'),
       (12,7,'D'),
       (12,8,'D'),
       (12,9,'D'),
       (12,10,'D'),
       (12,1,'E'),
       (12,2,'E'),
       (12,3,'E'),
       (12,4,'E'),
       (12,5,'E'),
       (12,6,'E'),
       (12,7,'E'),
       (12,8,'E'),
       (12,9,'E'),
       (12,10,'E'),
       (12,1,'F'),
       (12,2,'F'),
       (12,3,'F'),
       (12,4,'F'),
       (12,5,'F'),
       (12,6,'F'),
       (12,7,'F'),
       (12,8,'F'),
       (12,9,'F'),
       (12,10,'F');

-- ============================================================
-- 12. USERS (20 user: 17 user biasa + 3 admin)
--     Password hashed (bcrypt placeholder $2b$10$...)
-- ============================================================

INSERT INTO users (id, email, password, first_name, last_name, phone, photo, location_id, isActive, role)
VALUES (1, 'admin@tickitz.id', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Super', 'Admin', '08100000001', 'https://cdn.tickitz.id/users/admin1.jpg', 1, true, 'admin'),
       (2, 'admin.budi@tickitz.id', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Budi', 'Santoso', '08100000002', 'https://cdn.tickitz.id/users/admin2.jpg', 2, true, 'admin'),
       (3, 'admin.sari@tickitz.id', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Sari', 'Wulandari', '08100000003', 'https://cdn.tickitz.id/users/admin3.jpg', 3, true, 'admin'),
       (4, 'andi.pratama@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Andi', 'Pratama', '08111111101', 'https://cdn.tickitz.id/users/user4.jpg', 1, true, 'user'),
       (5, 'rina.lestari@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Rina', 'Lestari', '08111111102', 'https://cdn.tickitz.id/users/user5.jpg', 1, true, 'user'),
       (6, 'doni.kurniawan@yahoo.com','$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Doni', 'Kurniawan', '08111111103', 'https://cdn.tickitz.id/users/user6.jpg', 2, true, 'user'),
       (7, 'maya.sari@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Maya', 'Sari', '08111111104', 'https://cdn.tickitz.id/users/user7.jpg', 2, false, 'user'),
       (8, 'bagas.wijaya@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Bagas', 'Wijaya', '08111111105', 'https://cdn.tickitz.id/users/user8.jpg', 3, true, 'user'),
       (9, 'nadia.putri@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Nadia', 'Putri', '08111111106', 'https://cdn.tickitz.id/users/user9.jpg', 3, true, 'user'),
       (10, 'reza.maulana@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Reza', 'Maulana', '08111111107', 'https://cdn.tickitz.id/users/user10.jpg', 4, true, 'user'),
       (11, 'fitri.handayani@gmail.com','$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Fitri', 'Handayani', '08111111108', 'https://cdn.tickitz.id/users/user11.jpg', 1, true, 'user'),
       (12, 'hendra.gunawan@gmail.com','$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Hendra', 'Gunawan', '08111111109', 'https://cdn.tickitz.id/users/user12.jpg', 5, true, 'user'),
       (13, 'dewi.anggraeni@gmail.com','$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Dewi', 'Anggraeni', '08111111110', 'https://cdn.tickitz.id/users/user13.jpg', 1, true, 'user'),
       (14, 'agus.setiawan@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Agus', 'Setiawan', '08111111111', 'https://cdn.tickitz.id/users/user14.jpg', 8, true, 'user'),
       (15, 'sinta.permata@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Sinta', 'Permata', '08111111112', 'https://cdn.tickitz.id/users/user15.jpg', 9, true, 'user'),
       (16, 'farhan.akbar@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Farhan', 'Akbar', '08111111113', 'https://cdn.tickitz.id/users/user16.jpg', 1, false, 'user'),
       (17, 'lisa.amelia@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Lisa', 'Amelia', '08111111114', 'https://cdn.tickitz.id/users/user17.jpg', 2, true, 'user'),
       (18, 'tommy.wirawan@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Tommy', 'Wirawan', '08111111115', 'https://cdn.tickitz.id/users/user18.jpg', 3, true, 'user'),
       (19, 'yuni.astuti@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Yuni', 'Astuti', '08111111116', 'https://cdn.tickitz.id/users/user19.jpg', 1, true, 'user'),
       (20, 'kevin.pratama@gmail.com', '$argon2id$v=19$m=65536,t=2,p=1$I5cioGD7oLSfhvYC6NfroQ$LBPR9U069Fz//S9r70hTalg57q340Nnsn2UgKpqPVjI', 'Kevin', 'Pratama', '08111111117', 'https://cdn.tickitz.id/users/user20.jpg', 6, true, 'user');

-- ============================================================
-- 13. SHOWTIMES (40 jadwal tayang — berbagai film, bioskop, tanggal)
-- ============================================================

INSERT INTO showtimes (id, movie_id, cinema_id, date, time, price)
VALUES -- Film 1 (Interstellar Reborn)
(1, 1, 1, '2025-06-10', '10:00', 75000),
                                      (2, 1, 1, '2025-06-10', '13:30', 75000),
                                      (3, 1, 1, '2025-06-10', '19:00', 85000),
                                      (4, 1, 12, '2025-06-10', '20:30', 120000),
                                      -- IMAX
(5, 1, 2, '2025-06-11', '14:00', 65000),
                                             -- Film 2 (Gatotkaca 2)
(6, 2, 1, '2025-06-10', '11:00', 65000),
                                                                    (7, 2, 2, '2025-06-10', '15:30', 65000),
                                                                    (8, 2, 4, '2025-06-11', '13:00', 65000),
                                                                    (9, 2, 6, '2025-06-11', '16:00', 60000),
                                                                    -- Film 3 (Oppenheimer Rising)
(10, 3, 1, '2025-06-10', '16:00', 80000),
                                                                                                  (11, 3, 12, '2025-06-10', '19:30', 130000),
                                                                                                  (12, 3, 3, '2025-06-12', '14:30', 70000),
                                                                                                  -- Film 4 (Dune 3)
(13, 4, 1, '2025-06-10', '20:00', 85000),
                                                                                                                    (14, 4, 12, '2025-06-11', '17:00', 130000),
                                                                                                                    (15, 4, 4, '2025-06-12', '19:30', 75000),
                                                                                                                    -- Film 5 (Horor Rumah Merah)
(16, 5, 2, '2025-06-10', '20:30', 65000),
                                                                                                                                                 (17, 5, 3, '2025-06-11', '21:00', 60000),
                                                                                                                                                 (18, 5, 7, '2025-06-12', '20:00', 55000),
                                                                                                                                                 -- Film 6 (Cinta Di Ujung Jalan)
(19, 6, 1, '2025-06-11', '11:00', 60000),
                                                                                                                                                                                 (20, 6, 2, '2025-06-11', '13:00', 55000),
                                                                                                                                                                                 (21, 6, 11, '2025-06-13', '14:30', 55000),
                                                                                                                                                                                 -- Film 7 (Avengers: New Dawn)
(22, 7, 1, '2025-06-12', '10:00', 90000),
                                                                                                                                                                                                               (23, 7, 1, '2025-06-12', '13:00', 90000),
                                                                                                                                                                                                               (24, 7, 12, '2025-06-12', '15:30', 135000),
                                                                                                                                                                                                               (25, 7, 4, '2025-06-13', '19:00', 80000),
                                                                                                                                                                                                               (26, 7, 6, '2025-06-13', '20:00', 75000),
                                                                                                                                                                                                               -- Film 8 (KKN 3)
(27, 8, 2, '2025-06-12', '21:00', 60000),
                                                                                                                                                                                                                                (28, 8, 5, '2025-06-13', '21:00', 55000),
                                                                                                                                                                                                                                (29, 8, 7, '2025-06-14', '20:30', 55000),
                                                                                                                                                                                                                                -- Film 9 (Killer's Code)
(30, 9, 1, '2025-06-13', '15:00', 75000), 
                                                                                                                                                                                                                                                         (31, 9, 3, '2025-06-13', '18:30', 65000), 
                                                                                                                                                                                                                                                         -- Film 10 (Elemental Storm)
(32, 10, 1, '2025-06-14', '10:00', 55000), 
                                                                                                                                                                                                                                                                                     (33, 10, 2, '2025-06-14', '12:30', 55000), 
                                                                                                                                                                                                                                                                                     (34, 10, 11,'2025-06-15', '11:00', 50000), 
                                                                                                                                                                                                                                                                                     -- Film 11 (Jakarta Under Siege)
(35, 11, 1, '2025-06-15', '16:00', 75000), 
                                                                                                                                                                                                                                                                                                                     (36, 11, 4, '2025-06-15', '19:00', 70000), 
                                                                                                                                                                                                                                                                                                                     -- Film 12 (Love in Bali)
(37, 12, 10,'2025-06-15', '14:00', 60000), 
                                                                                                                                                                                                                                                                                                                                              (38, 12, 1, '2025-06-16', '13:00', 60000), 
                                                                                                                                                                                                                                                                                                                                              -- Film 13-15
(39, 13, 1, '2025-06-16', '20:00', 80000), 
                                                                                                                                                                                                                                                                                                                                                           (40, 15, 1, '2025-06-17', '18:00', 75000);

-- ============================================================
-- 14. BOOKINGS (30 booking dari berbagai user)
-- ============================================================

INSERT INTO bookings (id, user_id, showtime_id, status_ticket, status_paid, quantity, created_at, updated_at)
VALUES (1, 4, 1, 'active', 'paid', 2, '2025-06-09 10:15:00', '2025-06-09 10:20:00'),
       (2, 4, 13, 'active', 'paid', 3, '2025-06-09 14:00:00', '2025-06-09 14:05:00'),
       (3, 5, 3, 'active', 'paid', 2, '2025-06-09 09:30:00', '2025-06-09 09:35:00'),
       (4, 5, 22, 'active', 'paid', 4, '2025-06-09 16:00:00', '2025-06-09 16:05:00'),
       (5, 6, 8, 'active', 'paid', 2, '2025-06-10 08:00:00', '2025-06-10 08:05:00'),
       (6, 6, 7, 'active', 'not_paid', 2, '2025-06-10 10:00:00', NULL),
       (7, 8, 16, 'active', 'paid', 1, '2025-06-09 18:00:00', '2025-06-09 18:05:00'),
       (8, 8, 6, 'active', 'paid', 3, '2025-06-10 11:30:00', '2025-06-10 11:35:00'),
       (9, 9, 17, 'active', 'paid', 2, '2025-06-10 12:00:00', '2025-06-10 12:05:00'),
       (10, 9, 27, 'active', 'paid', 2, '2025-06-11 09:00:00', '2025-06-11 09:05:00'),
       (11, 10, 11, 'active', 'paid', 2, '2025-06-09 20:00:00', '2025-06-09 20:05:00'),
       (12, 11, 2, 'active', 'paid', 4, '2025-06-09 13:00:00', '2025-06-09 13:05:00'),
       (13, 11, 30, 'active', 'not_paid', 2, '2025-06-12 15:00:00', NULL),
       (14, 12, 10, 'active', 'paid', 2, '2025-06-09 17:00:00', '2025-06-09 17:05:00'),
       (15, 13, 24, 'active', 'paid', 2, '2025-06-11 10:00:00', '2025-06-11 10:05:00'),
       (16, 13, 39, 'active', 'paid', 3, '2025-06-15 14:00:00', '2025-06-15 14:05:00'),
       (17, 14, 37, 'active', 'paid', 2, '2025-06-14 11:00:00', '2025-06-14 11:05:00'),
       (18, 15, 21, 'active', 'paid', 1, '2025-06-12 09:00:00', '2025-06-12 09:05:00'),
       (19, 17, 5, 'active', 'paid', 2, '2025-06-10 15:00:00', '2025-06-10 15:05:00'),
       (20, 17, 20, 'active', 'not_paid', 2, '2025-06-10 16:00:00', NULL),
       (21, 18, 12, 'active', 'paid', 3, '2025-06-11 12:00:00', '2025-06-11 12:05:00'),
       (22, 19, 25, 'active', 'paid', 2, '2025-06-12 20:00:00', '2025-06-12 20:05:00'),
       (23, 19, 35, 'active', 'paid', 1, '2025-06-14 13:00:00', '2025-06-14 13:05:00'),
       (24, 20, 26, 'active', 'paid', 4, '2025-06-12 17:00:00', '2025-06-12 17:05:00'),
       (25, 4, 32, 'active', 'paid', 2, '2025-06-13 09:00:00', '2025-06-13 09:05:00'),
       (26, 5, 33, 'active', 'paid', 3, '2025-06-13 10:00:00', '2025-06-13 10:05:00'),
       (27, 8, 28, 'active', 'paid', 2, '2025-06-12 21:00:00', '2025-06-12 21:05:00'),
       (28, 9, 31, 'not_active', 'paid', 2, '2025-05-01 12:00:00', '2025-05-01 12:05:00'),
       -- tiket lama, sudah dipakai
(29, 11, 19, 'active', 'paid', 2, '2025-06-10 20:00:00', '2025-06-10 20:05:00'),
                                   (30, 12, 38, 'active', 'not_paid', 2, '2025-06-15 16:00:00', NULL);

-- ============================================================
-- 15. TRANSACTIONS (27 transaksi — booking yang sudah paid)
-- ============================================================

INSERT INTO transactions (id, booking_id, payment_method_id, virtual_rek, total_price, status, qr_code)
VALUES (1, 1, 1, 88110001, 150000, 'completed', 'https://cdn.tickitz.id/qr/txn001.png'),
       (2, 2, 4, 88110002, 225000, 'completed', 'https://cdn.tickitz.id/qr/txn002.png'),
       (3, 3, 2, 88110003, 170000, 'completed', 'https://cdn.tickitz.id/qr/txn003.png'),
       (4, 4, 1, 88110004, 360000, 'completed', 'https://cdn.tickitz.id/qr/txn004.png'),
       (5, 5, 3, 88110005, 130000, 'completed', 'https://cdn.tickitz.id/qr/txn005.png'),
       (6, 7, 7, 88110006, 65000, 'completed', 'https://cdn.tickitz.id/qr/txn006.png'),
       (7, 8, 4, 88110007, 195000, 'completed', 'https://cdn.tickitz.id/qr/txn007.png'),
       (8, 9, 2, 88110008, 120000, 'completed', 'https://cdn.tickitz.id/qr/txn008.png'),
       (9, 10, 1, 88110009, 120000, 'completed', 'https://cdn.tickitz.id/qr/txn009.png'),
       (10, 11, 5, 88110010, 260000, 'completed', 'https://cdn.tickitz.id/qr/txn010.png'),
       (11, 12, 4, 88110011, 300000, 'completed', 'https://cdn.tickitz.id/qr/txn011.png'),
       (12, 14, 6, 88110012, 160000, 'completed', 'https://cdn.tickitz.id/qr/txn012.png'),
       (13, 15, 1, 88110013, 270000, 'completed', 'https://cdn.tickitz.id/qr/txn013.png'),
       (14, 16, 3, 88110014, 240000, 'completed', 'https://cdn.tickitz.id/qr/txn014.png'),
       (15, 17, 2, 88110015, 120000, 'completed', 'https://cdn.tickitz.id/qr/txn015.png'),
       (16, 18, 4, 88110016, 55000, 'completed', 'https://cdn.tickitz.id/qr/txn016.png'),
       (17, 19, 1, 88110017, 130000, 'completed', 'https://cdn.tickitz.id/qr/txn017.png'),
       (18, 21, 5, 88110018, 210000, 'completed', 'https://cdn.tickitz.id/qr/txn018.png'),
       (19, 22, 3, 88110019, 150000, 'completed', 'https://cdn.tickitz.id/qr/txn019.png'),
       (20, 23, 7, 88110020, 75000, 'completed', 'https://cdn.tickitz.id/qr/txn020.png'),
       (21, 24, 1, 88110021, 300000, 'completed', 'https://cdn.tickitz.id/qr/txn021.png'),
       (22, 25, 2, 88110022, 110000, 'completed', 'https://cdn.tickitz.id/qr/txn022.png'),
       (23, 26, 4, 88110023, 165000, 'completed', 'https://cdn.tickitz.id/qr/txn023.png'),
       (24, 27, 3, 88110024, 120000, 'completed', 'https://cdn.tickitz.id/qr/txn024.png'),
       (25, 28, 1, 88110025, 130000, 'completed', 'https://cdn.tickitz.id/qr/txn025.png'),
       (26, 29, 6, 88110026, 120000, 'completed', 'https://cdn.tickitz.id/qr/txn026.png'),
       -- Pending transactions (booking not_paid)
(27, 6, 4, 88120001, 130000, 'pending', NULL),
                                                 (28, 13, 2, 88120002, 150000, 'pending', NULL),
                                                 (29, 20, 1, 88120003, 110000, 'pending', NULL),
                                                 (30, 30, 5, 88120004, 120000, 'pending', NULL);

-- ============================================================
-- 16. BOOKING_SEATS (kursi yang dipesan per booking)
--     Karena seats tidak punya PK integer, kita gunakan
--     pendekatan rownum via subquery; atau langsung referensikan
--     seat_id berdasarkan urutan insert (bergantung implementasi).
--     Di sini kita pakai placeholder seat_id mengikuti urutan
--     insert seats (cinema_id=1 baris A: seat_id 1-10, dll.)
-- ============================================================
 -- Booking 1 (user 4, showtime 1, cinema 1, qty 2) → kursi A1, A2

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (1, 1, 1),
       (1, 2, 1);

-- Booking 2 (user 4, showtime 13, cinema 1, qty 3) → kursi B1, B2, B3

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (2, 11, 13),
       (2, 12, 13),
       (2, 13, 13);

-- Booking 3 (user 5, showtime 3, cinema 1, qty 2) → kursi C1, C2

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (3, 21, 3),
       (3, 22, 3);

-- Booking 4 (user 5, showtime 22, cinema 1, qty 4) → D1-D4

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (4, 31, 22),
       (4, 32, 22),
       (4, 33, 22),
       (4, 34, 22);

-- Booking 5 (user 6, showtime 8, cinema 4, qty 2)
-- Cinema 4 seats start after cinema 1,2,3 total seats
-- Cinema 1: 120, Cinema 2: 96, Cinema 3: 80 → cinema 4 starts at seat_id ~297

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (5, 297, 8),
       (5, 298, 8);

-- Booking 7 (user 8, showtime 16, cinema 2, qty 1)
-- Cinema 2 seats: id 121–216

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (7, 131, 16);

-- Booking 8 (user 8, showtime 6, cinema 1, qty 3) → E1, E2, E3

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (8, 41, 6),
       (8, 42, 6),
       (8, 43, 6);

-- Booking 9 (user 9, showtime 17, cinema 3, qty 2)
-- Cinema 3 seats: id 217–296

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (9, 217, 17),
       (9, 218, 17);

-- Booking 10 (user 9, showtime 27, cinema 2, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (10, 141, 27),
       (10, 142, 27);

-- Booking 11 (user 10, showtime 11, cinema 12 - IMAX, qty 2)
-- Cinema 12 seats at end

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (11, 601, 11),
       (11, 602, 11);

-- Booking 12 (user 11, showtime 2, cinema 1, qty 4) → F1-F4

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (12, 51, 2),
       (12, 52, 2),
       (12, 53, 2),
       (12, 54, 2);

-- Booking 14 (user 12, showtime 10, cinema 1, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (14, 61, 10),
       (14, 62, 10);

-- Booking 15 (user 13, showtime 24 - IMAX, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (15, 611, 24),
       (15, 612, 24);

-- Booking 16 (user 13, showtime 39, cinema 1, qty 3)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (16, 71, 39),
       (16, 72, 39),
       (16, 73, 39);

-- Booking 17 (user 14, showtime 37, cinema 10 - Bali, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (17, 501, 37),
       (17, 502, 37);

-- Booking 18 (user 15, showtime 21, cinema 11 - Yogya, qty 1)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (18, 561, 21);

-- Booking 19 (user 17, showtime 5, cinema 2, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (19, 151, 5),
       (19, 152, 5);

-- Booking 21 (user 18, showtime 12, cinema 3, qty 3)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (21, 231, 12),
       (21, 232, 12),
       (21, 233, 12);

-- Booking 22 (user 19, showtime 25, cinema 4, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (22, 307, 25),
       (22, 308, 25);

-- Booking 23 (user 19, showtime 35, cinema 1, qty 1)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (23, 81, 35);

-- Booking 24 (user 20, showtime 26, cinema 6 - CGV Bandung, qty 4)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (24, 441, 26),
       (24, 442, 26),
       (24, 443, 26),
       (24, 444, 26);

-- Booking 25 (user 4, showtime 32, cinema 1, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (25, 91, 32),
       (25, 92, 32);

-- Booking 26 (user 5, showtime 33, cinema 2, qty 3)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (26, 161, 33),
       (26, 162, 33),
       (26, 163, 33);

-- Booking 27 (user 8, showtime 28, cinema 5, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (27, 401, 28),
       (27, 402, 28);

-- Booking 28 (user 9 - tiket lama/not_active, showtime 31, cinema 3, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (28, 241, 31),
       (28, 242, 31);

-- Booking 29 (user 11, showtime 19, cinema 1, qty 2)

INSERT INTO booking_seats (booking_id, seat_id, showtime_id)
VALUES (29, 101, 19),
       (29, 102, 19);

-- ============================================================
-- SEQUENCE RESET (agar auto-increment tidak konflik)
-- ============================================================

SELECT setval('locations_id_seq',
                  (SELECT MAX(id)
                   FROM locations));


SELECT setval('payment_methods_id_seq',
                  (SELECT MAX(id)
                   FROM payment_methods));


SELECT setval('genres_id_seq',
                  (SELECT MAX(id)
                   FROM genres));


SELECT setval('directors_id_seq',
                  (SELECT MAX(id)
                   FROM directors));


SELECT setval('casts_id_seq',
                  (SELECT MAX(id)
                   FROM casts));


SELECT setval('movies_id_seq',
                  (SELECT MAX(id)
                   FROM movies));


SELECT setval('cinemas_id_seq',
                  (SELECT MAX(id)
                   FROM cinemas));


SELECT setval('users_id_seq',
                  (SELECT MAX(id)
                   FROM users));


SELECT setval('showtimes_id_seq',
                  (SELECT MAX(id)
                   FROM showtimes));


SELECT setval('bookings_id_seq',
                  (SELECT MAX(id)
                   FROM bookings));


SELECT setval('transactions_id_seq',
                  (SELECT MAX(id)
                   FROM transactions));


SELECT setval('booking_seats_id_seq',
                  (SELECT MAX(id)
                   FROM booking_seats));

-- ============================================================
-- END OF DUMMY DATA
-- Jumlah data summary:
--   locations       : 10 kota
--   users           : 20 (17 user + 3 admin)
--   payment_methods : 8
--   genres          : 12
--   directors       : 15
--   casts           : 25
--   movies          : 15
--   cinemas         : 12
--   seats           : ~700+ kursi
--   showtimes       : 40 jadwal
--   bookings        : 30
--   transactions    : 30 (27 completed, 3 pending)
--   movie_genres    : 30+ relasi
--   movie_casts     : 30+ relasi
--   movie_directors : 15 relasi
--   booking_seats   : 60+ kursi terbooking
-- ============================================================