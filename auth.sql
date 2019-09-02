-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Set-2019 às 23:20
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
CREATE TABLE IF NOT EXISTS `candidatos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(68) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sobrenome` varchar(68) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areadeinteresse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `candidatos`
--

INSERT INTO `candidatos` (`id`, `nome`, `sobrenome`, `email`, `pais`, `areadeinteresse`, `resume`, `created_at`, `updated_at`) VALUES
(12, 'Rafael', 'sdadsa', 'rafaeldeoliveirafantinel@hotmail.com', 'Brasil', 'ti', 0x313132332e747874, '2019-09-02 02:00:49', '2019-09-02 02:00:49'),
(13, 'Vrau', 'sdadsa', 'rafael.olivera1999@hotmail.com', 'Brasil', 'sdasda', 0x313132332e747874, '2019-09-02 02:07:17', '2019-09-02 02:07:17'),
(14, 'Rafael', 'sdadsa', 'rafa.olivera123@gmail.com', 'Brasil', 'ti', 0x313132332e747874, '2019-09-02 02:08:58', '2019-09-02 02:08:58'),
(15, 'rafel', 'sdadsa', 'rafa.olivera123@gmail.com', 'Brasil', 'ti', 0x313132332e747874, '2019-09-02 02:09:43', '2019-09-02 02:09:43'),
(16, 'vrau', 'sdadsa', 'rafaeldeoliveirafantinel@hotmail.com', 'Brasil', 'saddsa', 0x313132332e747874, '2019-09-02 02:10:31', '2019-09-02 02:10:31'),
(17, 'Rafael', 'sdadsa', 'rafaeldeoliveirafantinel@hotmail.com', 'Brasil', 'saddsa', 0x313132332e747874, '2019-09-02 02:13:26', '2019-09-02 02:13:26'),
(18, 'Rafael', 'sadsa', 'rafael.olivera1999@hotmail.com', 'Brasil', 'ti', 0x62343963386636303766303732636264313164326638316161626338656261332e706466, '2019-09-02 02:19:05', '2019-09-02 02:19:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_30_235158_candidatos', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rafael Fantinel', 'rafaeldeoliveirafantinel@hotmail.com', '$2y$10$rTOFuoMUISq/9MtNzV/amOY4lyw6cvsb/I4gT0/Y9L16rgjHcroia', 'ckhaGbtkXjas0Dn4OQcy04jHzStY1W8Rog9nfIaEEWTIW6n3lOpFtUyM8J2J', '2019-08-31 15:01:52', '2019-08-31 15:01:52'),
(2, 'Lisiane palhares', 'lili@gmail.com', '$2y$10$IhUPz4Aa5zebaJUzLB4One.YimdCI8QD2AkCbfY3PEFQddv9vfIme', '72nFAGOJO9GCKdDEDoFzrrWIumj2UwaIsFksB02rHt4QdrI3mNnXlDkQirz9', '2019-08-31 15:55:45', '2019-08-31 15:55:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
