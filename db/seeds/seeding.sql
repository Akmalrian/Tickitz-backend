-- ================================================================
--  TICKITZ — DUMMY DATA v2.0 (UPDATED & EXPANDED)
--  Disesuaikan dengan UI Design:
--  ✓ Cinema: ebv.id, hiflix, CineOne21
--  ✓ Seats: 7 baris (A-G) × 14 kolom = 98 kursi/studio
--  ✓ Row LN = Love Nest (baris F di desain, warna pink)
--  ✓ Lokasi: termasuk Purwokerto sesuai desain
--  ✓ All test cases: active/not_active, paid/not_paid,
--    completed/pending/failed transactions
-- ================================================================

-- ============================================================
-- 1. LOCATIONS (12 kota Indonesia + Purwokerto sesuai desain)
-- ============================================================
INSERT INTO locations (id, city) VALUES
(1,  'Jakarta'),
(2,  'Surabaya'),
(3,  'Bandung'),
(4,  'Medan'),
(5,  'Semarang'),
(6,  'Makassar'),
(7,  'Palembang'),
(8,  'Denpasar'),
(9,  'Yogyakarta'),
(10, 'Malang'),
(11, 'Purwokerto'),
(12, 'Bekasi');


-- ============================================================
-- 2. PAYMENT METHODS (8 metode populer Indonesia)
-- ============================================================
INSERT INTO payment_methods (id, logo, name) VALUES
(1, 'https://storage.tickitz.id/pm/gopay.png',     'GoPay'),
(2, 'https://storage.tickitz.id/pm/ovo.png',       'OVO'),
(3, 'https://storage.tickitz.id/pm/dana.png',      'DANA'),
(4, 'https://storage.tickitz.id/pm/bca.png',       'Transfer BCA'),
(5, 'https://storage.tickitz.id/pm/mandiri.png',   'Transfer Mandiri'),
(6, 'https://storage.tickitz.id/pm/bni.png',       'Transfer BNI'),
(7, 'https://storage.tickitz.id/pm/creditcard.png','Kartu Kredit'),
(8, 'https://storage.tickitz.id/pm/alfamart.png',  'Alfamart');


-- ============================================================
-- 3. GENRES (12 genre)
-- ============================================================
INSERT INTO genres (id, genre) VALUES
(1,  'Action'),
(2,  'Comedy'),
(3,  'Drama'),
(4,  'Horror'),
(5,  'Romance'),
(6,  'Sci-Fi'),
(7,  'Thriller'),
(8,  'Animation'),
(9,  'Adventure'),
(10, 'Fantasy'),
(11, 'Crime'),
(12, 'Documentary');


-- ============================================================
-- 4. DIRECTORS (20 sutradara)
-- ============================================================
INSERT INTO directors (id, name) VALUES
(1,  'Christopher Nolan'),
(2,  'James Cameron'),
(3,  'Joko Anwar'),
(4,  'Ridley Scott'),
(5,  'Greta Gerwig'),
(6,  'Bong Joon-ho'),
(7,  'Martin Scorsese'),
(8,  'Hanung Bramantyo'),
(9,  'J.J. Abrams'),
(10, 'Nia DaCosta'),
(11, 'Ryan Coogler'),
(12, 'Anggy Umbara'),
(13, 'Anthony Russo'),
(14, 'Chloe Zhao'),
(15, 'Raditya Dika'),
(16, 'Riri Riza'),
(17, 'Edwin'),
(18, 'Kamila Andini'),
(19, 'Mouly Surya'),
(20, 'Wregas Bhanuteja');


-- ============================================================
-- 5. CASTS (30 aktor/aktris)
-- ============================================================
INSERT INTO casts (id, name) VALUES
(1,  'Cillian Murphy'),
(2,  'Tom Hanks'),
(3,  'Reza Rahadian'),
(4,  'Laura Basuki'),
(5,  'Ryan Gosling'),
(6,  'Margot Robbie'),
(7,  'Song Kang-ho'),
(8,  'Zendaya'),
(9,  'Timothée Chalamet'),
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
(25, 'Hamish Daud'),
(26, 'Marsha Timothy'),
(27, 'Chicco Jerikho'),
(28, 'Sheryl Sheinafia'),
(29, 'Tissa Biani'),
(30, 'Refal Hady');


-- ============================================================
-- 6. MOVIES (18 film — mix Indonesia & internasional)
-- ============================================================
INSERT INTO movies (id, title, duration, poster, realase_data, synopsis, category) VALUES
(1,  'Interstellar Reborn',
     '02:49:00',
     'https://storage.tickitz.id/posters/interstellar_reborn.jpg',
     '2025-03-15',
     'Seorang astronot nekat melintasi lubang cacing demi menyelamatkan umat manusia dari kehancuran bumi yang semakin tak layak huni. Perjalanan melintasi ruang dan waktu membawa konsekuensi yang tak pernah ia bayangkan sebelumnya.',
     '13+'),

(2,  'Satria Dewa: Gatotkaca 2',
     '02:05:00',
     'https://storage.tickitz.id/posters/gatotkaca2.jpg',
     '2025-04-20',
     'Gatotkaca kembali bangkit menghadapi ancaman kekuatan jahat yang lebih besar dari sebelumnya untuk melindungi nusantara. Bersama para kesatria pilihan, ia harus menemukan kekuatan sejati dalam dirinya.',
     '13+'),

(3,  'Oppenheimer Rising',
     '03:00:00',
     'https://storage.tickitz.id/posters/oppenheimer_rising.jpg',
     '2025-02-10',
     'Kisah lanjutan dari dilema moral seorang ilmuwan fisika nuklir yang terpaksa berhadapan dengan konsekuensi ciptaannya di tengah ketegangan geopolitik global yang semakin memanas.',
     '17+'),

(4,  'Dune: The Final Chapter',
     '02:35:00',
     'https://storage.tickitz.id/posters/dune3.jpg',
     '2025-05-01',
     'Paul Atreides memimpin perang terakhir melawan kekaisaran galaksi demi kebebasan rakyat Arrakis. Pertempuran epik di padang pasir yang menentukan nasib seluruh alam semesta.',
     '13+'),

(5,  'Horor Rumah Merah',
     '01:45:00',
     'https://storage.tickitz.id/posters/rumah_merah.jpg',
     '2025-04-05',
     'Sebuah keluarga muda pindah ke rumah merah misterius dan mulai mengalami teror supranatural yang mengancam nyawa mereka. Misteri gelap masa lalu rumah itu perlahan terungkap.',
     '17+'),

(6,  'Cinta Di Ujung Jalan',
     '01:50:00',
     'https://storage.tickitz.id/posters/cinta_ujung_jalan.jpg',
     '2025-03-28',
     'Dua jiwa yang bertolak belakang bertemu secara tidak sengaja dan menemukan cinta di tengah perjalanan hidup yang penuh kejutan. Kisah cinta yang hangat dan menyentuh hati.',
     'SU'),

(7,  'Avengers: New Dawn',
     '02:55:00',
     'https://storage.tickitz.id/posters/avengers_new_dawn.jpg',
     '2025-05-10',
     'Generasi pahlawan baru bergabung untuk menghadapi ancaman multidimensi yang mengancam eksistensi seluruh semesta. Pertarungan terbesar dalam sejarah Marvel akhirnya tiba.',
     '13+'),

(8,  'KKN di Desa Penari 3',
     '01:55:00',
     'https://storage.tickitz.id/posters/kkn3.jpg',
     '2025-04-12',
     'Mahasiswa KKN angkatan baru kembali ke desa penari dan mengungkap ritual terlarang yang lebih gelap dari sebelumnya. Ketika penasaran membawa mereka ke jurang kehancuran.',
     '17+'),

(9,  'The Killer''s Code',
     '02:10:00',
     'https://storage.tickitz.id/posters/killers_code.jpg',
     '2025-02-25',
     'Seorang detektif jenius harus memecahkan kode misterius yang ditinggalkan pembunuh berantai sebelum korban berikutnya jatuh. Setiap petunjuk membawa bahaya yang lebih besar.',
     '17+'),

(10, 'Elemental Storm',
     '01:58:00',
     'https://storage.tickitz.id/posters/elemental_storm.jpg',
     '2025-03-05',
     'Animasi epik tentang empat elemen alam yang harus bersatu untuk mencegah badai kiamat yang menghancurkan dunia mereka. Petualangan luar biasa untuk seluruh keluarga.',
     'SU'),

(11, 'Jakarta Under Siege',
     '02:20:00',
     'https://storage.tickitz.id/posters/jakarta_under_siege.jpg',
     '2025-05-20',
     'Aksi menegangkan ketika kelompok teroris menguasai pusat kota Jakarta dan satu pria harus menghentikan mereka sendirian. Balapan melawan waktu di jantung ibu kota.',
     '17+'),

(12, 'Love in Bali',
     '01:40:00',
     'https://storage.tickitz.id/posters/love_in_bali.jpg',
     '2025-04-25',
     'Seorang fotografer bertemu dengan wanita lokal Bali yang membantunya menemukan kembali makna hidup dan cinta sejati di tengah keindahan Pulau Dewata.',
     'SU'),

(13, 'Galaxy Patrol Z',
     '02:15:00',
     'https://storage.tickitz.id/posters/galaxy_patrol_z.jpg',
     '2025-06-01',
     'Tim patroli galaksi lintas planet harus menghadapi invasi alien raksasa yang mengancam sistem tata surya mereka. Aksi luar angkasa yang spektakuler.',
     '13+'),

(14, 'Pembuktian',
     '02:00:00',
     'https://storage.tickitz.id/posters/pembuktian.jpg',
     '2025-03-20',
     'Drama keluarga menyentuh tentang seorang anak yang berjuang membuktikan innocensi ayahnya yang dipenjara atas tuduhan palsu. Perjalanan kebenaran yang penuh air mata.',
     '13+'),

(15, 'Paradoks',
     '02:25:00',
     'https://storage.tickitz.id/posters/paradoks.jpg',
     '2025-05-30',
     'Thriller psikologis tentang seorang pria yang terbangun di tubuh versi dirinya di masa lalu dan harus mencegah tragedi besar yang sudah pernah terjadi.',
     '17+'),

(16, 'Perempuan Tanah Jahanam 2',
     '01:50:00',
     'https://storage.tickitz.id/posters/ptj2.jpg',
     '2025-06-15',
     'Teror berlanjut ketika Maya kembali ke desa terkutuk itu bersama anaknya. Kekuatan jahat yang tersegel kini bangkit kembali dengan kekuatan yang jauh lebih dahsyat.',
     '17+'),

(17, 'Bumi Manusia: Generasi Baru',
     '02:30:00',
     'https://storage.tickitz.id/posters/bumi_manusia2.jpg',
     '2025-04-30',
     'Kisah perjuangan generasi penerus Minke dan Annelies dalam menghadapi kolonialisme yang masih membayangi negeri ini. Epik sejarah yang menggetarkan.',
     'SU'),

(18, 'Malam Minggu Miko: The Movie',
     '01:35:00',
     'https://storage.tickitz.id/posters/miko_movie.jpg',
     '2025-05-05',
     'Miko akhirnya punya kesempatan kencan malam minggu impiannya, tapi serangkaian kejadian absurd terus menghancurkan rencananya. Komedi romantis yang bikin ngakak.',
     'SU');


-- ============================================================
-- 7. MOVIE_GENRES
-- ============================================================
INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1,  6), (1,  9),           -- Interstellar Reborn: Sci-Fi, Adventure
(2,  1), (2,  9), (2, 10),  -- Gatotkaca 2: Action, Adventure, Fantasy
(3,  3), (3,  7),           -- Oppenheimer Rising: Drama, Thriller
(4,  6), (4,  9), (4,  1),  -- Dune 3: Sci-Fi, Adventure, Action
(5,  4), (5,  7),           -- Rumah Merah: Horror, Thriller
(6,  5), (6,  3),           -- Cinta Ujung Jalan: Romance, Drama
(7,  1), (7,  9), (7,  6),  -- Avengers: Action, Adventure, Sci-Fi
(8,  4),                    -- KKN 3: Horror
(9, 11), (9,  7),           -- Killer's Code: Crime, Thriller
(10, 8), (10, 9), (10,10),  -- Elemental Storm: Animation, Adventure, Fantasy
(11, 1), (11, 7),           -- Jakarta Under Siege: Action, Thriller
(12, 5), (12, 3),           -- Love in Bali: Romance, Drama
(13, 6), (13, 1), (13, 9),  -- Galaxy Patrol Z: Sci-Fi, Action, Adventure
(14, 3),                    -- Pembuktian: Drama
(15, 7), (15, 3),           -- Paradoks: Thriller, Drama
(16, 4), (16, 7),           -- Perempuan Tanah Jahanam 2: Horror, Thriller
(17, 3), (17, 12),          -- Bumi Manusia: Drama, Documentary
(18, 2), (18, 5);           -- Miko Movie: Comedy, Romance


