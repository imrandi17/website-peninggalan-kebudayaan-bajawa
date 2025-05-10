-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Apr 2025 pada 06.29
-- Versi server: 11.4.3-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bajawa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `bg` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, 'auth.jpg', '#514edf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tipe_fitur` int(11) NOT NULL,
  `id_fitur` int(11) DEFAULT NULL,
  `image_galeri` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_tipe_fitur`, `id_fitur`, `image_galeri`, `created_at`, `updated_at`) VALUES
(5, 1, 9, '2553248616.jpg', '2024-05-30 02:11:18', '2024-05-30 02:11:18'),
(6, 1, 9, '84774487.jpg', '2024-07-17 18:40:58', '2024-07-17 18:40:58'),
(7, 1, 9, '946710503.jpg', '2024-07-17 18:41:56', '2024-07-17 18:41:56'),
(8, 1, 8, '1797939205.jpg', '2024-07-17 18:42:37', '2024-07-17 18:42:37'),
(9, 1, 8, '3595404439.jpg', '2024-07-17 18:43:42', '2024-07-17 18:43:42'),
(10, 1, 7, '4017824432.jpg', '2024-07-17 18:44:36', '2024-07-17 18:44:36'),
(11, 1, 7, '1825388373.jpg', '2024-07-17 18:44:58', '2024-07-17 18:44:58'),
(12, 1, 7, '3061426192.jpg', '2024-07-17 18:49:08', '2024-07-17 18:49:08'),
(13, 1, 7, '2045687904.jpg', '2024-07-17 18:49:33', '2024-07-17 18:49:33'),
(14, 1, 7, '1590002599.jpg', '2024-07-17 18:49:53', '2024-07-17 18:49:53'),
(15, 1, 7, '4230551124.jpg', '2024-07-17 18:50:12', '2024-07-17 18:50:12'),
(16, 1, 7, '1036758783.jpg', '2024-07-17 18:50:33', '2024-07-17 18:50:33'),
(17, 1, 6, '3088673147.jpg', '2024-07-17 18:52:17', '2024-07-17 18:52:17'),
(18, 1, 6, '3402141066.jpg', '2024-07-17 18:53:16', '2024-07-17 18:53:16'),
(19, 1, 6, '1669939379.jpg', '2024-07-17 18:54:03', '2024-07-17 18:54:03'),
(20, 1, 6, '1305874409.jpg', '2024-07-17 18:54:38', '2024-07-17 18:54:38'),
(22, 1, 6, '229447426.jpg', '2024-07-17 18:56:32', '2024-07-17 18:56:32'),
(23, 1, 5, '3950187504.jpg', '2024-07-17 18:58:30', '2024-07-17 18:58:30'),
(24, 1, 4, '1875860778.jpg', '2024-07-17 18:59:37', '2024-07-17 18:59:37'),
(25, 1, 4, '1756882048.jpg', '2024-07-17 19:00:01', '2024-07-17 19:00:01'),
(26, 1, 4, '1952159524.jpg', '2024-07-17 19:00:26', '2024-07-17 19:00:26'),
(27, 1, 3, '663240738.jpg', '2024-07-17 19:01:22', '2024-07-17 19:01:22'),
(28, 1, 3, '778705521.jpg', '2024-07-17 19:01:46', '2024-07-17 19:01:46'),
(29, 1, 3, '4023939613.jpg', '2024-07-17 19:02:09', '2024-07-17 19:02:09'),
(30, 1, 2, '1134735837.jpg', '2024-07-17 19:02:57', '2024-07-17 19:02:57'),
(31, 1, 2, '2406238026.jpg', '2024-07-17 19:03:37', '2024-07-17 19:03:37'),
(32, 1, 2, '1278204660.jpg', '2024-07-17 19:04:05', '2024-07-17 19:04:05'),
(33, 1, 10, '349057970.jpeg', '2024-07-17 19:06:15', '2024-07-17 19:06:15'),
(34, 1, 10, '2199033631.jpg', '2024-07-17 19:06:36', '2024-07-17 19:06:36'),
(35, 1, 4, '340547329.jpg', '2024-07-17 19:12:23', '2024-07-17 19:12:23'),
(36, 2, 5, '1475728421.jpg', '2024-07-17 19:13:20', '2024-07-17 19:13:20'),
(37, 2, 5, '2880510331.jpg', '2024-07-17 19:14:24', '2024-07-17 19:14:24'),
(38, 2, 5, '3326821411.jpg', '2024-07-17 19:15:23', '2024-07-17 19:15:23'),
(39, 2, 5, '3206268564.jpg', '2024-07-17 19:15:53', '2024-07-17 19:15:53'),
(40, 2, 5, '3680696729.jpg', '2024-07-17 19:16:34', '2024-07-17 19:16:34'),
(41, 2, 5, '2447718824.jpg', '2024-07-17 19:17:09', '2024-07-17 19:17:09'),
(42, 2, 5, '1726577415.jpg', '2024-07-17 19:18:01', '2024-07-17 19:18:01'),
(43, 1, 11, '3085748029.jpg', '2024-07-23 02:23:37', '2024-07-23 02:23:37'),
(44, 1, 11, '3468868053.jpg', '2024-07-23 02:23:56', '2024-07-23 02:23:56'),
(45, 2, 4, '3681227748.jpg', '2024-07-23 02:24:34', '2024-07-23 02:24:34'),
(46, 2, 4, '56015698.jpg', '2024-07-23 02:24:56', '2024-07-23 02:24:56'),
(47, 2, 4, '625524812.jpg', '2024-07-23 02:25:15', '2024-07-23 02:25:15'),
(48, 2, 1, '1064154047.jpg', '2024-07-23 02:25:56', '2024-07-23 02:25:56'),
(49, 2, 1, '725247003.jpg', '2024-07-23 02:26:20', '2024-07-23 02:26:20'),
(50, 2, 1, '993016177.jpeg', '2024-07-23 02:27:06', '2024-07-23 02:27:06'),
(51, 2, 1, '3686379508.jpg', '2024-07-23 02:27:28', '2024-07-23 02:27:28'),
(52, 2, 1, '3749003272.jpg', '2024-07-23 02:27:56', '2024-07-23 02:27:56'),
(53, 2, 1, '1327268378.jpg', '2024-07-23 02:28:36', '2024-07-23 02:28:36'),
(54, 2, 5, '2007465073.jpg', '2024-07-23 02:28:55', '2024-07-23 02:28:55'),
(55, 2, 4, '3771032047.jpg', '2024-07-23 02:29:55', '2024-07-23 02:29:55'),
(56, 2, 3, '2748859422.jpg', '2024-07-23 02:30:41', '2024-07-23 02:30:41'),
(57, 2, 3, '3817774556.jpg', '2024-07-23 02:31:25', '2024-07-23 02:31:25'),
(59, 2, 3, '3914460426.jpg', '2024-07-23 02:32:26', '2024-07-23 02:32:26'),
(60, 2, 3, '2550518362.jpg', '2024-07-23 02:32:45', '2024-07-23 02:32:45'),
(61, 2, 4, '1666291211.jpg', '2024-07-23 02:33:19', '2024-07-23 02:33:19'),
(63, 2, 4, '3870382817.jpg', '2024-07-23 02:35:06', '2024-07-23 02:35:06'),
(66, 2, 5, '1475728421.jpg', '2024-07-23 02:37:25', '2024-07-23 02:37:25'),
(67, 1, 4, '2457948187.jpg', '2024-07-28 18:37:07', '2024-07-28 18:37:07'),
(68, 1, 11, '3085748029.jpg', '2024-07-28 18:37:30', '2024-07-28 18:37:30'),
(69, 1, 0, '1112080618.png', '2025-04-05 14:54:10', '2025-04-05 14:54:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kebudayaan`
--

