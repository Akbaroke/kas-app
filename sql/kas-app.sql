-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2022 pada 13.37
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kas-app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(300) NOT NULL DEFAULT 'foto_default.jpg',
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'aktif',
  `no_wa` varchar(100) NOT NULL,
  `banyak_tunggakan` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `time` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `nim`, `password`, `nama`, `foto`, `role`, `status`, `no_wa`, `banyak_tunggakan`, `total_tagihan`, `time`) VALUES
(1, '312110052', '123', 'SAVARIANA RIKA ANUGRAHAINI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRuIryMpD4flKs0vjt2tlNMDJbgs9jl9oVK%2BeR51cs76QEk66gWc5Y8PT4MYRZRiFloIOwSoa8o0ofVNYsHz1xDcvha0xmTQXOh8QTAos%2F%2Fpz5UtMC8jZbKg%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(2, '312110081', '123', 'KEVIN SUYADI RITONGA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRqcy%2BLjQ39f4Qcp57dpuQ2jmMh71hIGAQH7qnQSbp1D8dPraghFhTJmziMle8tHTjGeTskdclct8KevIjrvTUyqNNHkCqvWZwh7xuNBj8zqoq%2F3ugsmcieg%3D%3D', 'user', 'aktif', '', 0, 0, 1664872654),
(3, '312110123', '123', 'RANGGA ADITIYA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRhpFtC6r2UUM4ZdNpIxScn8NhxkMsW6tlTcexZPrGfF47q0DDayoosdLqlYv1rptkBmpaW9Y81dKAkOUjB0cWO4kpv%2FYyiPa6mkVltfH2gMVXdzX6N3pstw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(4, '312110125', '123', 'ALVINA DAMAYANTI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR9VcxPEdEK0cVRT1VNlpdOB3g1IjSWYFmj7bAcfUcMEYmio6UtrMTVREd72GhClQOq2jYqv%2BsqCinc1stuGoPwRhnq7AFqPFJOGpN5mnm5KpW4CsKtD9nsQ%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(5, '312110137', '123', 'INDI ALYA PUTRI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRB86Kn04MUG030yvwbZmN9F4M49tHR7%2FjFxXskQVcY3SrgeEjbSxkORHEtJiIKOO2qz6HrQQVYvjC%2Fk08dzrg4KD44hRCTijbceevgVhD%2F1ujp5GuhUlrqw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(6, '312110149', '123', 'ARYA SYAH RAMADHAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRkwFEepIVezJXQptkeZJYcuD%2Bm%2BhXqDWHXGbdTUqirpDM%2F2A8xlnxxY2lq5jN5puzSdKFrU9doBOfBgXCEs0W5%2Bfnus4aW92x9NjvO%2F3jFYYtDWGLTC%2B7QA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(7, '312110151', '123', 'RIZAL PRINGGANDANI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRebgdZaAzEvaglB6FMBrPJa8C7OaWFvbFMvpfGwaQZ4k4O0pppbQo6w5S%2FLZhIPQKaL1tf2FxrxxLCf%2B7%2BhYiQLl0gg1al3rsSd%2Bp0M1VNCLEJ1uKqDTf5A%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(8, '312110163', '123', 'LUCKY ALAMSYAH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRu4fcTg2X5navcum3hPgOwbGgh5%2BfQY3Io0BvM%2FwUAGwhNSjZEX6oBOG5PeZ9N8YwmzsKEWYIXllEoc4uGnY0CvVfk6hALujmDdOYvsZLYW43V98Ap8umDw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(9, '312110164', '123', 'RIFKY ABDILLAH HASAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRZ8Y53a8Kpkj4lWpQHGQKZT9wc6%2BLeSAy48gsqyDWiaqxdtoFpcUtzj7%2FyZH48eX3hfXrxCqJHQbwcQCmDjhInxGfsoJdonAM%2BqPl2n63uPrKEJzz0D7jEg%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(10, '312110169', '123', 'RIDHO PIKRIYANSYAH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRhBWJJ%2BHv3KrS77lrE4jK4F7eHm7Idi5%2BzmCDlfFUs9CsclwtEyFDuxiicv9KmHg%2FR%2B0yZMbKI%2F8P99WmjUAN8DRQOY0zo7zkPFTMzulwsrNvHwjo%2FVYs3Q%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(11, '312110194', '123', 'MUHAMMAD FAJAR SETIYANTO', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRkryrfQjRpstH6N2TNq4HQTdqao2ae3LWxfuVHNxf83niGnRWaf7tYbwYy0nefAoVJWdfURdoPuOsV%2BKNQyJmyMG3XbMHKFP6ZOrQznzaboY5OqUmEZ7G1A%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(12, '312110245', '123', 'RAIHAN HERFIANSYAH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRUPaLQCf57a0tcPh2NoxCXZCXPfMCN4lNV36lcHouOK7Q5rMLD1ntRmfdLYKThGz4Wzvs7%2B0L3HR3Yio%2BOp8eKIuMphxD8Jj0fagzFDRqtHsarTxejpaogw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(13, '312110262', '123', 'ABDUL AZIZ FIRDAUS', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRUXIknFQkqxcgbVLyPHkDpoakJ6YKvSZ3A%2FMJDjURLubQMg1ar42Hc06cKvmH5J21dck9LQlUAyMp0hT9r%2B%2ByyGIVPKQTWuvbOv4dw%2FdYU37X%2BqwzhfuSag%3D%3D', 'user', 'aktif', '', 0, 0, 1664948941),
(14, '312110269', '123', 'FAUZAN SYAUQI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR03IHVzpTeIwKiJyD3XkqA7s%2FtZy1lOnoIn0cqzMwn2agdoKWFpMRQjPP1358s5MZzqEVvXydCevShUtq%2FTMUAaL8munvnPJy8Al7KP%2Bi3U%2B%2BzX9MkSWJfA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(15, '312110274', '123', 'ALVIAN SAPUTRA PRATAMA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRJzdB7ViC9cBq3Mc7gtPk%2FJN7e0Ce9yeNeruglns8rOurDXpEwck8Al0hpgU%2BSUFsGUl2fGPO7jd2Bdw6Wz37GtLJXQEZUhN8ONy1nT4zvWHNBRVK0ztjIw%3D%3D', 'user', 'aktif', '', 0, 0, 1664539708),
(16, '312110292', '123', 'MUHAMMAD FARID NUR FAQIH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR6mGTB7hIRL0xztt2eYqQWCeoapM9hb8h0gBSwOt0kRevDdUY59hvYa5POdXPBMvtyYhzL2tM2Vdp7udyvgPF1NoAfkzZh8qCJNm6m5xssY3VoPoU5VQCZw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(17, '312110294', '123', 'ZAINI MUHTAROM', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRDIY%2BakazjKov1qZEEvGppoZQJ9bj3DDzrtquAiIcnoR65R3XzmLXiLVMIbbAEo6xhy1C3RmjGaAvXBXqnouxigelBoG7pAw6CdSYCdR2%2FX4fXC4P2W8AoQ%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(18, '312110319', '123', 'SARA KHUSNUL MUMTAZAH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRcgvg%2BhCoYj05%2BsZYarXD2%2BQkI8qfeVk5sc412aLydh5%2B7PpViROFed1WExuN%2Bx5xZzg2Qm98GAE3Q7e22cOnNHVoUM%2BRqs9Nb2UrDlN8apxn0kMkEdp%2B7w%3D%3D', 'user', 'aktif', '', 0, 0, 1664538942),
(19, '312110322', '123', 'CHOKY ANDRIANO', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRQtD7t1kqwxIB09LFHn7FLmooadTQ%2FwoZyMvrVvyAqiUqIoUuDeEYCrEY45zprPdTVt6SSNPPpBHdD2JFEoUEaHGCZYsAOr2TeNs2EEMfqLr9bOHroZ5hLQ%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(20, '312110401', '123', 'ALIF DWI PUTRA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRiA2yanZTME5s%2BmWdv7YByPdlcnys8O%2Buh3CVD48yyIg3iJQOzISXKLY1LzcviUePmGEoJQ7aXTaxRV%2F2HqlDx80uthQtgXN80MGnaM7N0Fj%2BxLNFC4tdfw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(21, '312110420', '123', 'VIYAN QOMARUDIN NOOR', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRoGNESYTOXf%2F%2Bus8gfe7vU6e2HHq82Ox6j%2F8jwaMLZuBcorYbIPdDBt3ILduTCbhmYeSV%2FiNibQ7pYXoooS0sQRa7fdBtCYB5GGIKeK%2FSSe5sEWpLwqK%2BaA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(22, '312110425', '123', 'LAELA NUR ROHMAH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRTW6M%2FmjDwCchLjJSBSe6EhNsig0HVmmTK8OSJCEno9kKBjK%2F48PwCQnHHch5CMJ%2BoLlvy3Bm%2FStaM4KYdEfAQy%2Fu%2F2tusCuxppvSXAEE2E8aY5jkglWOIQ%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(23, '312110427', '123', 'DENIS ALVIANSYAH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRGt5YGwWiriqpnet%2FZoIPRE0IE%2F0b2cPDWOK23M3EKqqbU4qF7NIbjm6D%2F7qRe37PLLwTtRAwtL%2FPYGnMKoCG79Y9QAHS0VX9b8B9Pu%2Fr1ptlb13k0Y5CLQ%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(24, '312110451', '123', 'NURUL NAA SABILLA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlREHqEFak%2BYWd%2B6S8k5arQsaxc%2Fgz%2B2GxGYskgTD8SwiiPeTVxs5%2Fs4sybVET3oQjc4L%2FOv4VBGuAj6dIn6NFJqKZZ5UlgX58k6TCpxN6EfSZDXGEBj8BGLA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(25, '312110459', '123', 'FARIS MAULANA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRK4UMdx00ZJCYvfRgGy6QLg4cSm3LfsOteubL1FCj1nJHJaJujs3f68JoOUsnuS2aABLK9%2FQ72%2FAm7%2FlJRzjS4oEpA%2BO91yrkr6lvD1K7K99wvdu7x8lM2g%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(26, '312110460', '123', 'FTRIVAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRJM%2FadArf4zgREcEnyHl2Nh0ujZ363SIsDUfEaF01B%2BOqryziLvWhJW6ez6TVlvigssKh4TSaY8H5WXzsCv13GkMbvhBXcOAXz2cxlvr05ZxOEs%2FH8pt1zA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(27, '312110465', '123', 'IRFAN FADLURRAHMAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR%2FYrt5jA7FLuCP1NtlTo%2BTTKNrCJBAOebj7lne56JYF7t%2FVxpNNjpH%2FP2lPP9e3mrto3ituKITd9xnoQ5vDYJ5bNlV1qk7Zf3Tb2PP981PRAYqooJeAAYMQ%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(28, '312110467', '123', 'SIDIK RIFFANI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRSxqtwKNOt7Wm1aMFMIwEJpo8L3W7vval8TsKVJgzEh4STtJbfZmUfix%2FPRwg1Pk1Dsi%2F0Y4pz%2FlLTonufbJrYC6%2BCqav%2Fne80pLb%2BSPVbhWJsWSOWfDsTLsraXkBRko%2B', 'user', 'aktif', '', 0, 0, 0),
(29, '312110481', '123', 'WILDAN MUHAMMAD FAUZAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRgDJW4diISr7tTgC%2FQc5EmP%2BcA9byimgjiw8zGWbzsEcpCJ%2F0a6%2F2MR14tD13g46%2FGmn62xzIE41IWOm3Y160K7%2Fad1lvhLh1KinVI6lPoxh6nOFek2gDPw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(30, '312110483', '$2y$10$jvNBAdRmHiPZwBaHW8mmMuSVrWYgZCMcSg4IC8x9VmCUXmP5H6AT6', 'Muhammad Akbar', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRK5lvTAfgQnA4bpEY1bIS0Ec7pPabRc7%2BfDfelLkde9Vw%2F0Cwfix57Og8StIZbVOFnB8GN1zVirg5LdXBWLvd4pHxmFUpHaDWdmtZEiOk3MzT9hbflO601g%3D%3D', 'admin', 'aktif', '+6281310725348', 0, 0, 1664969852),
(31, '312110517', '123', 'RIMA PUJI LESTARI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4E9tp9QNwodeBg5mchgu1zjE8a5YjdAuMV3HgDSiVqXSCF6PYtMUU9ClePMeqI%2FEBbKPpfpwZwCsdqnnsG%2FrSbrYItVxLK9wM4e7XV4cGYtCCKKBmwKwjaA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(32, '312110535', '123', 'EKKI MANDALA AJI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRoyv5%2FmA1t6Svx1ADQ%2Bbdwv7af7RkOJBBf3ELT7xy3l6Y69NyPNITd0BYy03TeSw1a5iEXA7UyxOE4K2ixUO3y0Wp9fIYvhXlFkCm7sHKong19re58VU77g%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(33, '312110538', '123', 'FADL RAMADAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRvPW%2FRK37hl7B6HVFVV9s58n2iCjY0MqUI8SM%2BUOCOy%2B9oUF5dD5sHEB7DfLlk9qXyZn3NAgomruCLCD0vAEVRc2l3IN9phdCoo78GL5sr2hY4%2BK5glD%2F7Q%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(34, '312110555', '123', 'AHMAD SHOPWAN ANSHORY', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRs95f79u%2BBdGRt2uMBdFzrJugI7OgWa3Ih2yzk%2FE34oD%2Fy3JTIJ7FRr3qBCNXpYctYtx0Wq8Sa02GG04Y5ZbVNS1CfR%2FZ%2B2ZlV6yK5oUn0sEFDyazq%2BhXhA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(35, '312110581', '123', 'AHMAD DARMAWAN', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR3M9LIv%2FVdc%2BixBczN2eWPnmIq0ROpjkfUkZpzTZWxMT4%2BErwrGBpVfTJXl%2BhGM42Fiuq2lUUe%2BXzXJvYHxz4BjQPOCzoTuX9YLTR80n1ve7EfRdv40hdUw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(36, '312110603', '123', 'ROVANSYAH MULIA PRATAMA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRZobeNZzOju6CmEY3%2BdAlW0HpoLMZoOvJv9E29BaxPCvVLYWfxEsB8Zn6m9EqrfnogZBqk%2BjErLcwLbrSas%2Fdi7aEUITwgfMfr3G81vDhUNPgRr74qRK2MA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(37, '312110610', '123', 'MAFTUHIN AMANULLOH', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRM9omF3fdGAqGQgxzvT13KgzBQJXeQGRSMhPVENoBZqkyAgUJZ%2FNKLrVtJZkzapFPEkJP9GsdnTsHdGQNVNt1P5Z3G3N6TxwNlzDuIRcmIWdy9GA74y4pOA%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(38, '312110618', '123', 'IRGI JAELANI', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRox1pSF%2FFsh3qkSzbYr5WbNIvtq1runFVXPg4YapdJotiEmoJrKf5kqXpUmlz7jybZUGGE9rNezmNeUJTxyvFlhxB%2FcdllLnV5JQ8wH94FjcWKwiJPcukYA%3D%3D', 'user', 'aktif', '', 0, 0, 1664895187),
(39, '312110619', '123', 'RIVANTAMA', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRV%2Bfvs6MN%2FnjYfgMz6PPF3Yy5QtXZSUxMFsOYgw830EXTdanMCrwsFqKub5KyFrI3qRrgAoj04sgiqeDdG%2FuMxbwjfgpjP7W60Lcm55Y7pINyXnmi2GNpDw%3D%3D', 'user', 'aktif', '', 0, 0, 0),
(40, '312110621', '123', 'SYAFUL ICHSAN ASHAR', 'https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRyC3GOgl%2Bu%2B6XOGQojNRAvMbe2CoVXTR%2BRmeNAgWzlnsHfF9SRtEqS%2F8Ia2qAhUGoO3tkdew0ZmmDrFr%2Fi%2Fzn%2BejztWgpMndaaJX4MOLknaClcKNSyDXdcg%3D%3D', 'user', 'aktif', '', 0, 0, 1664871504);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tagihan`
--

CREATE TABLE `jadwal_tagihan` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `nominal` int(11) NOT NULL,
  `belum_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal_tagihan`
--

INSERT INTO `jadwal_tagihan` (`id`, `tanggal`, `nominal`, `belum_bayar`) VALUES
(1, '26/09/2022', 5000, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_tunggakan`
--

CREATE TABLE `list_tunggakan` (
  `id` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal_tagihan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pembayaran`
--

CREATE TABLE `riwayat_pembayaran` (
  `id` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `id_tunggakan` int(11) NOT NULL,
  `tgl_tagihan` varchar(100) NOT NULL,
  `time` varchar(300) NOT NULL,
  `nominal` int(100) NOT NULL,
  `nama_pengirim` varchar(200) NOT NULL,
  `metode_pem` varchar(200) NOT NULL,
  `bukti` varchar(300) NOT NULL,
  `status_pem` varchar(200) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_saldokas`
--

CREATE TABLE `riwayat_saldokas` (
  `id` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `ket` varchar(400) NOT NULL,
  `tanggal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `total`
--

CREATE TABLE `total` (
  `id` int(11) NOT NULL,
  `saldo` int(200) NOT NULL,
  `s_keluar` int(200) NOT NULL,
  `s_masuk` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `total`
--

INSERT INTO `total` (`id`, `saldo`, `s_keluar`, `s_masuk`) VALUES
(1, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`,`nim`);

--
-- Indeks untuk tabel `jadwal_tagihan`
--
ALTER TABLE `jadwal_tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list_tunggakan`
--
ALTER TABLE `list_tunggakan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_pembayaran`
--
ALTER TABLE `riwayat_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_saldokas`
--
ALTER TABLE `riwayat_saldokas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tagihan`
--
ALTER TABLE `jadwal_tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `list_tunggakan`
--
ALTER TABLE `list_tunggakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat_pembayaran`
--
ALTER TABLE `riwayat_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat_saldokas`
--
ALTER TABLE `riwayat_saldokas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `total`
--
ALTER TABLE `total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