-- ============================================================
-- 8. MOVIE_DIRECTORS
-- ============================================================
INSERT INTO movie_directors (movie_id, director_id) VALUES
(1,  1),   -- Interstellar Reborn — Christopher Nolan
(2,  3),   -- Gatotkaca 2 — Joko Anwar
(3,  1),   -- Oppenheimer Rising — Christopher Nolan
(4,  4),   -- Dune 3 — Ridley Scott
(5,  3),   -- Rumah Merah — Joko Anwar
(6,  8),   -- Cinta Ujung Jalan — Hanung Bramantyo
(7,  13),  -- Avengers — Anthony Russo
(8,  12),  -- KKN 3 — Anggy Umbara
(9,  7),   -- Killer's Code — Martin Scorsese
(10, 14),  -- Elemental Storm — Chloe Zhao
(11, 12),  -- Jakarta Under Siege — Anggy Umbara
(12, 15),  -- Love in Bali — Raditya Dika
(13, 9),   -- Galaxy Patrol Z — J.J. Abrams
(14, 16),  -- Pembuktian — Riri Riza
(15, 6),   -- Paradoks — Bong Joon-ho
(16, 3),   -- Perempuan Tanah Jahanam 2 — Joko Anwar
(17, 18),  -- Bumi Manusia 2 — Kamila Andini
(18, 15);  -- Miko Movie — Raditya Dika


-- ============================================================
-- 9. MOVIE_CASTS
-- ============================================================
INSERT INTO movie_casts (movie_id, cast_id) VALUES
(1,  1), (1,  8),            -- Interstellar Reborn
(2,  3), (2, 10), (2, 15),   -- Gatotkaca 2
(3,  1), (3, 18),            -- Oppenheimer Rising
(4,  9), (4,  8), (4, 18),   -- Dune 3
(5, 10), (5, 24),            -- Rumah Merah
(6,  4), (6, 20),            -- Cinta Ujung Jalan
(7, 13), (7, 14), (7, 17),   -- Avengers
(8, 10), (8, 16),            -- KKN 3
(9,  7), (9, 22),            -- Killer's Code
(10, 5), (10, 6),            -- Elemental Storm
(11,15), (11, 3),            -- Jakarta Under Siege
(12, 4), (12,25),            -- Love in Bali
(13, 9), (13,18),            -- Galaxy Patrol Z
(14, 3), (14,26),            -- Pembuktian
(15,11), (15,24),            -- Paradoks
(16,10), (16,29),            -- Perempuan Tanah Jahanam 2
(17, 3), (17,26), (17,30),   -- Bumi Manusia 2
(18,27), (18,28);            -- Miko Movie
-- ============================================================
-- 10. CINEMAS (15 bioskop — ebv.id, hiflix, CineOne21)
--     Sesuai desain UI Book Tickets page
--     Setiap kota memiliki 3 brand berbeda
-- ============================================================
INSERT INTO cinemas (id, location_id, name, logo, capacity, isAvailable) VALUES
-- Jakarta (3 cinema)
(1,  1, 'ebv.id Grand Indonesia',         'https://storage.tickitz.id/cinema/ebvid.png',      98, true),
(2,  1, 'hiflix FX Sudirman',             'https://storage.tickitz.id/cinema/hiflix.png',     98, true),
(3,  1, 'CineOne21 Taman Ismail Marzuki', 'https://storage.tickitz.id/cinema/cineone21.png',  98, true),
-- Surabaya (3 cinema)
(4,  2, 'ebv.id Tunjungan Plaza',         'https://storage.tickitz.id/cinema/ebvid.png',      98, true),
(5,  2, 'hiflix Galaxy Mall',             'https://storage.tickitz.id/cinema/hiflix.png',     98, true),
(6,  2, 'CineOne21 Pakuwon Mall',         'https://storage.tickitz.id/cinema/cineone21.png',  98, true),
-- Bandung (2 cinema)
(7,  3, 'ebv.id Paris Van Java',          'https://storage.tickitz.id/cinema/ebvid.png',      98, true),
(8,  3, 'hiflix Bandung Indah Plaza',     'https://storage.tickitz.id/cinema/hiflix.png',     98, true),
-- Medan (1 cinema)
(9,  4, 'CineOne21 Sun Plaza',            'https://storage.tickitz.id/cinema/cineone21.png',  98, true),
-- Semarang (1 cinema)
(10, 5, 'ebv.id Paragon Mall',            'https://storage.tickitz.id/cinema/ebvid.png',      98, true),
-- Yogyakarta (1 cinema)
(11, 9, 'hiflix Ambarrukmo Plaza',        'https://storage.tickitz.id/cinema/hiflix.png',     98, true),
-- Denpasar (1 cinema)
(12, 8, 'CineOne21 Bali Galeria',         'https://storage.tickitz.id/cinema/cineone21.png',  98, true),
-- Makassar (1 cinema)
(13, 6, 'ebv.id Panakukang Mall',         'https://storage.tickitz.id/cinema/ebvid.png',      98, true),
-- Palembang (1 cinema)
(14, 7, 'hiflix Palembang Square',        'https://storage.tickitz.id/cinema/hiflix.png',     98, true),
-- Purwokerto (1 cinema) — sesuai dropdown desain
(15,11, 'CineOne21 Mayfair Purwokerto',   'https://storage.tickitz.id/cinema/cineone21.png',  98, false);


-- ============================================================
-- ============================================================
-- 11. SEATS (UPDATED v3 — tambah kolom seat_type)
--     Layout sesuai desain UI:
--     • 7 baris: A, B, C, D, E, LN (Love Nest), G
--     • 14 kolom per baris (seat_number 1–14)
--     • Total: 7 × 14 = 98 kursi per studio
--     • seat_type 'regular'    → baris A,B,C,D,E,G
--     • seat_type 'love_nest'  → baris LN (row F di desain, pink)
-- ENUM yang dibutuhkan (tambahkan di migration sebelum CREATE TABLE seats):
--   CREATE TYPE type_seat AS ENUM ('regular', 'love_nest');
-- ============================================================
-- Cinema 1
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(1,1,'A','regular'),
(1,2,'A','regular'),
(1,3,'A','regular'),
(1,4,'A','regular'),
(1,5,'A','regular'),
(1,6,'A','regular'),
(1,7,'A','regular'),
(1,8,'A','regular'),
(1,9,'A','regular'),
(1,10,'A','regular'),
(1,11,'A','regular'),
(1,12,'A','regular'),
(1,13,'A','regular'),
(1,14,'A','regular'),
(1,1,'B','regular'),
(1,2,'B','regular'),
(1,3,'B','regular'),
(1,4,'B','regular'),
(1,5,'B','regular'),
(1,6,'B','regular'),
(1,7,'B','regular'),
(1,8,'B','regular'),
(1,9,'B','regular'),
(1,10,'B','regular'),
(1,11,'B','regular'),
(1,12,'B','regular'),
(1,13,'B','regular'),
(1,14,'B','regular'),
(1,1,'C','regular'),
(1,2,'C','regular'),
(1,3,'C','regular'),
(1,4,'C','regular'),
(1,5,'C','regular'),
(1,6,'C','regular'),
(1,7,'C','regular'),
(1,8,'C','regular'),
(1,9,'C','regular'),
(1,10,'C','regular'),
(1,11,'C','regular'),
(1,12,'C','regular'),
(1,13,'C','regular'),
(1,14,'C','regular'),
(1,1,'D','regular'),
(1,2,'D','regular'),
(1,3,'D','regular'),
(1,4,'D','regular'),
(1,5,'D','regular'),
(1,6,'D','regular'),
(1,7,'D','regular'),
(1,8,'D','regular'),
(1,9,'D','regular'),
(1,10,'D','regular'),
(1,11,'D','regular'),
(1,12,'D','regular'),
(1,13,'D','regular'),
(1,14,'D','regular'),
(1,1,'E','regular'),
(1,2,'E','regular'),
(1,3,'E','regular'),
(1,4,'E','regular'),
(1,5,'E','regular'),
(1,6,'E','regular'),
(1,7,'E','regular'),
(1,8,'E','regular'),
(1,9,'E','regular'),
(1,10,'E','regular'),
(1,11,'E','regular'),
(1,12,'E','regular'),
(1,13,'E','regular'),
(1,14,'E','regular'),
(1,1,'LN','love_nest'),
(1,2,'LN','love_nest'),
(1,3,'LN','love_nest'),
(1,4,'LN','love_nest'),
(1,5,'LN','love_nest'),
(1,6,'LN','love_nest'),
(1,7,'LN','love_nest'),
(1,8,'LN','love_nest'),
(1,9,'LN','love_nest'),
(1,10,'LN','love_nest'),
(1,11,'LN','love_nest'),
(1,12,'LN','love_nest'),
(1,13,'LN','love_nest'),
(1,14,'LN','love_nest'),
(1,1,'G','regular'),
(1,2,'G','regular'),
(1,3,'G','regular'),
(1,4,'G','regular'),
(1,5,'G','regular'),
(1,6,'G','regular'),
(1,7,'G','regular'),
(1,8,'G','regular'),
(1,9,'G','regular'),
(1,10,'G','regular'),
(1,11,'G','regular'),
(1,12,'G','regular'),
(1,13,'G','regular'),
(1,14,'G','regular');

-- Cinema 2
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(2,1,'A','regular'),
(2,2,'A','regular'),
(2,3,'A','regular'),
(2,4,'A','regular'),
(2,5,'A','regular'),
(2,6,'A','regular'),
(2,7,'A','regular'),
(2,8,'A','regular'),
(2,9,'A','regular'),
(2,10,'A','regular'),
(2,11,'A','regular'),
(2,12,'A','regular'),
(2,13,'A','regular'),
(2,14,'A','regular'),
(2,1,'B','regular'),
(2,2,'B','regular'),
(2,3,'B','regular'),
(2,4,'B','regular'),
(2,5,'B','regular'),
(2,6,'B','regular'),
(2,7,'B','regular'),
(2,8,'B','regular'),
(2,9,'B','regular'),
(2,10,'B','regular'),
(2,11,'B','regular'),
(2,12,'B','regular'),
(2,13,'B','regular'),
(2,14,'B','regular'),
(2,1,'C','regular'),
(2,2,'C','regular'),
(2,3,'C','regular'),
(2,4,'C','regular'),
(2,5,'C','regular'),
(2,6,'C','regular'),
(2,7,'C','regular'),
(2,8,'C','regular'),
(2,9,'C','regular'),
(2,10,'C','regular'),
(2,11,'C','regular'),
(2,12,'C','regular'),
(2,13,'C','regular'),
(2,14,'C','regular'),
(2,1,'D','regular'),
(2,2,'D','regular'),
(2,3,'D','regular'),
(2,4,'D','regular'),
(2,5,'D','regular'),
(2,6,'D','regular'),
(2,7,'D','regular'),
(2,8,'D','regular'),
(2,9,'D','regular'),
(2,10,'D','regular'),
(2,11,'D','regular'),
(2,12,'D','regular'),
(2,13,'D','regular'),
(2,14,'D','regular'),
(2,1,'E','regular'),
(2,2,'E','regular'),
(2,3,'E','regular'),
(2,4,'E','regular'),
(2,5,'E','regular'),
(2,6,'E','regular'),
(2,7,'E','regular'),
(2,8,'E','regular'),
(2,9,'E','regular'),
(2,10,'E','regular'),
(2,11,'E','regular'),
(2,12,'E','regular'),
(2,13,'E','regular'),
(2,14,'E','regular'),
(2,1,'LN','love_nest'),
(2,2,'LN','love_nest'),
(2,3,'LN','love_nest'),
(2,4,'LN','love_nest'),
(2,5,'LN','love_nest'),
(2,6,'LN','love_nest'),
(2,7,'LN','love_nest'),
(2,8,'LN','love_nest'),
(2,9,'LN','love_nest'),
(2,10,'LN','love_nest'),
(2,11,'LN','love_nest'),
(2,12,'LN','love_nest'),
(2,13,'LN','love_nest'),
(2,14,'LN','love_nest'),
(2,1,'G','regular'),
(2,2,'G','regular'),
(2,3,'G','regular'),
(2,4,'G','regular'),
(2,5,'G','regular'),
(2,6,'G','regular'),
(2,7,'G','regular'),
(2,8,'G','regular'),
(2,9,'G','regular'),
(2,10,'G','regular'),
(2,11,'G','regular'),
(2,12,'G','regular'),
(2,13,'G','regular'),
(2,14,'G','regular');