CREATE TABLE `jenis_kebudayaan` (
  `id_jenis_kebudayaan` int(11) NOT NULL,
  `jenis_kebudayaan` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_kebudayaan`
--

INSERT INTO `jenis_kebudayaan` (`id_jenis_kebudayaan`, `jenis_kebudayaan`, `created_at`) VALUES
(1, 'Kampung Adat', '2025-02-25 07:54:33'),
(2, 'Upacara Adat', '2025-02-25 07:54:33'),
(3, 'Tarian Adat', '2025-02-25 07:54:33'),
(4, 'Pakaian Adat dan Pusaka', '2025-02-25 07:54:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kebudayaan`
--

CREATE TABLE `kebudayaan` (
  `id_kebudayaan` int(11) NOT NULL,
  `id_jenis_kebudayaan` int(11) NOT NULL,
  `nama_kebudayaan` varchar(255) NOT NULL,
  `image_kebudayaan` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `pembaca` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kebudayaan`
--

INSERT INTO `kebudayaan` (`id_kebudayaan`, `id_jenis_kebudayaan`, `nama_kebudayaan`, `image_kebudayaan`, `deskripsi`, `author`, `pembaca`, `created_at`, `updated_at`) VALUES
(5, 3, 'tari piring', 'kebudayaan_1740471783.png', '<p>dawd</p>\r\n', 'admin', 6, '2025-02-25 08:23:03', '2025-03-01 16:42:14'),
(6, 1, 'halosesad', 'kebudayaan_1740471815.png', '<p>dad</p>\r\n', 'admin', 8, '2025-02-25 08:23:35', '2025-03-02 07:46:49'),
(7, 1, 'Jodipan', 'kebudayaan_1740843557.png', '<p>ini adalah contoh kampung</p>\r\n', 'admin', 4, '2025-03-01 15:39:17', '2025-03-02 07:46:53'),
(8, 3, 'kecak', 'kebudayaan_1740843605.png', '<p>ini tari kecak</p>\r\n', 'admin', 4, '2025-03-01 15:40:05', '2025-03-02 07:47:04'),
(9, 4, 'gunung padang', 'kebudayaan_1740843690.png', '<p>tesdbawid</p>\r\n', 'admin', 8, '2025-03-01 15:41:30', '2025-04-05 07:52:32'),
(10, 4, 'patung gajah', 'kebudayaan_1740843758.png', '<p>patung gajah</p>\r\n', 'admin', 7, '2025-03-01 15:42:38', '2025-04-05 07:52:29'),
(11, 2, 'ngaben', 'kebudayaan_1740843791.png', '<p>contoh ngaben</p>\r\n', 'admin', 4, '2025-03-01 15:43:11', '2025-03-02 07:46:58'),
(12, 2, 'Tabuik', 'kebudayaan_1740901569.jpg', '<p>sadawda</p>\r\n', 'admin', 3, '2025-03-01 15:44:14', '2025-03-02 07:46:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `username` varchar(75) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `username`, `email`, `phone`, `pesan`, `created_at`, `updated_at`) VALUES
(5, 'emi', 'tantilobo0@gmail.com', '082374594589', 'Bukit wolobobo sangat indah', '2024-07-28 18:50:28', '2024-07-28 18:50:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_kebudayaan`
--

CREATE TABLE `tempat_kebudayaan` (
  `id_tempat_kebudayaan` int(11) NOT NULL,
  `image_kebudayaan` varchar(50) DEFAULT NULL,
  `nama_kebudayaan` varchar(75) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `pembaca` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tempat_kebudayaan`
--

INSERT INTO `tempat_kebudayaan` (`id_tempat_kebudayaan`, `image_kebudayaan`, `nama_kebudayaan`, `deskripsi`, `author`, `pembaca`, `created_at`, `updated_at`) VALUES
(1, '3726351952.jpg', 'RUMAH ADAT BENA', '<p>Kampung Adat Bena merupakan salah satu kampung yang masih mempertahankan kebudayaan dan adat dari lelulur yang telah berlangsung puluhan abad silam. Memiliki 45 rumah adat dengan arsitektur yang unik dan indah Kampong Adat Bena hampir setiap harinya dikunjungi wisatawan.</p>\r\n\r\n<p>Kampung Adat Bena merupakan sebuah perkampungan megalitikum di Pulau Flores, tepatnya di Desa Tiwuriwu, Kecamatan Aimere 19 KM arah selatan kota Bajawa. Dengan menggunakan moda transportasi roda empat maupun roda dua wisatawan dapat mengunjungi kampung adat Bena yang berada tepat di bawah kaki gunung Inerie yang menjulang tinggi dan sering bermahkotakan awan indah. Setiap pengunjung yang datang ke kampung Bena akan disambut&nbsp;&nbsp;dengan keramahtamahan khas masyarakat pedesaan yang penuh kehangatan serta rasa persaudaraan yang tinggi. Udara sejuk serta barisan perumahan adat yang alami menjadi pemandangan yang indah dan menggoda pengunjung untuk melangkakan kaki di sepanjang jalan setapak demi melihat kehidupan warga yang sederhana dengan pajangan hasil tenunan yang kaya akan motif dan filosofi gambaran kearifan budaya leluhur.</p>\r\n', 'develoepr', 11, '2024-05-28 02:52:53', '2025-04-05 14:28:37'),
(3, '4183099549.jpg', 'AIR TERJUN OGI', '<p>Air Terjun Ogi Bajawa merupakan salah satu objek wisata alam yang terletak di daerah Bajawa Kabupaten Ngada, Flores Nusa Tenggara Timur, Indonesia. Air terjun Ogi ini terkenal karena keindahan alamnya yang masih alami terjaga dan menakjubkan. Air Terjun Ogi memiliki ketinggian kurang lebih sekitar 35 meter dan dikelilingi oleh hutan tropis yang hijau.</p>\r\n\r\n<p>Untuk mencapai Air Terjun Ogi, para wisatawan perlu melakukan perjalanan sekitar 30 kilometer dari pusat kota Bajawa, atau kalau di tempuh dari kota Labuan Bajo perjalanan kurang lebih sekitar 7 jam menggunakan kendaraan roda dua maupun roda empat. Rute perjalanan biasanya dengan jalur darat dengan kendaraan pribadi atau sewa, karena transportasi umum belum tersedia setiap waktu untuk langsung menuju ke air terjun Ogi ini.</p>\r\n\r\n<p>Ketika tiba di Air Terjun Ogi, para wisatawan pengunjung akan disambut dengan pemandangan yang menakjubkan. Pengunjung dapat menikmati keindahan air terjun yang jatuh dengan deras ke area bawah yang membentuk seperti telaga kolam alami. Serta area sekitar air terjun ini yang masih di kelilingi rerimbunan pepohonan yang menambah kesan asri.</p>\r\n', 'admin', 2, '2024-05-28 23:07:14', '2024-07-26 00:28:56'),
(4, '281277098.jpg', 'BUKIT AVATAR', '<p>Bukit watunariwowo&nbsp;di Bajawa sering disebut bukit avatar. Topografi perbukitan terjalnya mirip perbukitan dalam animasi Avatar The Legende of Aang. Bukit Watunariwowo ini terletak di Desa Beja, Kecamatan Langa, Kabupaten Ngada, Pulau Flores, Nusa Tenggara Timur. Jarak tempuh sekitar 12 kilometer arah selatan dari Kota Bajawa.&nbsp;Jalan yang ditempuh&nbsp;cukup baik dan beraspal, bisa dilalui kendaraan roda dua maupun roda empat. Rute perjalanan menuju lokasi melewati Desa Langa sekitar tujuh kilometer ke Desa Beja. Patokannya adalah lokasi Gereja Katolik Maria Ratu Semesta dan terdapat papan penujunk arah jalur ke Bukit watunariwowo. Wisatawan melewati jalur tersebut sampaikan menemukan pos informasi wisata. Dari pos&nbsp;tersebut, anda mulai melakukan trekking dengan waktu sekitar 30 menit ke puncak Bukit Avatar Watunariwowo. Melewati jalur yang landai namun ada pagar di kiri kanan jalur untuk membantu wisatawan melakukan trekking dengan aman hinga puncak. Topografinya menantang, bukit ini salah satu tempat wisata alam andalan di Bajawa. Bukit avatar Bajawa&nbsp;ini sangat terjal hingga ke puncaknya. Vegetasi tumbuhan di puncik bukit ini sebagian besar tanaman savana seperti rumput. Beberapa pohon tumbuh tak jauh dari puncak bukit.</p>\r\n', 'admin', 4, '2024-05-28 23:14:03', '2024-07-26 00:25:21'),
(5, '221977220.jpg', 'PUNCAK WOLOBOBO', '<p>Bukit Wolobobo adalah salah satu destinasi wisata baru di Kabupaten Ngada Bajawa-Flores-ntt. bukit wolobobo menyimpan banyak misteri dan keunikan. sebelum anda masuk kawasan bukit wolobobo, anda akan menemukan susunan batu tempat pemujaan dan memberi makan leluhur. bukit wolobobo terletak tidak jauh dari kota bajawa, sekitar 7-8 km, anda dapat menggunakan kendaraan roda dua atau empat. bukit wolobobo menampilkan pemandangan yang eksotik, alamiah dan mempesona. pemandangan senja atau matahari terbenam di balik gunung Inerie, gunung tertinggi di Pulau flores, menjadi pemandangan yang luar biasa mengagumkan. selain itu juga, bukit wolobobo menjadi ikon negeri dan surga di atas awan. awan putih mengelilingi bukit wolobobo dan lembah yang berkabut berlatar belakang gunung inerie sangat menakjubkan.&nbsp;</p>\r\n\r\n<p>https://www.youtube.com/watch?v=q8ypV-QBoGQ</p>\r\n', 'admin', 12, '2024-05-28 23:18:12', '2024-07-28 23:53:52'),
(6, '3569643244.png', 'Bukit Bajawa', '<p>tess</p>\r\n', 'admin', 11, '2025-02-19 20:23:03', '2025-03-01 22:30:54'),
(8, '2267503521.jpg', 'tessss', '<p>12333</p>\r\n', 'Tigo S Yoga', 0, '2025-04-05 14:53:39', '2025-04-05 14:53:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p>Bajawa adalah kecamatan yang juga menjadi ibu kota dari Kabupaten Ngada, Provinsi Nusa Tenggara Timur. Bajawa ini terletak di pulau Flores dengan luas wilayahnya sekitar 137, 36 km2.&nbsp;Karena ketinggiannya Bajawa memiliki iklim yang relatif sejak dan udara yang segar.&nbsp;Daerah ini juga dikenal dengan keindahan pegunungannya.&nbsp;Keanekaragaman budaya disini tercermin dalam tradisi adat, bahasa, dan seni budaya. Kaya akan berbagai kuliner dan teknik pengawetan makanan dan acara adat seperti seperti hui wu&rsquo;u, uta tabha, ra&rsquo;a rete, po&rsquo;o, nasi kacang, ikan lawar, rompe rampe,tumis pucuk labu, nasi jagung dan acara adat reba.&nbsp;</p>\r\n', '2024-05-28 03:19:55', '2024-06-03 03:34:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `en_user` varchar(75) DEFAULT NULL,
  `token` char(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'default.svg',
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'developer', 'default.svg', 'developer@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-15 00:41:18', '2024-05-15 00:41:18'),
(2, 2, 2, NULL, NULL, 'admin', 'default.svg', 'admin@gmail.com', '$2y$10$FPQGholF/sLygIeh0ST45esusr51u2x4J72F9Zit1ns9jNDcUjic.', '2024-05-15 00:41:18', '2024-05-15 00:41:18'),
(3, 2, 1, '2y10LhE8Y64ctgadus0A7cxOagZEcfJ70gQUJ5JdbyLeIZFY2csE2', '173126', 'Tigo S Yoga', 'default.svg', 'tigo.yoga@gmail.com', '$2y$10$FPQGholF/sLygIeh0ST45esusr51u2x4J72F9Zit1ns9jNDcUjic.', '2025-02-18 11:37:28', '2025-02-18 11:37:56');

--
-- Trigger `users`
--
DELIMITER $$
CREATE TRIGGER `insert_users` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    SET NEW.id_role = (
        SELECT id_role
        FROM `user_role`
        ORDER BY id_role DESC
        LIMIT 1
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 3),
(6, 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_sub_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_sub_menu`
--

INSERT INTO `user_access_sub_menu` (`id_access_sub_menu`, `id_role`, `id_sub_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 10),
(9, 1, 8),
(10, 1, 9),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(15, 2, 8),
(16, 2, 9),
(17, 2, 10),
(18, 2, 13),
(19, 2, 11),
(20, 2, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id_menu`, `menu`) VALUES
(1, 'User Management'),
(2, 'Menu Management'),
(3, 'Kebudayaan'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Developer'),
(2, 'Administrator'),
(3, 'Owner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_status`
--

CREATE TABLE `user_status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_status`
--

INSERT INTO `user_status` (`id_status`, `status`) VALUES
(1, 'Active'),
(2, 'No Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id_sub_menu`, `id_menu`, `id_active`, `title`, `url`, `icon`) VALUES
(1, 1, 1, 'Users', 'users', 'fas fa-users'),
(2, 1, 1, 'Role', 'role', 'fas fa-user-cog'),
(3, 2, 1, 'Menu', 'menu', 'fas fa-fw fa-folder'),
(4, 2, 1, 'Sub Menu', 'sub-menu', 'fas fa-fw fa-folder-open'),
(5, 2, 1, 'Menu Access', 'menu-access', 'fas fa-user-lock'),
(6, 2, 1, 'Sub Menu Access', 'sub-menu-access', 'fas fa-user-lock'),
(8, 3, 1, 'Video', 'video', 'fas fa-video'),
(9, 3, 1, 'Galeri', 'galeri', 'fas fa-images'),
(10, 3, 1, 'Jenis Kebudayaan', 'jenis-kebudayaan', 'fas fa-list'),
(11, 4, 1, 'Tentang', 'tentang', 'fas fa-list'),
(12, 4, 1, 'Kontak', 'kontak', 'fas fa-comment-dots'),
(13, 3, 1, 'Tempat Kebudayaan', 'tempat-kebudayaan', 'fas fa-torii-gate');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `thumbnail` varchar(50) DEFAULT NULL,
  `link_video` varchar(100) DEFAULT NULL,
  `nama_video` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `penonton` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `thumbnail`, `link_video`, `nama_video`, `deskripsi`, `author`, `penonton`, `created_at`, `updated_at`) VALUES
(5, '1253899422.jpg', 'https://www.youtube.com/embed/04jp8nQ1Pbk', 'Resep Ra\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&#039;a Rete Ngana || Makanan Khas Bajawa - Ngada - NTT', '<p>&nbsp;</p>\r\n\r\n<p>Video ini saya membuat Salah satu masakan Tradisional Khas Dari flores NTT yaitu Ra&#39;a Rete. Buat kakak, oma dan mama dr Flores pasti sudah tdk asing dengan menu ini ya. Masakan ini terbuat dr daging babi, darah babi dan kelapa. Cara masaknya juga tidak sulit ya. Dan untuk bahan dan bumbu saya sesuaikan dengan resepnya yang saya dapatkan dari keluarga saya yang Orang Asli Bajawa Flores ya.</p>\r\n\r\n<p>Bahan</p>\r\n\r\n<ol>\r\n	<li>1kg daging babi</li>\r\n	<li>250grm kelapa (bisa kurangi sesuai selera)</li>\r\n	<li>350grm kelapa (bisa dikurangi sesuai selera)</li>\r\n</ol>\r\n\r\n<p>bumbu</p>\r\n\r\n<ol>\r\n	<li>12 buah bawang merah</li>\r\n	<li>&nbsp;10 buah bawang putih</li>\r\n	<li>6 batang serai</li>\r\n	<li>3 ruas jahe</li>\r\n	<li>4 ruas lengkuas</li>\r\n	<li>1/2 buah pala</li>\r\n	<li>2 sdm merica hitam dihaluskan</li>\r\n	<li>2 sdm ketumbar</li>\r\n	<li>5 buah kemiri bakar</li>\r\n	<li>9 buah cabai rawit</li>\r\n	<li>10 buah cabai rawit hijau</li>\r\n	<li>10 buah cabai keriting</li>\r\n	<li>10 lembar daun jeruk</li>\r\n	<li>3 lembar daun salam</li>\r\n	<li>1&nbsp;buah jeruk lemo Garam Kaldu jamur /penyedap secukupnya</li>\r\n	<li>200 ml Air kaldu</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', 2, '2024-05-28 22:21:22', '2024-07-23 01:32:43'),
(13, '3817774556.jpg', 'https://www.youtube.com/embed/W2w5xvAE23c', 'MENIKMATI INDAHNYA PESONA WISATA ALAM AIR TERJUN OGI - BAJAWA', '<p>Air Terjun Ogi Bajawa merupakan salah satu objek wisata alam yang terletak di daerah Bajawa Kabupaten Ngada, Flores Nusa Tenggara Timur, Indonesia. Air terjun Ogi ini terkenal karena keindahan alamnya yang masih alami terjaga dan menakjubkan. Air Terjun Ogi memiliki ketinggian kurang lebih sekitar 35 meter dan dikelilingi oleh hutan tropis yang hijau.</p>\r\n\r\n<p>Untuk mencapai Air Terjun Ogi, para wisatawan perlu melakukan perjalanan sekitar 30 kilometer dari pusat kota Bajawa, atau kalau di tempuh dari kota Labuan Bajo perjalanan kurang lebih sekitar 7 jam. Rute perjalanan biasanya dengan jalur darat dengan kendaraan pribadi atau sewa, karena transportasi umum belum tersedia setiap waktu untuk langsung menuju ke air terjun Ogi ini. Untuk masuk sampai ke kawasan air terjun ogi pengujung bisa menggunakan kendaraan roda dua.</p>\r\n', 'admin', 4, '2024-06-02 19:38:10', '2024-07-25 17:38:01'),
(14, '3088673147.jpg', 'https://www.youtube.com/embed/tw-EU_EvAE4', 'Hui Wu\\\\\\&#039;u', '<p>Hui Wuu adalah daging babi yang telah diawetkan bertahun- tahun. Proses pengawetan daging babi secara tradisional ini diwariskan secara turun temurun oleh nenek moyang masyarakat Ngada. Hui Wuu memiliki cita rasa khas yang selalu membangkitkan selera makan.&nbsp;</p>\r\n\r\n<p>Bahan-bahan:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Daging babi</li>\r\n	<li>Tepung jagung</li>\r\n	<li>Garam</li>\r\n	<li>Bambu&nbsp;<em>(tuku)</em></li>\r\n</ol>\r\n\r\n<p>cara membuat :</p>\r\n\r\n<ol>\r\n	<li>campurkan garam dengan dedak</li>\r\n	<li>campurkan daging dengan dedak yang sudah dicampurkan dengan garam</li>\r\n	<li>masukan daging kedalam&nbsp;<em>tuku&nbsp;</em>(batang bambu)\r\n	<p>&nbsp;</p>\r\n\r\n	<p>&nbsp;</p>\r\n	</li>\r\n</ol>\r\n', 'admin', 1, '2024-06-02 19:45:59', '2024-07-23 01:20:29'),
(15, '3991695924.jpg', 'https://www.youtube.com/embed/64WxARF6l8o', 'Pesona Bukit Avatar, Langa-Bajawa', '<p><big>Bukit Watunariwowo ini terletak di Desa Beja, Kecamatan Langa, Kabupaten Ngada, Pulau Flores, Nusa Tenggara Timur. Topografinya menantang, bukit ini salah satu tempat wisata alam andalan di Bajawa. Bukit avatar Bajawa&nbsp;ini sangat terjal hingga ke puncaknya. Vegetasi tumbuhan di puncik bukit ini sebagian besar tanaman savana seperti rumput. Beberapa pohon tumbuh tak jauh dari puncak bukit.&nbsp;Puncak Bukit Watunariwowo salah&nbsp;satu spot rekomendasi untuk wisatawan melihat keanggunan Gunung Inerie. Karena keindahan panorama alamnya, Bukit Watunariwowo menjadi tempat wisata tidak bisa dilewatkan wisatawan. Untuk menikmati keindahan Bukit Watunariwowo, wisatawan harus mendaki dan melewati jalan yang terjal ke puncaknya. Wisatawan pun tidak perlu khwatir untuk mengeksplor keindahan di Bukit Avatar Watunariwowo.&nbsp;</big><big>Berhubung harus berjalan kaki sebelum tiba di bukit, pilihan berkunjung dipagi hari adalah pilihan terbaik. Perjalanan dari Kota Bajawa menuju pintu masuknya tak begitu jauh hanya sekitar 30 menit, yang berdekatan dengan gereja Katolik Maria Ratu Semesta. Sesudah memarkir kendaraan, perjalanan dilanjutkan dengan berjalan kaki menanjak, dan landai secara bergantian melewati area pepohonan dan hutan bambu sekitar 25-30 menit. Selama perjalanan mata anda akan dimanjakan dengan view gunung, perbukitan dan lembah yang begitu mempesona.Di jalur pendakian ke Bukit Watunariwo telah dibangun pagar pembatas yang terbuat rantai. Pembatas ini sangat berguna untuk membantu wisatawan mendaki dan tidak mudah terpleset.</big></p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', 4, '2024-06-02 19:52:03', '2024-07-23 01:19:16'),
(16, '3206268564.jpg', 'https://www.youtube.com/embed/8TXDXGFrDf8', 'Puncak Bukit Wolobobo', '<p>Bukit Wolobobo adalah salah satu destinasi wisata baru di Kabupaten Ngada Bajawa-Flores-ntt. bukit wolobobo menyimpan banyak misteri dan keunikan. sebelum anda masuk kawasan bukit wolobobo, anda akan menemukan susunan batu tempat pemujaan dan memberi makan leluhur. bukit wolobobo terletak tidak jauh dari kota bajawa, sekitar 7-8 km, anda dapat menggunakan kendaraan roda dua atau empat. bukit wolobobo menampilkan pemandangan yang eksotik, alamiah dan mempesona. pemandangan senja atau matahari terbenam di balik gunung Inerie, gunung tertinggi di Pulau flores, menjadi pemandangan yang luar biasa mengagumkan. selain itu juga, bukit wolobobo menjadi ikon negeri dan surga di atas awan. awan putih mengelilingi bukit wolobobo dan lembah yang berkabut berlatar belakang gunung inerie sangat menakjubkan.</p>\r\n', 'admin', 1, '2024-06-02 20:34:17', '2024-07-17 22:38:42'),
(17, '993016177.jpeg', 'https://www.youtube.com/embed/pXH0pxdN0Ew', 'PESTA ADAT REBA KAMPUNG BOBOU 10-02-2022, BAJAWA KAB.NGADA NTT', '', 'admin', 1, '2024-06-02 22:07:51', '2024-06-02 22:11:15'),
(19, '1797939205.jpg', 'https://www.youtube.com/embed/D7X1V9l5fio', 'MAKANAN KHAS BAJAWA||NASI KACANG HITAM', '<p>Nasi kacang hitam merupakan campuran nasi yang dimasak dengan kacang merah. Nasi kacang hitam merupakan makanan yang sering dikonsumsi oleh masyarakat Bajawa.</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<ol>\r\n	<li>Beras</li>\r\n	<li>Kacang hitam\r\n	<p>&nbsp;</p>\r\n	</li>\r\n</ol>\r\n', 'admin', 2, '2024-06-03 01:17:53', '2024-07-17 18:26:10'),
(20, '3582948022.jpg', 'https://www.youtube.com/embed/Hn97sOmqt8Y', 'RW DAGING ANJING||KHAS BAJAWA', '<p>.</p>\r\n\r\n<p>Rw daging anjjing atau dalam bahasa Bajawa biasa disebut dengan nama&nbsp;<em>hui lako&nbsp;</em>merupakan makanan yang sangat digemari oleh masyarakat Bajawa. Jika ingin mencoba rw daging anjing, kalian bisa datang langsung ke Gubuk Derita Welu Rakateda I. Adapun bahan-bahan dalam membuat rw daging anjing sebagai berikut :</p>\r\n\r\n<ol>\r\n	<li>Daging anjing&nbsp;</li>\r\n	<li>kelapa parut (yang sudah disangrai)</li>\r\n	<li>Darah anjing</li>\r\n	<li>Bawang merah&nbsp;</li>\r\n	<li>Bawang putih</li>\r\n	<li>Cabe</li>\r\n	<li>Merica</li>\r\n	<li>Pala</li>\r\n	<li>Ketumbar</li>\r\n	<li>Kunyit</li>\r\n	<li>Jahe</li>\r\n	<li>Daun salam</li>\r\n	<li>Batang sereh</li>\r\n	<li>Daun jeruk.\r\n	<p>&nbsp;</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', 3, '2024-06-03 03:29:55', '2024-07-17 18:25:28'),
(21, '778705521.jpg', 'https://www.youtube.com/embed/CWSamCK6tFE', 'Urap daun singkong', '<ol>\r\n	<li>1 ikat daun singkong</li>\r\n	<li>secukupnya kelapa parut&nbsp;(pilih kelapa yang muda ya)</li>\r\n	<li>1 ikat daun singkonBumbu halus</li>\r\n</ol>\r\n\r\n<p>Bumbu Halus :</p>\r\n\r\n<ol>\r\n	<li>3 buah bawang merah</li>\r\n	<li>2 siung bawang putih</li>\r\n	<li>1 buah cabe merah</li>\r\n	<li>3 buah cabe rawit (sesuai selera)</li>\r\n	<li>2 lembar daun jeruk purut</li>\r\n</ol>\r\n\r\n<p>Cara membuat :</p>\r\n\r\n<ol>\r\n	<li>Rebus daun singkong hingga matang dan empuk, tiriskan dan iris tipis.</li>\r\n	<li>Haluskan bumbu, lalu campur dengan kelapa parut</li>\r\n	<li>Sangrai hingga matang, berbau harum dan sedikit kering</li>\r\n	<li>campurkan sayur dan bumbu</li>\r\n</ol>\r\n', 'admin', 0, '2024-07-17 18:15:24', '2024-07-17 18:17:22'),
(22, '1278204660.jpg', 'https://www.youtube.com/embed/SONXgTDXFME', 'Ra\\&#039;a Rete Ayam (Manu)', '<p>Masakan ini merupakan jenis masakan daging yang dibumbui bersama parutan kelapa yang dicampur dengan darah ayam (manu). Bumbu-bumbunya sederhana dan cara memasaknya pun tidak rumit. Ra&#39;a rete biasa disajikan pada acara adat reba. Jika ingin mencoba ra&#39;a rete, kalian bisa datang langsung ke Bajawa pada bulan januari, februari dan desember. Karena pada bulan tersebut dilaksanakan acara adat reba.<br />\r\n&nbsp;</p>\r\n', 'admin', 0, '2024-07-23 01:35:19', '2024-07-23 01:35:19'),
(23, '4230551124.jpg', 'https://www.youtube.com/embed/mc_7nQlm7hw', 'Acara Pedhe Po\\&#039;o part 2', '<p>po&rsquo;o sendiri yaitu beras yang dimasak dalam dalam batang bambu, yang dicampur dengan beberapa bumbu dan minyak kelapa. po,o ini tidak dijual oleh masyarakat lokal dan hanya dijadikan makanan khas daerah Bajawa. Acara pedhe po&rsquo;o dilakukan 1 tahun sekali yaitu pada&nbsp;bulan oktober sesudah panen.Jika ingin menyaksikan acara pedhe po&#39;o seacara langsung pengunjung bisa datang ke Bajawa tepatnya di desa were II.&nbsp;</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp; &nbsp;Beras<br />\r\n&nbsp;&nbsp; &nbsp;Minyak kelapa<br />\r\n&nbsp;&nbsp; &nbsp;Bawang putih ( 3 siung)<br />\r\n&nbsp;&nbsp; &nbsp;Bawang merah ( 4 siung)<br />\r\n&nbsp;&nbsp; &nbsp;Jahe 2 ruas<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;</p>\r\n', 'admin', 0, '2024-07-23 01:37:47', '2024-07-23 01:37:47'),
(24, '1952159524.jpg', 'https://www.youtube.com/embed/w0GY0B1kVlM', 'Uta tabha#Bajawa', '<p>Hingga hari ini, Orang Ngada, Flores, Nusa Tenggara Timur, masih mengonsumsi jagung. Selain direbus atau dibakar, jagung juga digoreng, dimasak bersama bahan makanan yang lain, atau diolah sedemikian rupa untuk aneka kebutuhan. Salah satu pangan tradisional berbahan dasar jagung yang masih terus diproduksi sampai sekarang di Ngada, ialah UTA TABHA.&nbsp;<em>Uta Tabha</em>&nbsp;memiliki keunikan yang luar biasa. Menu ini terdiri dari beberapa bahan lokal yang dicampur menjadi satu ketika dimasak. Hingga hari ini, Orang Ngada Flores Nusa Tenggara Timur, masih mengonsumsi jagung. Selain direbus atau dibakar, jagung juga digoreng, dimasak bersama bahan makanan yang lain, atau diolah sedemikian rupa untuk aneka kebutuhan. Salah satu pangan tradisional berbahan dasar jagung yang masih terus diproduksi sampai sekarang, di Ngada, ialah UTA TABHA. Bahan dasarnya jagung&nbsp;<em>(hae)</em>&nbsp;atau beras jagung<em>&nbsp;(dhea hae)</em>, kacang merah atau brenebon&nbsp;<em>(boji),</em>&nbsp;labu kuning&nbsp;<em>(besi)</em>, ubi talas&nbsp;<em>(rose)</em>,&nbsp;daun pepaya muda&nbsp;<em>(uta padu),</em>&nbsp;kelapa dan garam.<em>&nbsp;Boji&nbsp;</em>atau brenebon bisa diganti dengan kacang polong&nbsp;<em>(lebha)&nbsp;</em>dan santan kelapa. Jika ingin mencoba&nbsp;<em>uta tabha,&nbsp;</em>kalian&nbsp;bisa datang langsung ke rumah-rumah masyarakat di Bajawa. Karena&nbsp;<em>uta tabha</em>&nbsp;tidak dijual.</p>\r\n\r\n<p>https://www.youtube.com/embed/w0GY0B1kVlM</p>\r\n', 'admin', 0, '2024-07-23 01:39:37', '2024-07-25 16:50:35'),
(25, '1036758783.jpg', 'https://www.youtube.com/embed/p0Go5SCr60U', 'Pedhe Po\\&#039;o', '<p>po&rsquo;o sendiri yaitu beras yang dimasak dalam dalam batang bambu, yang dicampur dengan beberapa bumbu dan minyak kelapa. po,o ini tidak dijual oleh masyarakat lokal dan hanya dijadikan makanan khas daerah Bajawa. Acara pedhe po&rsquo;o dilakukan 1 tahun sekali yaitu pada&nbsp;bulan oktober sesudah panen.Jika ingin menyaksikan acara pedhe po&#39;o seacara langsung pengunjung bisa datang ke Bajawa tepatnya di desa were II.&nbsp;po&rsquo;o sendiri yaitu beras yang dimasak dalam dalam batang bambu, yang dicampur dengan beberapa bumbu dan minyak kelapa. po,o ini tidak dijual oleh masyarakat lokal dan hanya dijadikan makanan khas daerah Bajawa. Acara pedhe po&rsquo;o dilakukan 1 tahun sekali yaitu pada&nbsp;bulan oktober sesudah panen.Jika ingin menyaksikan acara pedhe po&#39;o seacara langsung pengunjung bisa datang ke Bajawa tepatnya di desa were II.&nbsp;po&rsquo;o sendiri yaitu beras yang dimasak dalam dalam batang bambu, yang dicampur dengan beberapa bumbu dan minyak kelapa. po,o ini tidak dijual oleh masyarakat lokal dan hanya dijadikan makanan khas daerah Bajawa. Acara pedhe po&rsquo;o dilakukan 1 tahun sekali yaitu pada&nbsp;bulan oktober sesudah panen.Jika ingin menyaksikan acara pedhe po&#39;o seacara langsung pengunjung bisa datang ke Bajawa tepatnya di desa were II.&nbsp;po&rsquo;o sendiri yaitu beras yang dimasak dalam dalam batang bambu, yang dicampur dengan beberapa bumbu dan minyak kelapa. po,o ini tidak dijual oleh masyarakat lokal dan hanya dijadikan makanan khas daerah Bajawa. Acara pedhe po&rsquo;o dilakukan 1 tahun sekali yaitu pada&nbsp;bulan oktober sesudah panen.Jika ingin menyaksikan acara pedhe po&#39;o seacara langsung pengunjung bisa datang ke Bajawa tepatnya di desa were II.&nbsp;</p>\r\n', 'admin', 0, '2024-07-23 01:45:51', '2024-07-23 01:45:51'),
(26, '2933166578.jpg', 'https://www.youtube.com/embed/HPh11bjkEus', 'Pembukaan Reba', '<p>Upacara&nbsp;pembukaan&nbsp;dilakukan di rumah adat masing-masing yang dikenal dengan&nbsp;upacara k<em>obe dheke. Kobe dheke </em>adalah&nbsp;&nbsp;penyucian simbol-simbol pertanian sebagai lambang penyucian hati. Upacara&nbsp;pembukaan&nbsp;dilakukan di rumah adat masing-masing.</p>\r\n', 'admin', 0, '2024-07-23 01:49:47', '2024-07-23 01:52:24'),
(27, '3856522869.jpg', 'https://www.youtube.com/embed/iNxBeh4a3cY', 'Bura Su\\&#039;a||Acara Adat Reba', '<p>Bura su&#39;a merupakan bagian dari acara adat reba yang diamana bura su&#39;a ini bertujuan untuk memanggil leluhur untuk duduk makan bersama dalam acara adat reba.<br />\r\n&nbsp;</p>\r\n', 'admin', 0, '2024-07-23 01:53:46', '2024-07-23 01:54:49'),
(28, '2748859422.jpg', 'https://www.youtube.com/embed/uiiKpEfqJoY', 'Pesona Air Terjun Ogi di Ngada Flores NTT', '<p>Air Terjun Ogi Bajawa merupakan salah satu objek wisata alam yang terletak di daerah Bajawa Kabupaten Ngada, Flores Nusa Tenggara Timur, Indonesia. Air terjun Ogi ini terkenal karena keindahan alamnya yang masih alami terjaga dan menakjubkan. Air Terjun Ogi memiliki ketinggian kurang lebih sekitar 35 meter dan dikelilingi oleh hutan tropis yang hijau.</p>\r\n\r\n<p>Untuk mencapai Air Terjun Ogi, para wisatawan perlu melakukan perjalanan sekitar 30 kilometer dari pusat kota Bajawa, atau kalau di tempuh dari kota Labuan Bajo perjalanan kurang lebih sekitar 7 jam. Rute perjalanan biasanya dengan jalur darat dengan kendaraan pribadi atau sewa, karena transportasi umum belum tersedia setiap waktu untuk langsung menuju ke air terjun Ogi ini. pengunjung bisa menggunakan kendaraan roda dua untuk masuk ke kawasan air terjun ogi.<br />\r\n&nbsp;</p>\r\n', 'admin', 0, '2024-07-23 01:57:37', '2024-07-25 17:11:19'),
(29, '2007465073.jpg', 'https://www.youtube.com/embed/NHtc1NQMkz4', 'Watu Nariwowo( Bukit Avatar )', '<p>Bukit Watunariwowo ini terletak di Desa Beja, Kecamatan Langa, Kabupaten Ngada, Pulau Flores, Nusa Tenggara Timur. Topografinya menantang, bukit ini salah satu tempat wisata alam andalan di Bajawa.</p>\r\n\r\n<p>Bukit avatar Bajawa&nbsp;ini sangat terjal hingga ke puncaknya. Vegetasi tumbuhan di puncik bukit ini sebagian besar tanaman savana seperti rumput. Beberapa pohon tumbuh tak jauh dari puncak bukit.&nbsp;Berhubung harus berjalan kaki sebelum tiba di bukit, pilihan berkunjung dipagi hari adalah pilihan terbaik. Perjalanan dari Kota Bajawa menuju pintu masuknya tak begitu jauh hanya sekitar 30 menit, yang berdekatan dengan gereja Katolik Maria Ratu Semesta dengan menggunakan kendaraan roda dua maupun roda empat.</p>\r\n', 'admin', 0, '2024-07-23 01:59:17', '2024-07-25 17:07:15'),
(30, '1576091944.jpg', 'https://www.youtube.com/embed/WqPCF1PhAXo', 'Ra\\&#039;a Rete Manu (Ayam)', '<p>Masakan ini merupakan jenis masakan daging yang dibumbui bersama parutan kelapa yang dicampur dengan darah ayam&nbsp;<em>(manu)</em>. Bumbu-bumbunya sederhana dan cara memasaknya pun tidak rumit.&nbsp;<em>Ra&#39;a rete</em>&nbsp;biasa disajikan pada acara adat&nbsp;<em>reba</em>. Jika ingin mencoba&nbsp;<em>ra&#39;a rete,</em>&nbsp;kalian bisa datang langsung ke Bajawa pada bulan januari, februari dan desember. Karena pada bulan tersebut dilaksanakan acara adat&nbsp;<em>reba.</em></p>\r\n', 'admin', 0, '2024-07-23 02:02:26', '2024-07-23 02:02:26'),
(31, '2553248616.jpg', 'https://www.youtube.com/embed/7712gXq_ts4', 'Tumis Pucuk Labu Siam', '<p>Pucuk Labu Siam dalam bahasa Bajawa biasa disebut dengan uta timu. Selain buahnya dijadikan sayur, daunnya pun kaya akan manfaat bagi kesehatan. Daun labu siam mengandung : vitamin A, vitamin C, kalsium, kaya serat dan rendah kalori. Labu siam banyak ditanam ditanam di depan &nbsp;rumah warga. Jadi, jika ingin mencoba pucuk labu siam, kalian bisa datang langsung ke Bajawa karena pucuk labu siam merupakan makan sehari-hari masyarakat Bajawa.</p>\r\n\r\n<p>Baha-bahan:</p>\r\n\r\n<p>Pucuk labu siam<br />\r\nBumbu Tumis:</p>\r\n\r\n<p>5 siung bawang merah<br />\r\n3 siung bawah putih<br />\r\n3 buah cabe (sesuai selera)</p>\r\n', 'admin', 0, '2024-07-23 02:04:46', '2024-07-23 02:04:46'),
(32, '2520569439.jpg', 'https://www.youtube.com/embed/wrZ6eKIPSjM', 'Ikan Lawar Khas NTT Flores Bajawa Aimere', '', 'admin', 0, '2024-07-23 02:06:05', '2024-07-23 02:06:05'),
(33, '1797939205.jpg', 'https://www.youtube.com/embed/D7X1V9l5fio', 'MAKANAN KHAS BAJAWA||NASI KACANG HITAM', '<p>Nasi kacang hitam merupakan campuran nasi yang dimasak dengan kacang merah. Nasi kacang hitam merupakan makanan yang sering dikonsumsi oleh masyarakat Bajawa.</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<p>Beras<br />\r\nKacang hitam</p>\r\n', 'admin', 0, '2024-07-23 02:07:57', '2024-07-23 02:07:57'),
(35, '3468868053.jpg', 'https://www.youtube.com/embed/bmXB4zynyJg', 'Tua Bhara #bajawa', '<p>sebuah minuman tradisional yang juga selalu menjadi sorotan, yaitu Moke putih atau Tua Bhara. Moke Putih merupakan minuman tradisional berbahan dasar buah tumbuhan nira yang memang banyak ditemukan di daratan Flores. Bagi masyarakat Ngada, Moke putih merupakan simbol dari ramah tamah dan kerukunan, serta mengkonsumsi moke sudah biasa dilakukan oleh sebagian besar masyarakat di Kabupaten Ngada.&nbsp;Moke putih memiliki potensi yang cukup besar karena memiliki unsur sejarah dan nilai budaya yang kuat. Keterikatannya yang kuat pada setiap upacara adat Kabupaten Ngada menjadikan Moke putih tidak hanya sebuah minuman tradisional biasa, namun juga menjadi bentuk dari keramah tamahan dan kekeluargaan dari masyarakat Kabupaten Ngada.</p>\r\n', 'admin', 1, '2024-07-23 02:20:29', '2024-07-25 16:31:33'),
(36, '3326821411.jpg', 'https://www.youtube.com/embed/q8ypV-QBoGQ', 'Negeri di atas awan#wolobobo', '<p>Bukit Wolobobo adalah salah satu destinasi wisata baru di Kabupaten Ngada Bajawa-Flores-ntt. bukit wolobobo menyimpan banyak misteri dan keunikan. sebelum anda masuk kawasan bukit wolobobo, anda akan menemukan susunan batu tempat pemujaan dan memberi makan leluhur. bukit wolobobo terletak tidak jauh dari kota bajawa, sekitar 7-8 km, anda dapat menggunakan kendaraan roda dua atau empat. bukit wolobobo menampilkan pemandangan yang eksotik, alamiah dan mempesona. pemandangan senja atau matahari terbenam di balik gunung Inerie, gunung tertinggi di Pulau flores, menjadi pemandangan yang luar biasa mengagumkan. selain itu juga, bukit wolobobo menjadi ikon negeri dan surga di atas awan. awan putih mengelilingi bukit wolobobo dan lembah yang berkabut berlatar belakang gunung inerie sangat menakjubkan.&nbsp;<br />\r\n&nbsp;</p>\r\n', 'admin', 1, '2024-07-23 02:38:27', '2024-08-20 13:28:18'),
(37, '2520569439.jpg', 'https://www.youtube.com/embed/6a6aulinUPk', 'Ikan lawar khas Bajawa update', '<p>Lawar ikan tradisional Bajawa dengan Bumbu yg sangat sederhana namun menghasilkan rasa yg luar biasa.</p>\r\n\r\n<ol>\r\n	<li>isi ikan 500g</li>\r\n	<li>bawang merah 5 Btr</li>\r\n	<li>bawang putih 5 Btr</li>\r\n	<li>cabe rawit</li>\r\n	<li>&nbsp;ajino moto</li>\r\n	<li>&nbsp;garam</li>\r\n	<li>5 lembar daun jeruk iris halus</li>\r\n</ol>\r\n', 'admin', 0, '2024-07-25 17:46:13', '2025-02-19 20:22:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `jenis_kebudayaan`
--
ALTER TABLE `jenis_kebudayaan`
  ADD PRIMARY KEY (`id_jenis_kebudayaan`);

--
-- Indeks untuk tabel `kebudayaan`
--
ALTER TABLE `kebudayaan`
  ADD PRIMARY KEY (`id_kebudayaan`),
  ADD KEY `id_jenis_kebudayaan` (`id_jenis_kebudayaan`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `tempat_kebudayaan`
--
ALTER TABLE `tempat_kebudayaan`
  ADD PRIMARY KEY (`id_tempat_kebudayaan`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD PRIMARY KEY (`id_access_sub_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_sub_menu` (`id_sub_menu`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `jenis_kebudayaan`
--
ALTER TABLE `jenis_kebudayaan`
  MODIFY `id_jenis_kebudayaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kebudayaan`
--
ALTER TABLE `kebudayaan`
  MODIFY `id_kebudayaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tempat_kebudayaan`
--
ALTER TABLE `tempat_kebudayaan`
  MODIFY `id_tempat_kebudayaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kebudayaan`
--
ALTER TABLE `kebudayaan`
  ADD CONSTRAINT `kebudayaan_ibfk_1` FOREIGN KEY (`id_jenis_kebudayaan`) REFERENCES `jenis_kebudayaan` (`id_jenis_kebudayaan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD CONSTRAINT `user_access_sub_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_sub_menu_ibfk_2` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