-- Cinema 3
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(3,1,'A','regular'),
(3,2,'A','regular'),
(3,3,'A','regular'),
(3,4,'A','regular'),
(3,5,'A','regular'),
(3,6,'A','regular'),
(3,7,'A','regular'),
(3,8,'A','regular'),
(3,9,'A','regular'),
(3,10,'A','regular'),
(3,11,'A','regular'),
(3,12,'A','regular'),
(3,13,'A','regular'),
(3,14,'A','regular'),
(3,1,'B','regular'),
(3,2,'B','regular'),
(3,3,'B','regular'),
(3,4,'B','regular'),
(3,5,'B','regular'),
(3,6,'B','regular'),
(3,7,'B','regular'),
(3,8,'B','regular'),
(3,9,'B','regular'),
(3,10,'B','regular'),
(3,11,'B','regular'),
(3,12,'B','regular'),
(3,13,'B','regular'),
(3,14,'B','regular'),
(3,1,'C','regular'),
(3,2,'C','regular'),
(3,3,'C','regular'),
(3,4,'C','regular'),
(3,5,'C','regular'),
(3,6,'C','regular'),
(3,7,'C','regular'),
(3,8,'C','regular'),
(3,9,'C','regular'),
(3,10,'C','regular'),
(3,11,'C','regular'),
(3,12,'C','regular'),
(3,13,'C','regular'),
(3,14,'C','regular'),
(3,1,'D','regular'),
(3,2,'D','regular'),
(3,3,'D','regular'),
(3,4,'D','regular'),
(3,5,'D','regular'),
(3,6,'D','regular'),
(3,7,'D','regular'),
(3,8,'D','regular'),
(3,9,'D','regular'),
(3,10,'D','regular'),
(3,11,'D','regular'),
(3,12,'D','regular'),
(3,13,'D','regular'),
(3,14,'D','regular'),
(3,1,'E','regular'),
(3,2,'E','regular'),
(3,3,'E','regular'),
(3,4,'E','regular'),
(3,5,'E','regular'),
(3,6,'E','regular'),
(3,7,'E','regular'),
(3,8,'E','regular'),
(3,9,'E','regular'),
(3,10,'E','regular'),
(3,11,'E','regular'),
(3,12,'E','regular'),
(3,13,'E','regular'),
(3,14,'E','regular'),
(3,1,'LN','love_nest'),
(3,2,'LN','love_nest'),
(3,3,'LN','love_nest'),
(3,4,'LN','love_nest'),
(3,5,'LN','love_nest'),
(3,6,'LN','love_nest'),
(3,7,'LN','love_nest'),
(3,8,'LN','love_nest'),
(3,9,'LN','love_nest'),
(3,10,'LN','love_nest'),
(3,11,'LN','love_nest'),
(3,12,'LN','love_nest'),
(3,13,'LN','love_nest'),
(3,14,'LN','love_nest'),
(3,1,'G','regular'),
(3,2,'G','regular'),
(3,3,'G','regular'),
(3,4,'G','regular'),
(3,5,'G','regular'),
(3,6,'G','regular'),
(3,7,'G','regular'),
(3,8,'G','regular'),
(3,9,'G','regular'),
(3,10,'G','regular'),
(3,11,'G','regular'),
(3,12,'G','regular'),
(3,13,'G','regular'),
(3,14,'G','regular');

-- Cinema 4
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(4,1,'A','regular'),
(4,2,'A','regular'),
(4,3,'A','regular'),
(4,4,'A','regular'),
(4,5,'A','regular'),
(4,6,'A','regular'),
(4,7,'A','regular'),
(4,8,'A','regular'),
(4,9,'A','regular'),
(4,10,'A','regular'),
(4,11,'A','regular'),
(4,12,'A','regular'),
(4,13,'A','regular'),
(4,14,'A','regular'),
(4,1,'B','regular'),
(4,2,'B','regular'),
(4,3,'B','regular'),
(4,4,'B','regular'),
(4,5,'B','regular'),
(4,6,'B','regular'),
(4,7,'B','regular'),
(4,8,'B','regular'),
(4,9,'B','regular'),
(4,10,'B','regular'),
(4,11,'B','regular'),
(4,12,'B','regular'),
(4,13,'B','regular'),
(4,14,'B','regular'),
(4,1,'C','regular'),
(4,2,'C','regular'),
(4,3,'C','regular'),
(4,4,'C','regular'),
(4,5,'C','regular'),
(4,6,'C','regular'),
(4,7,'C','regular'),
(4,8,'C','regular'),
(4,9,'C','regular'),
(4,10,'C','regular'),
(4,11,'C','regular'),
(4,12,'C','regular'),
(4,13,'C','regular'),
(4,14,'C','regular'),
(4,1,'D','regular'),
(4,2,'D','regular'),
(4,3,'D','regular'),
(4,4,'D','regular'),
(4,5,'D','regular'),
(4,6,'D','regular'),
(4,7,'D','regular'),
(4,8,'D','regular'),
(4,9,'D','regular'),
(4,10,'D','regular'),
(4,11,'D','regular'),
(4,12,'D','regular'),
(4,13,'D','regular'),
(4,14,'D','regular'),
(4,1,'E','regular'),
(4,2,'E','regular'),
(4,3,'E','regular'),
(4,4,'E','regular'),
(4,5,'E','regular'),
(4,6,'E','regular'),
(4,7,'E','regular'),
(4,8,'E','regular'),
(4,9,'E','regular'),
(4,10,'E','regular'),
(4,11,'E','regular'),
(4,12,'E','regular'),
(4,13,'E','regular'),
(4,14,'E','regular'),
(4,1,'LN','love_nest'),
(4,2,'LN','love_nest'),
(4,3,'LN','love_nest'),
(4,4,'LN','love_nest'),
(4,5,'LN','love_nest'),
(4,6,'LN','love_nest'),
(4,7,'LN','love_nest'),
(4,8,'LN','love_nest'),
(4,9,'LN','love_nest'),
(4,10,'LN','love_nest'),
(4,11,'LN','love_nest'),
(4,12,'LN','love_nest'),
(4,13,'LN','love_nest'),
(4,14,'LN','love_nest'),
(4,1,'G','regular'),
(4,2,'G','regular'),
(4,3,'G','regular'),
(4,4,'G','regular'),
(4,5,'G','regular'),
(4,6,'G','regular'),
(4,7,'G','regular'),
(4,8,'G','regular'),
(4,9,'G','regular'),
(4,10,'G','regular'),
(4,11,'G','regular'),
(4,12,'G','regular'),
(4,13,'G','regular'),
(4,14,'G','regular');

-- Cinema 5
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(5,1,'A','regular'),
(5,2,'A','regular'),
(5,3,'A','regular'),
(5,4,'A','regular'),
(5,5,'A','regular'),
(5,6,'A','regular'),
(5,7,'A','regular'),
(5,8,'A','regular'),
(5,9,'A','regular'),
(5,10,'A','regular'),
(5,11,'A','regular'),
(5,12,'A','regular'),
(5,13,'A','regular'),
(5,14,'A','regular'),
(5,1,'B','regular'),
(5,2,'B','regular'),
(5,3,'B','regular'),
(5,4,'B','regular'),
(5,5,'B','regular'),
(5,6,'B','regular'),
(5,7,'B','regular'),
(5,8,'B','regular'),
(5,9,'B','regular'),
(5,10,'B','regular'),
(5,11,'B','regular'),
(5,12,'B','regular'),
(5,13,'B','regular'),
(5,14,'B','regular'),
(5,1,'C','regular'),
(5,2,'C','regular'),
(5,3,'C','regular'),
(5,4,'C','regular'),
(5,5,'C','regular'),
(5,6,'C','regular'),
(5,7,'C','regular'),
(5,8,'C','regular'),
(5,9,'C','regular'),
(5,10,'C','regular'),
(5,11,'C','regular'),
(5,12,'C','regular'),
(5,13,'C','regular'),
(5,14,'C','regular'),
(5,1,'D','regular'),
(5,2,'D','regular'),
(5,3,'D','regular'),
(5,4,'D','regular'),
(5,5,'D','regular'),
(5,6,'D','regular'),
(5,7,'D','regular'),
(5,8,'D','regular'),
(5,9,'D','regular'),
(5,10,'D','regular'),
(5,11,'D','regular'),
(5,12,'D','regular'),
(5,13,'D','regular'),
(5,14,'D','regular'),
(5,1,'E','regular'),
(5,2,'E','regular'),
(5,3,'E','regular'),
(5,4,'E','regular'),
(5,5,'E','regular'),
(5,6,'E','regular'),
(5,7,'E','regular'),
(5,8,'E','regular'),
(5,9,'E','regular'),
(5,10,'E','regular'),
(5,11,'E','regular'),
(5,12,'E','regular'),
(5,13,'E','regular'),
(5,14,'E','regular'),
(5,1,'LN','love_nest'),
(5,2,'LN','love_nest'),
(5,3,'LN','love_nest'),
(5,4,'LN','love_nest'),
(5,5,'LN','love_nest'),
(5,6,'LN','love_nest'),
(5,7,'LN','love_nest'),
(5,8,'LN','love_nest'),
(5,9,'LN','love_nest'),
(5,10,'LN','love_nest'),
(5,11,'LN','love_nest'),
(5,12,'LN','love_nest'),
(5,13,'LN','love_nest'),
(5,14,'LN','love_nest'),
(5,1,'G','regular'),
(5,2,'G','regular'),
(5,3,'G','regular'),
(5,4,'G','regular'),
(5,5,'G','regular'),
(5,6,'G','regular'),
(5,7,'G','regular'),
(5,8,'G','regular'),
(5,9,'G','regular'),
(5,10,'G','regular'),
(5,11,'G','regular'),
(5,12,'G','regular'),
(5,13,'G','regular'),
(5,14,'G','regular');

-- Cinema 6
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(6,1,'A','regular'),
(6,2,'A','regular'),
(6,3,'A','regular'),
(6,4,'A','regular'),
(6,5,'A','regular'),
(6,6,'A','regular'),
(6,7,'A','regular'),
(6,8,'A','regular'),
(6,9,'A','regular'),
(6,10,'A','regular'),
(6,11,'A','regular'),
(6,12,'A','regular'),
(6,13,'A','regular'),
(6,14,'A','regular'),
(6,1,'B','regular'),
(6,2,'B','regular'),
(6,3,'B','regular'),
(6,4,'B','regular'),
(6,5,'B','regular'),
(6,6,'B','regular'),
(6,7,'B','regular'),
(6,8,'B','regular'),
(6,9,'B','regular'),
(6,10,'B','regular'),
(6,11,'B','regular'),
(6,12,'B','regular'),
(6,13,'B','regular'),
(6,14,'B','regular'),
(6,1,'C','regular'),
(6,2,'C','regular'),
(6,3,'C','regular'),
(6,4,'C','regular'),
(6,5,'C','regular'),
(6,6,'C','regular'),
(6,7,'C','regular'),
(6,8,'C','regular'),
(6,9,'C','regular'),
(6,10,'C','regular'),
(6,11,'C','regular'),
(6,12,'C','regular'),
(6,13,'C','regular'),
(6,14,'C','regular'),
(6,1,'D','regular'),
(6,2,'D','regular'),
(6,3,'D','regular'),
(6,4,'D','regular'),
(6,5,'D','regular'),
(6,6,'D','regular'),
(6,7,'D','regular'),
(6,8,'D','regular'),
(6,9,'D','regular'),
(6,10,'D','regular'),
(6,11,'D','regular'),
(6,12,'D','regular'),
(6,13,'D','regular'),
(6,14,'D','regular'),
(6,1,'E','regular'),
(6,2,'E','regular'),
(6,3,'E','regular'),
(6,4,'E','regular'),
(6,5,'E','regular'),
(6,6,'E','regular'),
(6,7,'E','regular'),
(6,8,'E','regular'),
(6,9,'E','regular'),
(6,10,'E','regular'),
(6,11,'E','regular'),
(6,12,'E','regular'),
(6,13,'E','regular'),
(6,14,'E','regular'),
(6,1,'LN','love_nest'),
(6,2,'LN','love_nest'),
(6,3,'LN','love_nest'),
(6,4,'LN','love_nest'),
(6,5,'LN','love_nest'),
(6,6,'LN','love_nest'),
(6,7,'LN','love_nest'),
(6,8,'LN','love_nest'),
(6,9,'LN','love_nest'),
(6,10,'LN','love_nest'),
(6,11,'LN','love_nest'),
(6,12,'LN','love_nest'),
(6,13,'LN','love_nest'),
(6,14,'LN','love_nest'),
(6,1,'G','regular'),
(6,2,'G','regular'),
(6,3,'G','regular'),
(6,4,'G','regular'),
(6,5,'G','regular'),
(6,6,'G','regular'),
(6,7,'G','regular'),
(6,8,'G','regular'),
(6,9,'G','regular'),
(6,10,'G','regular'),
(6,11,'G','regular'),
(6,12,'G','regular'),
(6,13,'G','regular'),
(6,14,'G','regular');

-- Cinema 7
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(7,1,'A','regular'),
(7,2,'A','regular'),
(7,3,'A','regular'),
(7,4,'A','regular'),
(7,5,'A','regular'),
(7,6,'A','regular'),
(7,7,'A','regular'),
(7,8,'A','regular'),
(7,9,'A','regular'),
(7,10,'A','regular'),
(7,11,'A','regular'),
(7,12,'A','regular'),
(7,13,'A','regular'),
(7,14,'A','regular'),
(7,1,'B','regular'),
(7,2,'B','regular'),
(7,3,'B','regular'),
(7,4,'B','regular'),
(7,5,'B','regular'),
(7,6,'B','regular'),
(7,7,'B','regular'),
(7,8,'B','regular'),
(7,9,'B','regular'),
(7,10,'B','regular'),
(7,11,'B','regular'),
(7,12,'B','regular'),
(7,13,'B','regular'),
(7,14,'B','regular'),
(7,1,'C','regular'),
(7,2,'C','regular'),
(7,3,'C','regular'),
(7,4,'C','regular'),
(7,5,'C','regular'),
(7,6,'C','regular'),
(7,7,'C','regular'),
(7,8,'C','regular'),
(7,9,'C','regular'),
(7,10,'C','regular'),
(7,11,'C','regular'),
(7,12,'C','regular'),
(7,13,'C','regular'),
(7,14,'C','regular'),
(7,1,'D','regular'),
(7,2,'D','regular'),
(7,3,'D','regular'),
(7,4,'D','regular'),
(7,5,'D','regular'),
(7,6,'D','regular'),
(7,7,'D','regular'),
(7,8,'D','regular'),
(7,9,'D','regular'),
(7,10,'D','regular'),
(7,11,'D','regular'),
(7,12,'D','regular'),
(7,13,'D','regular'),
(7,14,'D','regular'),
(7,1,'E','regular'),
(7,2,'E','regular'),
(7,3,'E','regular'),
(7,4,'E','regular'),
(7,5,'E','regular'),
(7,6,'E','regular'),
(7,7,'E','regular'),
(7,8,'E','regular'),
(7,9,'E','regular'),
(7,10,'E','regular'),
(7,11,'E','regular'),
(7,12,'E','regular'),
(7,13,'E','regular'),
(7,14,'E','regular'),
(7,1,'LN','love_nest'),
(7,2,'LN','love_nest'),
(7,3,'LN','love_nest'),
(7,4,'LN','love_nest'),
(7,5,'LN','love_nest'),
(7,6,'LN','love_nest'),
(7,7,'LN','love_nest'),
(7,8,'LN','love_nest'),
(7,9,'LN','love_nest'),
(7,10,'LN','love_nest'),
(7,11,'LN','love_nest'),
(7,12,'LN','love_nest'),
(7,13,'LN','love_nest'),
(7,14,'LN','love_nest'),
(7,1,'G','regular'),
(7,2,'G','regular'),
(7,3,'G','regular'),
(7,4,'G','regular'),
(7,5,'G','regular'),
(7,6,'G','regular'),
(7,7,'G','regular'),
(7,8,'G','regular'),
(7,9,'G','regular'),
(7,10,'G','regular'),
(7,11,'G','regular'),
(7,12,'G','regular'),
(7,13,'G','regular'),
(7,14,'G','regular');

-- Cinema 8
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(8,1,'A','regular'),
(8,2,'A','regular'),
(8,3,'A','regular'),
(8,4,'A','regular'),
(8,5,'A','regular'),
(8,6,'A','regular'),
(8,7,'A','regular'),
(8,8,'A','regular'),
(8,9,'A','regular'),
(8,10,'A','regular'),
(8,11,'A','regular'),
(8,12,'A','regular'),
(8,13,'A','regular'),
(8,14,'A','regular'),
(8,1,'B','regular'),
(8,2,'B','regular'),
(8,3,'B','regular'),
(8,4,'B','regular'),
(8,5,'B','regular'),
(8,6,'B','regular'),
(8,7,'B','regular'),
(8,8,'B','regular'),
(8,9,'B','regular'),
(8,10,'B','regular'),
(8,11,'B','regular'),
(8,12,'B','regular'),
(8,13,'B','regular'),
(8,14,'B','regular'),
(8,1,'C','regular'),
(8,2,'C','regular'),
(8,3,'C','regular'),
(8,4,'C','regular'),
(8,5,'C','regular'),
(8,6,'C','regular'),
(8,7,'C','regular'),
(8,8,'C','regular'),
(8,9,'C','regular'),
(8,10,'C','regular'),
(8,11,'C','regular'),
(8,12,'C','regular'),
(8,13,'C','regular'),
(8,14,'C','regular'),
(8,1,'D','regular'),
(8,2,'D','regular'),
(8,3,'D','regular'),
(8,4,'D','regular'),
(8,5,'D','regular'),
(8,6,'D','regular'),
(8,7,'D','regular'),
(8,8,'D','regular'),
(8,9,'D','regular'),
(8,10,'D','regular'),
(8,11,'D','regular'),
(8,12,'D','regular'),
(8,13,'D','regular'),
(8,14,'D','regular'),
(8,1,'E','regular'),
(8,2,'E','regular'),
(8,3,'E','regular'),
(8,4,'E','regular'),
(8,5,'E','regular'),
(8,6,'E','regular'),
(8,7,'E','regular'),
(8,8,'E','regular'),
(8,9,'E','regular'),
(8,10,'E','regular'),
(8,11,'E','regular'),
(8,12,'E','regular'),
(8,13,'E','regular'),
(8,14,'E','regular'),
(8,1,'LN','love_nest'),
(8,2,'LN','love_nest'),
(8,3,'LN','love_nest'),
(8,4,'LN','love_nest'),
(8,5,'LN','love_nest'),
(8,6,'LN','love_nest'),
(8,7,'LN','love_nest'),
(8,8,'LN','love_nest'),
(8,9,'LN','love_nest'),
(8,10,'LN','love_nest'),
(8,11,'LN','love_nest'),
(8,12,'LN','love_nest'),
(8,13,'LN','love_nest'),
(8,14,'LN','love_nest'),
(8,1,'G','regular'),
(8,2,'G','regular'),
(8,3,'G','regular'),
(8,4,'G','regular'),
(8,5,'G','regular'),
(8,6,'G','regular'),
(8,7,'G','regular'),
(8,8,'G','regular'),
(8,9,'G','regular'),
(8,10,'G','regular'),
(8,11,'G','regular'),
(8,12,'G','regular'),
(8,13,'G','regular'),
(8,14,'G','regular');

-- Cinema 9
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(9,1,'A','regular'),
(9,2,'A','regular'),
(9,3,'A','regular'),
(9,4,'A','regular'),
(9,5,'A','regular'),
(9,6,'A','regular'),
(9,7,'A','regular'),
(9,8,'A','regular'),
(9,9,'A','regular'),
(9,10,'A','regular'),
(9,11,'A','regular'),
(9,12,'A','regular'),
(9,13,'A','regular'),
(9,14,'A','regular'),
(9,1,'B','regular'),
(9,2,'B','regular'),
(9,3,'B','regular'),
(9,4,'B','regular'),
(9,5,'B','regular'),
(9,6,'B','regular'),
(9,7,'B','regular'),
(9,8,'B','regular'),
(9,9,'B','regular'),
(9,10,'B','regular'),
(9,11,'B','regular'),
(9,12,'B','regular'),
(9,13,'B','regular'),
(9,14,'B','regular'),
(9,1,'C','regular'),
(9,2,'C','regular'),
(9,3,'C','regular'),
(9,4,'C','regular'),
(9,5,'C','regular'),
(9,6,'C','regular'),
(9,7,'C','regular'),
(9,8,'C','regular'),
(9,9,'C','regular'),
(9,10,'C','regular'),
(9,11,'C','regular'),
(9,12,'C','regular'),
(9,13,'C','regular'),
(9,14,'C','regular'),
(9,1,'D','regular'),
(9,2,'D','regular'),
(9,3,'D','regular'),
(9,4,'D','regular'),
(9,5,'D','regular'),
(9,6,'D','regular'),
(9,7,'D','regular'),
(9,8,'D','regular'),
(9,9,'D','regular'),
(9,10,'D','regular'),
(9,11,'D','regular'),
(9,12,'D','regular'),
(9,13,'D','regular'),
(9,14,'D','regular'),
(9,1,'E','regular'),
(9,2,'E','regular'),
(9,3,'E','regular'),
(9,4,'E','regular'),
(9,5,'E','regular'),
(9,6,'E','regular'),
(9,7,'E','regular'),
(9,8,'E','regular'),
(9,9,'E','regular'),
(9,10,'E','regular'),
(9,11,'E','regular'),
(9,12,'E','regular'),
(9,13,'E','regular'),
(9,14,'E','regular'),
(9,1,'LN','love_nest'),
(9,2,'LN','love_nest'),
(9,3,'LN','love_nest'),
(9,4,'LN','love_nest'),
(9,5,'LN','love_nest'),
(9,6,'LN','love_nest'),
(9,7,'LN','love_nest'),
(9,8,'LN','love_nest'),
(9,9,'LN','love_nest'),
(9,10,'LN','love_nest'),
(9,11,'LN','love_nest'),
(9,12,'LN','love_nest'),
(9,13,'LN','love_nest'),
(9,14,'LN','love_nest'),
(9,1,'G','regular'),
(9,2,'G','regular'),
(9,3,'G','regular'),
(9,4,'G','regular'),
(9,5,'G','regular'),
(9,6,'G','regular'),
(9,7,'G','regular'),
(9,8,'G','regular'),
(9,9,'G','regular'),
(9,10,'G','regular'),
(9,11,'G','regular'),
(9,12,'G','regular'),
(9,13,'G','regular'),
(9,14,'G','regular');

-- Cinema 10
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(10,1,'A','regular'),
(10,2,'A','regular'),
(10,3,'A','regular'),
(10,4,'A','regular'),
(10,5,'A','regular'),
(10,6,'A','regular'),
(10,7,'A','regular'),
(10,8,'A','regular'),
(10,9,'A','regular'),
(10,10,'A','regular'),
(10,11,'A','regular'),
(10,12,'A','regular'),
(10,13,'A','regular'),
(10,14,'A','regular'),
(10,1,'B','regular'),
(10,2,'B','regular'),
(10,3,'B','regular'),
(10,4,'B','regular'),
(10,5,'B','regular'),
(10,6,'B','regular'),
(10,7,'B','regular'),
(10,8,'B','regular'),
(10,9,'B','regular'),
(10,10,'B','regular'),
(10,11,'B','regular'),
(10,12,'B','regular'),
(10,13,'B','regular'),
(10,14,'B','regular'),
(10,1,'C','regular'),
(10,2,'C','regular'),
(10,3,'C','regular'),
(10,4,'C','regular'),
(10,5,'C','regular'),
(10,6,'C','regular'),
(10,7,'C','regular'),
(10,8,'C','regular'),
(10,9,'C','regular'),
(10,10,'C','regular'),
(10,11,'C','regular'),
(10,12,'C','regular'),
(10,13,'C','regular'),
(10,14,'C','regular'),
(10,1,'D','regular'),
(10,2,'D','regular'),
(10,3,'D','regular'),
(10,4,'D','regular'),
(10,5,'D','regular'),
(10,6,'D','regular'),
(10,7,'D','regular'),
(10,8,'D','regular'),
(10,9,'D','regular'),
(10,10,'D','regular'),
(10,11,'D','regular'),
(10,12,'D','regular'),
(10,13,'D','regular'),
(10,14,'D','regular'),
(10,1,'E','regular'),
(10,2,'E','regular'),
(10,3,'E','regular'),
(10,4,'E','regular'),
(10,5,'E','regular'),
(10,6,'E','regular'),
(10,7,'E','regular'),
(10,8,'E','regular'),
(10,9,'E','regular'),
(10,10,'E','regular'),
(10,11,'E','regular'),
(10,12,'E','regular'),
(10,13,'E','regular'),
(10,14,'E','regular'),
(10,1,'LN','love_nest'),
(10,2,'LN','love_nest'),
(10,3,'LN','love_nest'),
(10,4,'LN','love_nest'),
(10,5,'LN','love_nest'),
(10,6,'LN','love_nest'),
(10,7,'LN','love_nest'),
(10,8,'LN','love_nest'),
(10,9,'LN','love_nest'),
(10,10,'LN','love_nest'),
(10,11,'LN','love_nest'),
(10,12,'LN','love_nest'),
(10,13,'LN','love_nest'),
(10,14,'LN','love_nest'),
(10,1,'G','regular'),
(10,2,'G','regular'),
(10,3,'G','regular'),
(10,4,'G','regular'),
(10,5,'G','regular'),
(10,6,'G','regular'),
(10,7,'G','regular'),
(10,8,'G','regular'),
(10,9,'G','regular'),
(10,10,'G','regular'),
(10,11,'G','regular'),
(10,12,'G','regular'),
(10,13,'G','regular'),
(10,14,'G','regular');

-- Cinema 11
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(11,1,'A','regular'),
(11,2,'A','regular'),
(11,3,'A','regular'),
(11,4,'A','regular'),
(11,5,'A','regular'),
(11,6,'A','regular'),
(11,7,'A','regular'),
(11,8,'A','regular'),
(11,9,'A','regular'),
(11,10,'A','regular'),
(11,11,'A','regular'),
(11,12,'A','regular'),
(11,13,'A','regular'),
(11,14,'A','regular'),
(11,1,'B','regular'),
(11,2,'B','regular'),
(11,3,'B','regular'),
(11,4,'B','regular'),
(11,5,'B','regular'),
(11,6,'B','regular'),
(11,7,'B','regular'),
(11,8,'B','regular'),
(11,9,'B','regular'),
(11,10,'B','regular'),
(11,11,'B','regular'),
(11,12,'B','regular'),
(11,13,'B','regular'),
(11,14,'B','regular'),
(11,1,'C','regular'),
(11,2,'C','regular'),
(11,3,'C','regular'),
(11,4,'C','regular'),
(11,5,'C','regular'),
(11,6,'C','regular'),
(11,7,'C','regular'),
(11,8,'C','regular'),
(11,9,'C','regular'),
(11,10,'C','regular'),
(11,11,'C','regular'),
(11,12,'C','regular'),
(11,13,'C','regular'),
(11,14,'C','regular'),
(11,1,'D','regular'),
(11,2,'D','regular'),
(11,3,'D','regular'),
(11,4,'D','regular'),
(11,5,'D','regular'),
(11,6,'D','regular'),
(11,7,'D','regular'),
(11,8,'D','regular'),
(11,9,'D','regular'),
(11,10,'D','regular'),
(11,11,'D','regular'),
(11,12,'D','regular'),
(11,13,'D','regular'),
(11,14,'D','regular'),
(11,1,'E','regular'),
(11,2,'E','regular'),
(11,3,'E','regular'),
(11,4,'E','regular'),
(11,5,'E','regular'),
(11,6,'E','regular'),
(11,7,'E','regular'),
(11,8,'E','regular'),
(11,9,'E','regular'),
(11,10,'E','regular'),
(11,11,'E','regular'),
(11,12,'E','regular'),
(11,13,'E','regular'),
(11,14,'E','regular'),
(11,1,'LN','love_nest'),
(11,2,'LN','love_nest'),
(11,3,'LN','love_nest'),
(11,4,'LN','love_nest'),
(11,5,'LN','love_nest'),
(11,6,'LN','love_nest'),
(11,7,'LN','love_nest'),
(11,8,'LN','love_nest'),
(11,9,'LN','love_nest'),
(11,10,'LN','love_nest'),
(11,11,'LN','love_nest'),
(11,12,'LN','love_nest'),
(11,13,'LN','love_nest'),
(11,14,'LN','love_nest'),
(11,1,'G','regular'),
(11,2,'G','regular'),
(11,3,'G','regular'),
(11,4,'G','regular'),
(11,5,'G','regular'),
(11,6,'G','regular'),
(11,7,'G','regular'),
(11,8,'G','regular'),
(11,9,'G','regular'),
(11,10,'G','regular'),
(11,11,'G','regular'),
(11,12,'G','regular'),
(11,13,'G','regular'),
(11,14,'G','regular');

-- Cinema 12
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(12,1,'A','regular'),
(12,2,'A','regular'),
(12,3,'A','regular'),
(12,4,'A','regular'),
(12,5,'A','regular'),
(12,6,'A','regular'),
(12,7,'A','regular'),
(12,8,'A','regular'),
(12,9,'A','regular'),
(12,10,'A','regular'),
(12,11,'A','regular'),
(12,12,'A','regular'),
(12,13,'A','regular'),
(12,14,'A','regular'),
(12,1,'B','regular'),
(12,2,'B','regular'),
(12,3,'B','regular'),
(12,4,'B','regular'),
(12,5,'B','regular'),
(12,6,'B','regular'),
(12,7,'B','regular'),
(12,8,'B','regular'),
(12,9,'B','regular'),
(12,10,'B','regular'),
(12,11,'B','regular'),
(12,12,'B','regular'),
(12,13,'B','regular'),
(12,14,'B','regular'),
(12,1,'C','regular'),
(12,2,'C','regular'),
(12,3,'C','regular'),
(12,4,'C','regular'),
(12,5,'C','regular'),
(12,6,'C','regular'),
(12,7,'C','regular'),
(12,8,'C','regular'),
(12,9,'C','regular'),
(12,10,'C','regular'),
(12,11,'C','regular'),
(12,12,'C','regular'),
(12,13,'C','regular'),
(12,14,'C','regular'),
(12,1,'D','regular'),
(12,2,'D','regular'),
(12,3,'D','regular'),
(12,4,'D','regular'),
(12,5,'D','regular'),
(12,6,'D','regular'),
(12,7,'D','regular'),
(12,8,'D','regular'),
(12,9,'D','regular'),
(12,10,'D','regular'),
(12,11,'D','regular'),
(12,12,'D','regular'),
(12,13,'D','regular'),
(12,14,'D','regular'),
(12,1,'E','regular'),
(12,2,'E','regular'),
(12,3,'E','regular'),
(12,4,'E','regular'),
(12,5,'E','regular'),
(12,6,'E','regular'),
(12,7,'E','regular'),
(12,8,'E','regular'),
(12,9,'E','regular'),
(12,10,'E','regular'),
(12,11,'E','regular'),
(12,12,'E','regular'),
(12,13,'E','regular'),
(12,14,'E','regular'),
(12,1,'LN','love_nest'),
(12,2,'LN','love_nest'),
(12,3,'LN','love_nest'),
(12,4,'LN','love_nest'),
(12,5,'LN','love_nest'),
(12,6,'LN','love_nest'),
(12,7,'LN','love_nest'),
(12,8,'LN','love_nest'),
(12,9,'LN','love_nest'),
(12,10,'LN','love_nest'),
(12,11,'LN','love_nest'),
(12,12,'LN','love_nest'),
(12,13,'LN','love_nest'),
(12,14,'LN','love_nest'),
(12,1,'G','regular'),
(12,2,'G','regular'),
(12,3,'G','regular'),
(12,4,'G','regular'),
(12,5,'G','regular'),
(12,6,'G','regular'),
(12,7,'G','regular'),
(12,8,'G','regular'),
(12,9,'G','regular'),
(12,10,'G','regular'),
(12,11,'G','regular'),
(12,12,'G','regular'),
(12,13,'G','regular'),
(12,14,'G','regular');

-- Cinema 13
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(13,1,'A','regular'),
(13,2,'A','regular'),
(13,3,'A','regular'),
(13,4,'A','regular'),
(13,5,'A','regular'),
(13,6,'A','regular'),
(13,7,'A','regular'),
(13,8,'A','regular'),
(13,9,'A','regular'),
(13,10,'A','regular'),
(13,11,'A','regular'),
(13,12,'A','regular'),
(13,13,'A','regular'),
(13,14,'A','regular'),
(13,1,'B','regular'),
(13,2,'B','regular'),
(13,3,'B','regular'),
(13,4,'B','regular'),
(13,5,'B','regular'),
(13,6,'B','regular'),
(13,7,'B','regular'),
(13,8,'B','regular'),
(13,9,'B','regular'),
(13,10,'B','regular'),
(13,11,'B','regular'),
(13,12,'B','regular'),
(13,13,'B','regular'),
(13,14,'B','regular'),
(13,1,'C','regular'),
(13,2,'C','regular'),
(13,3,'C','regular'),
(13,4,'C','regular'),
(13,5,'C','regular'),
(13,6,'C','regular'),
(13,7,'C','regular'),
(13,8,'C','regular'),
(13,9,'C','regular'),
(13,10,'C','regular'),
(13,11,'C','regular'),
(13,12,'C','regular'),
(13,13,'C','regular'),
(13,14,'C','regular'),
(13,1,'D','regular'),
(13,2,'D','regular'),
(13,3,'D','regular'),
(13,4,'D','regular'),
(13,5,'D','regular'),
(13,6,'D','regular'),
(13,7,'D','regular'),
(13,8,'D','regular'),
(13,9,'D','regular'),
(13,10,'D','regular'),
(13,11,'D','regular'),
(13,12,'D','regular'),
(13,13,'D','regular'),
(13,14,'D','regular'),
(13,1,'E','regular'),
(13,2,'E','regular'),
(13,3,'E','regular'),
(13,4,'E','regular'),
(13,5,'E','regular'),
(13,6,'E','regular'),
(13,7,'E','regular'),
(13,8,'E','regular'),
(13,9,'E','regular'),
(13,10,'E','regular'),
(13,11,'E','regular'),
(13,12,'E','regular'),
(13,13,'E','regular'),
(13,14,'E','regular'),
(13,1,'LN','love_nest'),
(13,2,'LN','love_nest'),
(13,3,'LN','love_nest'),
(13,4,'LN','love_nest'),
(13,5,'LN','love_nest'),
(13,6,'LN','love_nest'),
(13,7,'LN','love_nest'),
(13,8,'LN','love_nest'),
(13,9,'LN','love_nest'),
(13,10,'LN','love_nest'),
(13,11,'LN','love_nest'),
(13,12,'LN','love_nest'),
(13,13,'LN','love_nest'),
(13,14,'LN','love_nest'),
(13,1,'G','regular'),
(13,2,'G','regular'),
(13,3,'G','regular'),
(13,4,'G','regular'),
(13,5,'G','regular'),
(13,6,'G','regular'),
(13,7,'G','regular'),
(13,8,'G','regular'),
(13,9,'G','regular'),
(13,10,'G','regular'),
(13,11,'G','regular'),
(13,12,'G','regular'),
(13,13,'G','regular'),
(13,14,'G','regular');

-- Cinema 14
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(14,1,'A','regular'),
(14,2,'A','regular'),
(14,3,'A','regular'),
(14,4,'A','regular'),
(14,5,'A','regular'),
(14,6,'A','regular'),
(14,7,'A','regular'),
(14,8,'A','regular'),
(14,9,'A','regular'),
(14,10,'A','regular'),
(14,11,'A','regular'),
(14,12,'A','regular'),
(14,13,'A','regular'),
(14,14,'A','regular'),
(14,1,'B','regular'),
(14,2,'B','regular'),
(14,3,'B','regular'),
(14,4,'B','regular'),
(14,5,'B','regular'),
(14,6,'B','regular'),
(14,7,'B','regular'),
(14,8,'B','regular'),
(14,9,'B','regular'),
(14,10,'B','regular'),
(14,11,'B','regular'),
(14,12,'B','regular'),
(14,13,'B','regular'),
(14,14,'B','regular'),
(14,1,'C','regular'),
(14,2,'C','regular'),
(14,3,'C','regular'),
(14,4,'C','regular'),
(14,5,'C','regular'),
(14,6,'C','regular'),
(14,7,'C','regular'),
(14,8,'C','regular'),
(14,9,'C','regular'),
(14,10,'C','regular'),
(14,11,'C','regular'),
(14,12,'C','regular'),
(14,13,'C','regular'),
(14,14,'C','regular'),
(14,1,'D','regular'),
(14,2,'D','regular'),
(14,3,'D','regular'),
(14,4,'D','regular'),
(14,5,'D','regular'),
(14,6,'D','regular'),
(14,7,'D','regular'),
(14,8,'D','regular'),
(14,9,'D','regular'),
(14,10,'D','regular'),
(14,11,'D','regular'),
(14,12,'D','regular'),
(14,13,'D','regular'),
(14,14,'D','regular'),
(14,1,'E','regular'),
(14,2,'E','regular'),
(14,3,'E','regular'),
(14,4,'E','regular'),
(14,5,'E','regular'),
(14,6,'E','regular'),
(14,7,'E','regular'),
(14,8,'E','regular'),
(14,9,'E','regular'),
(14,10,'E','regular'),
(14,11,'E','regular'),
(14,12,'E','regular'),
(14,13,'E','regular'),
(14,14,'E','regular'),
(14,1,'LN','love_nest'),
(14,2,'LN','love_nest'),
(14,3,'LN','love_nest'),
(14,4,'LN','love_nest'),
(14,5,'LN','love_nest'),
(14,6,'LN','love_nest'),
(14,7,'LN','love_nest'),
(14,8,'LN','love_nest'),
(14,9,'LN','love_nest'),
(14,10,'LN','love_nest'),
(14,11,'LN','love_nest'),
(14,12,'LN','love_nest'),
(14,13,'LN','love_nest'),
(14,14,'LN','love_nest'),
(14,1,'G','regular'),
(14,2,'G','regular'),
(14,3,'G','regular'),
(14,4,'G','regular'),
(14,5,'G','regular'),
(14,6,'G','regular'),
(14,7,'G','regular'),
(14,8,'G','regular'),
(14,9,'G','regular'),
(14,10,'G','regular'),
(14,11,'G','regular'),
(14,12,'G','regular'),
(14,13,'G','regular'),
(14,14,'G','regular');

-- Cinema 15
INSERT INTO seats (cinema_id, seat_number, row, seat_type) VALUES
(15,1,'A','regular'),
(15,2,'A','regular'),
(15,3,'A','regular'),
(15,4,'A','regular'),
(15,5,'A','regular'),
(15,6,'A','regular'),
(15,7,'A','regular'),
(15,8,'A','regular'),
(15,9,'A','regular'),
(15,10,'A','regular'),
(15,11,'A','regular'),
(15,12,'A','regular'),
(15,13,'A','regular'),
(15,14,'A','regular'),
(15,1,'B','regular'),
(15,2,'B','regular'),
(15,3,'B','regular'),
(15,4,'B','regular'),
(15,5,'B','regular'),
(15,6,'B','regular'),
(15,7,'B','regular'),
(15,8,'B','regular'),
(15,9,'B','regular'),
(15,10,'B','regular'),
(15,11,'B','regular'),
(15,12,'B','regular'),
(15,13,'B','regular'),
(15,14,'B','regular'),
(15,1,'C','regular'),
(15,2,'C','regular'),
(15,3,'C','regular'),
(15,4,'C','regular'),
(15,5,'C','regular'),
(15,6,'C','regular'),
(15,7,'C','regular'),
(15,8,'C','regular'),
(15,9,'C','regular'),
(15,10,'C','regular'),
(15,11,'C','regular'),
(15,12,'C','regular'),
(15,13,'C','regular'),
(15,14,'C','regular'),
(15,1,'D','regular'),
(15,2,'D','regular'),
(15,3,'D','regular'),
(15,4,'D','regular'),
(15,5,'D','regular'),
(15,6,'D','regular'),
(15,7,'D','regular'),
(15,8,'D','regular'),
(15,9,'D','regular'),
(15,10,'D','regular'),
(15,11,'D','regular'),
(15,12,'D','regular'),
(15,13,'D','regular'),
(15,14,'D','regular'),
(15,1,'E','regular'),
(15,2,'E','regular'),
(15,3,'E','regular'),
(15,4,'E','regular'),
(15,5,'E','regular'),
(15,6,'E','regular'),
(15,7,'E','regular'),
(15,8,'E','regular'),
(15,9,'E','regular'),
(15,10,'E','regular'),
(15,11,'E','regular'),
(15,12,'E','regular'),
(15,13,'E','regular'),
(15,14,'E','regular'),
(15,1,'LN','love_nest'),
(15,2,'LN','love_nest'),
(15,3,'LN','love_nest'),
(15,4,'LN','love_nest'),
(15,5,'LN','love_nest'),
(15,6,'LN','love_nest'),
(15,7,'LN','love_nest'),
(15,8,'LN','love_nest'),
(15,9,'LN','love_nest'),
(15,10,'LN','love_nest'),
(15,11,'LN','love_nest'),
(15,12,'LN','love_nest'),
(15,13,'LN','love_nest'),
(15,14,'LN','love_nest'),
(15,1,'G','regular'),
(15,2,'G','regular'),
(15,3,'G','regular'),
(15,4,'G','regular'),
(15,5,'G','regular'),
(15,6,'G','regular'),
(15,7,'G','regular'),
(15,8,'G','regular'),
(15,9,'G','regular'),
(15,10,'G','regular'),
(15,11,'G','regular'),
(15,12,'G','regular'),
(15,13,'G','regular'),
(15,14,'G','regular');
-- ============================================================
-- 12. USERS (25 user: 22 user + 3 admin)
--     Password: bcrypt hash placeholder
-- ============================================================
INSERT INTO users (id, email, password, first_name, last_name, phone, photo, location_id, isActive, role) VALUES
-- ADMIN
(1,  'admin@tickitz.id',           '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y', 'Super',    'Admin',       '08100000001', 'https://storage.tickitz.id/users/admin1.jpg',   1,  true,  'admin'),
(2,  'budi.admin@tickitz.id',      '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y', 'Budi',     'Santoso',     '08100000002', 'https://storage.tickitz.id/users/admin2.jpg',   2,  true,  'admin'),
(3,  'sari.admin@tickitz.id',      '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y', 'Sari',     'Wulandari',   '08100000003', 'https://storage.tickitz.id/users/admin3.jpg',   3,  true,  'admin'),
-- USER AKTIF (isActive = true)
(4,  'andi.pratama@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Andi',     'Pratama',     '08111111101', 'https://storage.tickitz.id/users/user4.jpg',    1,  true,  'user'),
(5,  'rina.lestari@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Rina',     'Lestari',     '08111111102', 'https://storage.tickitz.id/users/user5.jpg',    1,  true,  'user'),
(6,  'doni.kurniawan@yahoo.com',   '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Doni',     'Kurniawan',   '08111111103', 'https://storage.tickitz.id/users/user6.jpg',    2,  true,  'user'),
(7,  'bagas.wijaya@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Bagas',    'Wijaya',      '08111111104', 'https://storage.tickitz.id/users/user7.jpg',    3,  true,  'user'),
(8,  'nadia.putri@gmail.com',      '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Nadia',    'Putri',       '08111111105', 'https://storage.tickitz.id/users/user8.jpg',    3,  true,  'user'),
(9,  'reza.maulana@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Reza',     'Maulana',     '08111111106', 'https://storage.tickitz.id/users/user9.jpg',    4,  true,  'user'),
(10, 'fitri.handayani@gmail.com',  '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Fitri',    'Handayani',   '08111111107', 'https://storage.tickitz.id/users/user10.jpg',   1,  true,  'user'),
(11, 'hendra.gunawan@gmail.com',   '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Hendra',   'Gunawan',     '08111111108', 'https://storage.tickitz.id/users/user11.jpg',   5,  true,  'user'),
(12, 'dewi.anggraeni@gmail.com',   '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Dewi',     'Anggraeni',   '08111111109', 'https://storage.tickitz.id/users/user12.jpg',   1,  true,  'user'),
(13, 'agus.setiawan@gmail.com',    '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Agus',     'Setiawan',    '08111111110', 'https://storage.tickitz.id/users/user13.jpg',   8,  true,  'user'),
(14, 'sinta.permata@gmail.com',    '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Sinta',    'Permata',     '08111111111', 'https://storage.tickitz.id/users/user14.jpg',   9,  true,  'user'),
(15, 'lisa.amelia@gmail.com',      '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Lisa',     'Amelia',      '08111111112', 'https://storage.tickitz.id/users/user15.jpg',   2,  true,  'user'),
(16, 'tommy.wirawan@gmail.com',    '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Tommy',    'Wirawan',     '08111111113', 'https://storage.tickitz.id/users/user16.jpg',   3,  true,  'user'),
(17, 'yuni.astuti@gmail.com',      '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Yuni',     'Astuti',      '08111111114', 'https://storage.tickitz.id/users/user17.jpg',   1,  true,  'user'),
(18, 'kevin.pratama@gmail.com',    '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Kevin',    'Pratama',     '08111111115', 'https://storage.tickitz.id/users/user18.jpg',   6,  true,  'user'),
(19, 'amanda.putri@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Amanda',   'Putri',       '08111111116', 'https://storage.tickitz.id/users/user19.jpg',  11,  true,  'user'),
(20, 'rizky.hamdani@gmail.com',    '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Rizky',    'Hamdani',     '08111111117', 'https://storage.tickitz.id/users/user20.jpg',   1,  true,  'user'),
(21, 'clara.monica@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Clara',    'Monica',      '08111111118', 'https://storage.tickitz.id/users/user21.jpg',   2,  true,  'user'),
(22, 'dimas.arif@gmail.com',       '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Dimas',    'Arif',        '08111111119', 'https://storage.tickitz.id/users/user22.jpg',   7,  true,  'user'),
-- USER BELUM VERIFIKASI EMAIL (isActive = false)
(23, 'maya.sari@gmail.com',        '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Maya',     'Sari',        '08111111120', NULL,                                            2,  false, 'user'),
(24, 'farhan.akbar@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Farhan',   'Akbar',       '08111111121', NULL,                                            1,  false, 'user'),
(25, 'putri.rahayu@gmail.com',     '$argon2id$v=19$m=65536,t=2,p=1$xIJYsW0jYK6HncD8JVUsZA$wGP3m49Qm7OrrFOAu/baOcutE3s/sUb0LaoGLy7B13Y',  'Putri',    'Rahayu',      '08111111122', NULL,                                           11,  false, 'user');


-- ============================================================
-- 13. SHOWTIMES (55 jadwal tayang)
--     Waktu: 08:30, 11:00, 13:30, 16:00, 18:30, 20:00, 21:30
--     (disesuaikan dengan contoh waktu 08:30 di desain)
-- ============================================================
INSERT INTO showtimes (id, movie_id, cinema_id, date, time, price) VALUES
-- ── FILM 1: Interstellar Reborn ──────────────────────────────
(1,  1, 1, '2025-06-10', '08:30', 75000),
(2,  1, 1, '2025-06-10', '13:30', 75000),
(3,  1, 1, '2025-06-10', '18:30', 85000),
(4,  1, 1, '2025-06-10', '21:30', 90000),
(5,  1, 2, '2025-06-10', '11:00', 70000),
(6,  1, 2, '2025-06-11', '20:00', 80000),
(7,  1, 4, '2025-06-11', '13:30', 70000),
-- ── FILM 2: Gatotkaca 2 ──────────────────────────────────────
(8,  2, 1, '2025-06-10', '11:00', 65000),
(9,  2, 2, '2025-06-10', '16:00', 65000),
(10, 2, 4, '2025-06-11', '11:00', 60000),
(11, 2, 5, '2025-06-11', '13:30', 60000),
(12, 2, 7, '2025-06-12', '16:00', 60000),
-- ── FILM 3: Oppenheimer Rising ───────────────────────────────
(13, 3, 1, '2025-06-10', '16:00', 80000),
(14, 3, 1, '2025-06-11', '20:00', 80000),
(15, 3, 3, '2025-06-12', '13:30', 75000),
-- ── FILM 4: Dune 3 ───────────────────────────────────────────
(16, 4, 1, '2025-06-10', '20:00', 85000),
(17, 4, 2, '2025-06-11', '18:30', 80000),
(18, 4, 4, '2025-06-12', '20:00', 75000),
-- ── FILM 5: Horor Rumah Merah ────────────────────────────────
(19, 5, 2, '2025-06-10', '21:30', 65000),
(20, 5, 3, '2025-06-11', '21:30', 60000),
(21, 5, 8, '2025-06-12', '20:00', 60000),
(22, 5, 9, '2025-06-13', '21:30', 55000),
-- ── FILM 6: Cinta Di Ujung Jalan ────────────────────────────
(23, 6, 1, '2025-06-11', '11:00', 60000),
(24, 6, 2, '2025-06-11', '13:30', 55000),
(25, 6, 6, '2025-06-12', '16:00', 55000),
(26, 6, 11,'2025-06-13', '13:30', 55000),
-- ── FILM 7: Avengers: New Dawn ──────────────────────────────
(27, 7, 1, '2025-06-12', '08:30', 90000),
(28, 7, 1, '2025-06-12', '13:30', 90000),
(29, 7, 1, '2025-06-12', '18:30', 95000),
(30, 7, 2, '2025-06-12', '20:00', 85000),
(31, 7, 4, '2025-06-13', '20:00', 80000),
(32, 7, 7, '2025-06-13', '18:30', 80000),
-- ── FILM 8: KKN 3 ───────────────────────────────────────────
(33, 8, 2, '2025-06-12', '21:30', 60000),
(34, 8, 5, '2025-06-13', '21:30', 55000),
(35, 8, 8, '2025-06-14', '20:00', 60000),
-- ── FILM 9: The Killer's Code ────────────────────────────────
(36, 9, 1, '2025-06-13', '16:00', 75000),
(37, 9, 3, '2025-06-13', '18:30', 70000),
(38, 9, 9, '2025-06-14', '16:00', 65000),
-- ── FILM 10: Elemental Storm ─────────────────────────────────
(39,10, 1, '2025-06-14', '08:30', 55000),
(40,10, 1, '2025-06-14', '11:00', 55000),
(41,10, 3, '2025-06-14', '13:30', 50000),
(42,10,11, '2025-06-15', '11:00', 50000),
-- ── FILM 11: Jakarta Under Siege ────────────────────────────
(43,11, 1, '2025-06-15', '16:00', 75000),
(44,11, 4, '2025-06-15', '18:30', 70000),
-- ── FILM 12: Love in Bali ────────────────────────────────────
(45,12,12, '2025-06-15', '13:30', 60000),
(46,12, 1, '2025-06-16', '13:30', 60000),
-- ── FILM 13: Galaxy Patrol Z ────────────────────────────────
(47,13, 1, '2025-06-16', '20:00', 80000),
(48,13, 4, '2025-06-17', '18:30', 75000),
-- ── FILM 14: Pembuktian ──────────────────────────────────────
(49,14, 3, '2025-06-16', '16:00', 65000),
(50,14, 6, '2025-06-17', '13:30', 60000),
-- ── FILM 15: Paradoks ────────────────────────────────────────
(51,15, 1, '2025-06-17', '18:30', 75000),
(52,15, 2, '2025-06-18', '20:00', 70000),
-- ── FILM 16: Perempuan Tanah Jahanam 2 ──────────────────────
(53,16, 1, '2025-06-18', '21:30', 70000),
(54,16, 5, '2025-06-19', '21:30', 65000),
-- ── FILM 17: Bumi Manusia ────────────────────────────────────
(55,17, 3, '2025-06-19', '16:00', 75000),
-- ── FILM 18: Miko Movie ──────────────────────────────────────
(56,18, 2, '2025-06-20', '11:00', 55000),
(57,18, 1, '2025-06-20', '13:30', 55000);
-- ============================================================
-- 14. BOOKINGS (45 booking — semua skenario testing)
--
--  STATUS TICKET: active | not_active
--  STATUS PAID  : paid   | not_paid
--  SKENARIO:
--   A) active   + paid     = tiket aktif valid (sudah bayar, belum nonton)
--   B) not_active + paid   = tiket sudah dipakai / kadaluarsa
--   C) active   + not_paid = masih menunggu pembayaran
--
-- ============================================================
INSERT INTO bookings (id, user_id, showtime_id, status_ticket, status_paid, quantity, created_at, updated_at) VALUES
-- ── SKENARIO A: active + paid (normal sukses) ──────────────
(1,  4,  1,  'active',     'paid',     2,  '2025-06-09 08:00:00', '2025-06-09 08:10:00'), -- Andi, Interstellar 08:30
(2,  4,  16, 'active',     'paid',     3,  '2025-06-09 14:00:00', '2025-06-09 14:08:00'), -- Andi, Dune 3
(3,  5,  3,  'active',     'paid',     2,  '2025-06-09 09:00:00', '2025-06-09 09:05:00'), -- Rina, Interstellar 18:30
(4,  5,  27, 'active',     'paid',     4,  '2025-06-09 16:00:00', '2025-06-09 16:06:00'), -- Rina, Avengers 08:30
(5,  6,  10, 'active',     'paid',     2,  '2025-06-10 07:30:00', '2025-06-10 07:40:00'), -- Doni, Gatotkaca Surabaya
(6,  7,  19, 'active',     'paid',     1,  '2025-06-09 18:00:00', '2025-06-09 18:05:00'), -- Bagas, Rumah Merah
(7,  7,  8,  'active',     'paid',     3,  '2025-06-10 10:30:00', '2025-06-10 10:38:00'), -- Bagas, Gatotkaca Jakarta
(8,  8,  20, 'active',     'paid',     2,  '2025-06-10 11:00:00', '2025-06-10 11:07:00'), -- Nadia, KKN Bandung
(9,  8,  33, 'active',     'paid',     2,  '2025-06-11 08:30:00', '2025-06-11 08:38:00'), -- Nadia, KKN CGV
(10, 9,  14, 'active',     'paid',     2,  '2025-06-09 19:00:00', '2025-06-09 19:08:00'), -- Reza, Oppenheimer
(11, 10, 2,  'active',     'paid',     4,  '2025-06-09 12:00:00', '2025-06-09 12:06:00'), -- Fitri, Interstellar 13:30
(12, 11, 36, 'active',     'paid',     2,  '2025-06-09 16:30:00', '2025-06-09 16:38:00'), -- Hendra, Killer's Code
(13, 12, 28, 'active',     'paid',     2,  '2025-06-11 09:30:00', '2025-06-11 09:38:00'), -- Dewi, Avengers 13:30
(14, 13, 45, 'active',     'paid',     2,  '2025-06-14 10:00:00', '2025-06-14 10:08:00'), -- Agus, Love in Bali
(15, 14, 26, 'active',     'paid',     1,  '2025-06-12 08:00:00', '2025-06-12 08:05:00'), -- Sinta, Cinta Yogya
(16, 15, 30, 'active',     'paid',     2,  '2025-06-12 19:00:00', '2025-06-12 19:08:00'), -- Lisa, Avengers hiflix
(17, 16, 47, 'active',     'paid',     3,  '2025-06-15 13:00:00', '2025-06-15 13:08:00'), -- Tommy, Galaxy Patrol
(18, 17, 51, 'active',     'paid',     2,  '2025-06-16 15:00:00', '2025-06-16 15:08:00'), -- Yuni, Paradoks
(19, 18, 6,  'active',     'paid',     2,  '2025-06-10 14:00:00', '2025-06-10 14:08:00'), -- Kevin, Interstellar hiflix
(20, 19, 25, 'active',     'paid',     2,  '2025-06-11 10:00:00', '2025-06-11 10:08:00'), -- Amanda, Cinta Bandung
(21, 20, 44, 'active',     'paid',     4,  '2025-06-14 16:00:00', '2025-06-14 16:08:00'), -- Rizky, Jakarta Under Siege
(22, 21, 39, 'active',     'paid',     2,  '2025-06-13 07:00:00', '2025-06-13 07:08:00'), -- Clara, Elemental 08:30
(23, 22, 53, 'active',     'paid',     2,  '2025-06-17 20:00:00', '2025-06-17 20:08:00'), -- Dimas, PTJ2
(24, 4,  40, 'active',     'paid',     2,  '2025-06-13 09:00:00', '2025-06-13 09:08:00'), -- Andi, Elemental 11:00
(25, 5,  41, 'active',     'paid',     3,  '2025-06-13 10:00:00', '2025-06-13 10:08:00'), -- Rina, Elemental Bandung
(26, 7,  34, 'active',     'paid',     2,  '2025-06-12 20:00:00', '2025-06-12 20:08:00'), -- Bagas, KKN Surabaya
(27, 10, 49, 'active',     'paid',     2,  '2025-06-15 15:00:00', '2025-06-15 15:08:00'), -- Fitri, Pembuktian
(28, 12, 55, 'active',     'paid',     2,  '2025-06-18 14:00:00', '2025-06-18 14:08:00'), -- Dewi, Bumi Manusia
(29, 15, 56, 'active',     'paid',     2,  '2025-06-19 10:00:00', '2025-06-19 10:08:00'), -- Lisa, Miko Movie
(30, 20, 57, 'active',     'paid',     3,  '2025-06-19 12:00:00', '2025-06-19 12:08:00'), -- Rizky, Miko Jakarta
-- ── SKENARIO B: not_active + paid (tiket sudah digunakan) ──
(31, 4,  13, 'not_active', 'paid',     2,  '2025-05-05 10:00:00', '2025-05-05 10:10:00'), -- Andi, Oppenheimer (lama)
(32, 5,  23, 'not_active', 'paid',     2,  '2025-05-10 14:00:00', '2025-05-10 14:08:00'), -- Rina, Cinta (sudah nonton)
(33, 8,  37, 'not_active', 'paid',     2,  '2025-05-15 18:00:00', '2025-05-15 18:08:00'), -- Nadia, Killer's Code
(34, 9,  11, 'not_active', 'paid',     3,  '2025-05-20 12:00:00', '2025-05-20 12:08:00'), -- Reza, Gatotkaca Surabaya
(35, 11, 5,  'not_active', 'paid',     2,  '2025-05-25 09:00:00', '2025-05-25 09:08:00'), -- Hendra, Interstellar hiflix
(36, 13, 1,  'not_active', 'paid',     1,  '2025-04-01 08:00:00', '2025-04-01 08:05:00'), -- Agus (tiket sangat lama)
-- ── SKENARIO C: active + not_paid (menunggu pembayaran) ────
(37, 6,  9,  'active',     'not_paid', 2,  '2025-06-10 10:00:00', NULL), -- Doni, Gatotkaca hiflix (belum bayar)
(38, 12, 29, 'active',     'not_paid', 2,  '2025-06-11 15:00:00', NULL), -- Dewi, Avengers 18:30 (belum bayar)
(39, 14, 32, 'active',     'not_paid', 3,  '2025-06-12 07:00:00', NULL), -- Sinta, Avengers Bandung (belum bayar)
(40, 16, 35, 'active',     'not_paid', 2,  '2025-06-13 17:00:00', NULL), -- Tommy, KKN Medan (belum bayar)
(41, 17, 43, 'active',     'not_paid', 2,  '2025-06-14 15:00:00', NULL), -- Yuni, Jakarta Under Siege (belum bayar)
(42, 19, 46, 'active',     'not_paid', 2,  '2025-06-15 13:00:00', NULL), -- Amanda, Love in Bali Jakarta (belum bayar)
(43, 21, 48, 'active',     'not_paid', 3,  '2025-06-16 18:00:00', NULL), -- Clara, Galaxy Patrol Surabaya (belum bayar)
(44, 22, 52, 'active',     'not_paid', 2,  '2025-06-17 19:00:00', NULL), -- Dimas, Paradoks hiflix (belum bayar)
(45, 20, 54, 'active',     'not_paid', 2,  '2025-06-18 20:00:00', NULL); -- Rizky, PTJ2 Surabaya (belum bayar)


-- ============================================================
-- 15. TRANSACTIONS (45 transaksi)
--     completed  = booking paid
--     pending    = booking not_paid, sudah submit payment
--     failed     = pembayaran gagal (untuk testing error case)
-- ============================================================
INSERT INTO transactions (id, booking_id, payment_method_id, virtual_rek, total_price, status, qr_code) VALUES
-- ── COMPLETED (booking 1–30) ─────────────────────────────────
(1,  1,  1, 88110001, 150000,  'completed', 'https://storage.tickitz.id/qr/TXN001.png'),  -- GoPay
(2,  2,  4, 88110002, 255000,  'completed', 'https://storage.tickitz.id/qr/TXN002.png'),  -- BCA
(3,  3,  2, 88110003, 170000,  'completed', 'https://storage.tickitz.id/qr/TXN003.png'),  -- OVO
(4,  4,  1, 88110004, 360000,  'completed', 'https://storage.tickitz.id/qr/TXN004.png'),  -- GoPay
(5,  5,  3, 88110005, 120000,  'completed', 'https://storage.tickitz.id/qr/TXN005.png'),  -- DANA
(6,  6,  7, 88110006,  65000,  'completed', 'https://storage.tickitz.id/qr/TXN006.png'),  -- Kartu Kredit
(7,  7,  4, 88110007, 195000,  'completed', 'https://storage.tickitz.id/qr/TXN007.png'),  -- BCA
(8,  8,  2, 88110008, 120000,  'completed', 'https://storage.tickitz.id/qr/TXN008.png'),  -- OVO
(9,  9,  1, 88110009, 120000,  'completed', 'https://storage.tickitz.id/qr/TXN009.png'),  -- GoPay
(10, 10, 5, 88110010, 160000,  'completed', 'https://storage.tickitz.id/qr/TXN010.png'),  -- Mandiri
(11, 11, 4, 88110011, 300000,  'completed', 'https://storage.tickitz.id/qr/TXN011.png'),  -- BCA
(12, 12, 6, 88110012, 150000,  'completed', 'https://storage.tickitz.id/qr/TXN012.png'),  -- BNI
(13, 13, 1, 88110013, 180000,  'completed', 'https://storage.tickitz.id/qr/TXN013.png'),  -- GoPay
(14, 14, 3, 88110014, 120000,  'completed', 'https://storage.tickitz.id/qr/TXN014.png'),  -- DANA
(15, 15, 2, 88110015,  55000,  'completed', 'https://storage.tickitz.id/qr/TXN015.png'),  -- OVO
(16, 16, 4, 88110016, 170000,  'completed', 'https://storage.tickitz.id/qr/TXN016.png'),  -- BCA
(17, 17, 1, 88110017, 240000,  'completed', 'https://storage.tickitz.id/qr/TXN017.png'),  -- GoPay
(18, 18, 5, 88110018, 150000,  'completed', 'https://storage.tickitz.id/qr/TXN018.png'),  -- Mandiri
(19, 19, 3, 88110019, 140000,  'completed', 'https://storage.tickitz.id/qr/TXN019.png'),  -- DANA
(20, 20, 2, 88110020, 110000,  'completed', 'https://storage.tickitz.id/qr/TXN020.png'),  -- OVO
(21, 21, 7, 88110021, 300000,  'completed', 'https://storage.tickitz.id/qr/TXN021.png'),  -- Kartu Kredit
(22, 22, 1, 88110022, 110000,  'completed', 'https://storage.tickitz.id/qr/TXN022.png'),  -- GoPay
(23, 23, 8, 88110023, 140000,  'completed', 'https://storage.tickitz.id/qr/TXN023.png'),  -- Alfamart
(24, 24, 4, 88110024, 110000,  'completed', 'https://storage.tickitz.id/qr/TXN024.png'),  -- BCA
(25, 25, 2, 88110025, 150000,  'completed', 'https://storage.tickitz.id/qr/TXN025.png'),  -- OVO
(26, 26, 1, 88110026, 120000,  'completed', 'https://storage.tickitz.id/qr/TXN026.png'),  -- GoPay
(27, 27, 6, 88110027, 130000,  'completed', 'https://storage.tickitz.id/qr/TXN027.png'),  -- BNI
(28, 28, 3, 88110028, 150000,  'completed', 'https://storage.tickitz.id/qr/TXN028.png'),  -- DANA
(29, 29, 1, 88110029, 110000,  'completed', 'https://storage.tickitz.id/qr/TXN029.png'),  -- GoPay
(30, 30, 4, 88110030, 165000,  'completed', 'https://storage.tickitz.id/qr/TXN030.png'),  -- BCA
-- ── COMPLETED (booking lama: 31–36) ──────────────────────────
(31, 31, 5, 88110031, 160000,  'completed', 'https://storage.tickitz.id/qr/TXN031.png'),
(32, 32, 1, 88110032, 120000,  'completed', 'https://storage.tickitz.id/qr/TXN032.png'),
(33, 33, 2, 88110033, 150000,  'completed', 'https://storage.tickitz.id/qr/TXN033.png'),
(34, 34, 4, 88110034, 180000,  'completed', 'https://storage.tickitz.id/qr/TXN034.png'),
(35, 35, 3, 88110035, 140000,  'completed', 'https://storage.tickitz.id/qr/TXN035.png'),
(36, 36, 7, 88110036,  75000,  'completed', 'https://storage.tickitz.id/qr/TXN036.png'),
-- ── PENDING (booking not_paid: 37–45) ────────────────────────
(37, 37, 4, 88120001, 130000,  'pending',   NULL), -- Doni, menunggu transfer BCA
(38, 38, 1, 88120002, 170000,  'pending',   NULL), -- Dewi, menunggu GoPay
(39, 39, 5, 88120003, 240000,  'pending',   NULL), -- Sinta, menunggu Mandiri
(40, 40, 2, 88120004, 120000,  'pending',   NULL), -- Tommy, menunggu OVO
(41, 41, 3, 88120005, 150000,  'pending',   NULL), -- Yuni, menunggu DANA
(42, 42, 4, 88120006, 120000,  'pending',   NULL), -- Amanda, menunggu BCA
(43, 43, 1, 88120007, 240000,  'pending',   NULL), -- Clara, menunggu GoPay
(44, 44, 6, 88120008, 140000,  'pending',   NULL), -- Dimas, menunggu BNI
-- ── FAILED (testing skenario pembayaran gagal) ────────────────
(45, 45, 5, 88130001, 130000,  'failed',    NULL); -- Rizky, transfer Mandiri gagal
-- ============================================================
-- 16. BOOKING_SEATS (kursi yang dipesan per booking)
--
--  PETA SEAT_ID (7 baris × 14 kolom = 98 kursi per cinema):
--  Cinema 1 (ebv.id Grand Indonesia):     seat_id   1 –  98
--    Row A: 1–14  | B: 15–28 | C: 29–42 | D: 43–56
--    Row E: 57–70 | LN: 71–84 | G: 85–98
--  Cinema 2 (hiflix FX Sudirman):         seat_id  99 – 196
--    Row A: 99–112 | B: 113–126 | C: 127–140 | D: 141–154
--    Row E: 155–168 | LN: 169–182 | G: 183–196
--  Cinema 3 (CineOne21 TIM):              seat_id 197 – 294
--    Row A: 197–210 | B: 211–224 | C: 225–238 | D: 239–252
--    Row E: 253–266 | LN: 267–280 | G: 281–294
--  Cinema 4 (ebv.id Tunjungan):           seat_id 295 – 392
--  Cinema 5 (hiflix Galaxy):              seat_id 393 – 490
--  Cinema 6 (CineOne21 Pakuwon):          seat_id 491 – 588
--  Cinema 7 (ebv.id Paris Van Java):      seat_id 589 – 686
--  Cinema 8 (hiflix BIP):                 seat_id 687 – 784
--  Cinema 9 (CineOne21 Sun Plaza):        seat_id 785 – 882
--  Cinema 10 (ebv.id Paragon):            seat_id 883 – 980
--  Cinema 11 (hiflix Ambarrukmo):         seat_id 981 – 1078
--  Cinema 12 (CineOne21 Bali Galeria):    seat_id 1079 – 1176
--
-- ============================================================

-- Booking 1 (user 4, showtime 1, cinema 1, qty 2) → A1, A2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (1, 1, 1), (1, 2, 1);

-- Booking 2 (user 4, showtime 16, cinema 1, qty 3) → B1, B2, B3
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (2, 15, 16), (2, 16, 16), (2, 17, 16);

-- Booking 3 (user 5, showtime 3, cinema 1, qty 2) → C1, C2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (3, 29, 3), (3, 30, 3);

-- Booking 4 (user 5, showtime 27, cinema 1, qty 4) → D1, D2, D3, D4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (4, 43, 27), (4, 44, 27), (4, 45, 27), (4, 46, 27);

-- Booking 5 (user 6, showtime 10, cinema 4 ebv Surabaya, qty 2) → A1, A2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (5, 295, 10), (5, 296, 10);

-- Booking 6 (user 7, showtime 19, cinema 2 hiflix, qty 1) → A1
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (6, 99, 19);

-- Booking 7 (user 7, showtime 8, cinema 1, qty 3) → E1, E2, E3
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (7, 57, 8), (7, 58, 8), (7, 59, 8);

-- Booking 8 (user 8, showtime 20, cinema 3 CineOne21, qty 2) → A5, A6
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (8, 201, 20), (8, 202, 20);

-- Booking 9 (user 8, showtime 33, cinema 2 hiflix, qty 2) → B3, B4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (9, 115, 33), (9, 116, 33);

-- Booking 10 (user 9, showtime 14, cinema 1, qty 2) → LN5, LN6 (Love Nest!)
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (10, 75, 14), (10, 76, 14);

-- Booking 11 (user 10, showtime 2, cinema 1, qty 4) → F1,F2,F3,F4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (11, 51, 2), (11, 52, 2), (11, 53, 2), (11, 54, 2);

-- Booking 12 (user 11, showtime 36, cinema 1, qty 2) → G3, G4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (12, 87, 36), (12, 88, 36);

-- Booking 13 (user 12, showtime 28, cinema 1, qty 2) → A7, A8
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (13, 7, 28), (13, 8, 28);

-- Booking 14 (user 13, showtime 45, cinema 12 Bali, qty 2) → A1, A2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (14, 1079, 45), (14, 1080, 45);

-- Booking 15 (user 14, showtime 26, cinema 11 Yogya hiflix, qty 1) → B5
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (15, 1000, 26);

-- Booking 16 (user 15, showtime 30, cinema 2, qty 2) → LN7, LN8 (Love Nest couple!)
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (16, 175, 30), (16, 176, 30);

-- Booking 17 (user 16, showtime 47, cinema 1, qty 3) → C3, C4, C5
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (17, 31, 47), (17, 32, 47), (17, 33, 47);

-- Booking 18 (user 17, showtime 51, cinema 1, qty 2) → D5, D6
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (18, 47, 51), (18, 48, 51);

-- Booking 19 (user 18, showtime 6, cinema 2, qty 2) → A3, A4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (19, 101, 6), (19, 102, 6);

-- Booking 20 (user 19, showtime 25, cinema 6 CineOne21 Surabaya, qty 2) → B1, B2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (20, 505, 25), (20, 506, 25);

-- Booking 21 (user 20, showtime 44, cinema 4, qty 4) → A9, A10, A11, A12
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (21, 303, 44), (21, 304, 44), (21, 305, 44), (21, 306, 44);

-- Booking 22 (user 21, showtime 39, cinema 1, qty 2) → E3, E4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (22, 59, 39), (22, 60, 39);

-- Booking 23 (user 22, showtime 53, cinema 1, qty 2) → G1, G2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (23, 85, 53), (23, 86, 53);

-- Booking 24 (user 4, showtime 40, cinema 1, qty 2) → A9, A10
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (24, 9, 40), (24, 10, 40);

-- Booking 25 (user 5, showtime 41, cinema 3, qty 3) → A1, A2, A3
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (25, 197, 41), (25, 198, 41), (25, 199, 41);

-- Booking 26 (user 7, showtime 34, cinema 5 hiflix Surabaya, qty 2) → C7, C8
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (26, 427, 34), (26, 428, 34);

-- Booking 27 (user 10, showtime 49, cinema 3, qty 2) → D3, D4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (27, 241, 49), (27, 242, 49);

-- Booking 28 (user 12, showtime 55, cinema 3, qty 2) → E5, E6
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (28, 257, 55), (28, 258, 55);

-- Booking 29 (user 15, showtime 56, cinema 2, qty 2) → A5, A6
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (29, 103, 56), (29, 104, 56);

-- Booking 30 (user 20, showtime 57, cinema 1, qty 3) → B7, B8, B9
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (30, 21, 57), (30, 22, 57), (30, 23, 57);

-- Booking 31 (lama/not_active: user 4, showtime 13) → C1, C2
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (31, 29, 13), (31, 30, 13);

-- Booking 32 (lama/not_active: user 5, showtime 23) → A3, A4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (32, 3, 23), (32, 4, 23);

-- Booking 33 (lama/not_active: user 8, showtime 37) → B5, B6
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (33, 227, 37), (33, 228, 37);

-- Booking 34 (lama/not_active: user 9, showtime 11) → A1, A2, A3
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (34, 393, 11), (34, 394, 11), (34, 395, 11);

-- Booking 35 (lama/not_active: user 11, showtime 5) → D7, D8
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (35, 155, 5), (35, 156, 5);

-- Booking 36 (lama/not_active: user 13, showtime 1) → G13
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (36, 97, 1);

-- Booking 37–45: pending/not_paid — kursi sudah di-hold tapi belum dikonfirmasi
-- Booking 37 (Doni, showtime 9, cinema 2, qty 2) → C3, C4
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (37, 127, 9), (37, 128, 9);

-- Booking 38 (Dewi, showtime 29, cinema 1, qty 2) → E7, E8
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (38, 63, 29), (38, 64, 29);

-- Booking 39 (Sinta, showtime 32, cinema 7, qty 3) → A1, A2, A3
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (39, 589, 32), (39, 590, 32), (39, 591, 32);

-- Booking 40 (Tommy, showtime 35, cinema 8, qty 2) → B9, B10
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (40, 704, 35), (40, 705, 35);

-- Booking 41 (Yuni, showtime 43, cinema 1, qty 2) → D11, D12
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (41, 53, 43), (41, 54, 43);

-- Booking 42 (Amanda, showtime 46, cinema 1, qty 2) → LN9, LN10 (Love Nest hold)
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (42, 79, 46), (42, 80, 46);

-- Booking 43 (Clara, showtime 48, cinema 4, qty 3) → C1, C2, C3
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (43, 323, 48), (43, 324, 48), (43, 325, 48);

-- Booking 44 (Dimas, showtime 52, cinema 2, qty 2) → G5, G6
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (44, 187, 52), (44, 188, 52);

-- Booking 45 (Rizky, showtime 54, cinema 5 hiflix Surabaya, qty 2) → A7, A8
INSERT INTO booking_seats (booking_id, seat_id, showtime_id) VALUES (45, 399, 54), (45, 400, 54);


-- ============================================================
-- SEQUENCE RESET
-- ============================================================
SELECT setval('locations_id_seq',       (SELECT MAX(id) FROM locations));
SELECT setval('payment_methods_id_seq', (SELECT MAX(id) FROM payment_methods));
SELECT setval('genres_id_seq',          (SELECT MAX(id) FROM genres));
SELECT setval('directors_id_seq',       (SELECT MAX(id) FROM directors));
SELECT setval('casts_id_seq',           (SELECT MAX(id) FROM casts));
SELECT setval('movies_id_seq',          (SELECT MAX(id) FROM movies));
SELECT setval('cinemas_id_seq',         (SELECT MAX(id) FROM cinemas));
SELECT setval('users_id_seq',           (SELECT MAX(id) FROM users));
SELECT setval('showtimes_id_seq',       (SELECT MAX(id) FROM showtimes));
SELECT setval('bookings_id_seq',        (SELECT MAX(id) FROM bookings));
SELECT setval('transactions_id_seq',    (SELECT MAX(id) FROM transactions));
SELECT setval('booking_seats_id_seq',   (SELECT MAX(id) FROM booking_seats));


-- ================================================================
-- SUMMARY DATA
-- ================================================================
-- locations       : 12 kota (termasuk Purwokerto & Bekasi)
-- users           : 25 (22 user + 3 admin; 3 belum verifikasi)
-- payment_methods : 8
-- genres          : 12
-- directors       : 20
-- casts           : 30
-- movies          : 18 film
-- cinemas         : 15 (ebv.id / hiflix / CineOne21)
-- seats           : 1,470 kursi (15 cinema × 98 kursi)
--                   Layout: 7 baris (A,B,C,D,E,LN,G) × 14 kolom
--                   Baris LN = Love Nest (pink di desain)
-- showtimes       : 57 jadwal (waktu: 08:30/11:00/13:30/16:00/18:30/20:00/21:30)
-- bookings        : 45 (30 active+paid | 6 not_active+paid | 9 active+not_paid)
-- transactions    : 45 (36 completed | 8 pending | 1 failed)
-- movie_genres    : 42 relasi
-- movie_casts     : 44 relasi
-- movie_directors : 18 relasi
-- booking_seats   : 94 kursi terbooking (semua konsisten dengan qty & seat_id)
-- ================================================================