-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 22, 2025 at 07:24 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankapi`
--
CREATE DATABASE IF NOT EXISTS `bankapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bankapi`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account`
--

CREATE TABLE `account` (
  `accountNo` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL COMMENT 'wartość w groszach',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountNo`, `amount`, `name`, `user_id`) VALUES
(123456, 1033, 'żółty', 1),
(654321, 10103, 'czerwony', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(70) NOT NULL COMMENT 'sha-256',
  `ip` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `ip`, `user_id`) VALUES
(1, '996c745540daf2bb1e8cd981e08ea1b6266ee756a5a0a89358341fbeadbadca9', '::1', 1),
(2, '7d70517f08a22d0a2eb31b5290b2effc9a6fe411bc10036be5b02951ce50b787', '::1', 1),
(3, 'e3ca5d2b1754f0e5c8eb8232c4dfe39e14f2de171e8d4165b4dcee379a61c2ec', '::1', 2),
(4, 'c36b1313438f310331325cace0f4db3ef608d3352346d7260b94916f48cd5114', '::1', 1),
(5, '5f1e4f02d6824c8250ffd52074fae221dfbc6fb2040c331814f6bc83a14216df', '::1', 1),
(6, 'fe3b0b1f90baf3c53632282de43f7ca317253e2694a9e2ff0833975834af6060', '::1', 1),
(7, '4a1ea5ae7ce520a92d373620709ed0020fc709c123dfb7b48fa67ffc5be5cb41', '::1', 1),
(8, 'fef9d6b7cf1052f756a1349d488052915b02317e0c004bb5be192e546e06f133', '::1', 1),
(9, 'b222f13b2a8559d0cb3244fc65b45c96832509c5bb485d36eab6518123d5b4ac', '::1', 1),
(10, '15a5c61ae14d424c16559e056f7a68eb39b2f3330dfa26b0e64040d39cecaf41', '::1', 1),
(11, '31c917d63ef89e4255581e29f4fabc136ca6bd7a2cb0b5395abda66e58736124', '::1', 1),
(12, '9dfc875fc4d26d768cb8cfeb350b59db0d4debdf085e1818b879dd695c8d18af', '::1', 1),
(13, 'b2b06e194a18d840d16f166ef74dab0364ba57de3186a2d6dccb2f89ac57ac42', '::1', 1),
(14, 'e0e3a2be54d78d1bc849135ad93fbcb6a09edf7ade312f136d57e81780336bd8', '::1', 1),
(15, '9800cdc11d8bcf628dc11fab538c697bd73dafca25bdaaef352a3d5e6b621a02', '::1', 1),
(16, 'fc9e7eed5c4615546844be30daa1dadfa7e88277b354953828ddd6fff332db4d', '::1', 1),
(17, '5b1eb04caed993175e6a6a8ca36d65554d9f18ff9f7fb779e6dffcee30fd4a12', '::1', 1),
(18, '575996296a47b2c6eb5b5bf4a2c290a199d2a2da03be7070879e4ea4524392f5', '::1', 1),
(19, '90c762cde0f7c9cb766b3284c433ffd9f8ababa5514da02d5a218d8e92207179', '::1', 1),
(20, '41b79931e6afc6c7c94a01b09d3e5896df4008bdf0e9ff4a1b056bf63dbf5c51', '::1', 1),
(21, '3a9d1238d6fa18e3da36388bc5c69723818bd1e6cb59f44f6c844902d30f8435', '::1', 1),
(22, '4fc0bcabaab2f48cbcea125992d9383c6c0c0d68812dc9b766ac0ec79aa55941', '::1', 1),
(23, 'd931ae2205271ed9543eb9f497ec8e60ec2727fcf980a14e908152d30451c6be', '::1', 1),
(24, 'b53ed731869879cd102582831cc594a9dd7758cab6b327b44713b21d7585882d', '::1', 1),
(25, '40e3d367a51b500d903b5ae07b8f170b46a35fd5f44ab2e829ba14b2b62516f1', '::1', 1),
(26, 'babeaf35f06b71c703527f5c69e56609236f984a95fc1a34348c1b4b664c9fc7', '::1', 1),
(27, '05df5220421e9249b9d3ccd47883698403ad4cf389991aaf2d286fb66225d791', '::1', 1),
(28, 'ac92e4df96baa9344a959ee1884f2e5159d1deb263977e2521d69aa90224f246', '::1', 1),
(29, 'cc64465fe52e9218e80b79440976b6b0b60b82f9311118c3656003959f5a4397', '::1', 1),
(30, 'e644e4276e0db2b177b4716d9311ea1cf849c952f1dc7a823fbc8a5d3cd6d6e3', '::1', 1),
(31, '630a32a5269d91ccc492c1168ffbcab6c41ef00c0830102470ff5ce8db1e321b', '::1', 1),
(32, '8f81e6106892951d46e8ce48cf8811d31a6b7521d0f6f451e7ae1cde010d6b8f', '::1', 1),
(33, '27a8baebab0e11c50671e826536cbb465e7914c554efc44b505722146e37d62b', '::1', 1),
(34, '35bfe3ff35281c51fd04cf9a62084947f06d6a84dd86eb3cf171a6c95b4c3bb1', '::1', 1),
(35, '566307fd1de765ca4ace244f158bed517adfc5682b7eb76b7977d9e8f617033d', '::1', 1),
(36, 'a7142f70ff72e81e233bdd987900f04d6186ee73aa14f42a9f12e7a97c3e0ee1', '::1', 1),
(37, 'c559628553a5cbb4de6b137b3828981b4abaed83442bccb6eba0b8cfaa2bf8da', '::1', 1),
(38, 'bb91aa0fccf6fda068d511995db780c2a7f99b66a7a54ebd445214dca6edc11e', '::1', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `source`, `target`, `amount`, `timestamp`) VALUES
(1, 123456, 654321, 1100, '2024-11-15 08:17:30'),
(2, 123456, 654321, -2000, '2024-12-11 08:02:09'),
(3, 123456, 2147483647, 1000, '2024-12-11 08:14:42'),
(4, 123456, 654321, 1000, '2024-12-11 08:20:26'),
(5, 123456, 654321, 1, '2024-12-11 08:25:11'),
(6, 123456, 654321, 1, '2024-12-11 08:27:07'),
(7, 123456, 654321, 1, '2024-12-11 08:29:29'),
(8, 123456, 654321, 1, '2024-12-11 08:29:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwordHash` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `passwordHash`) VALUES
(1, 'jkowalski@teb.pl', '$argon2i$v=19$m=16,t=2,p=1$TVl6TzlHUzJUTjF1dVd2dQ$ZDX/w9xZRZ2JZ4CMjtVxeA'),
(2, 'anowak@teb.pl', '$argon2i$v=19$m=16,t=2,p=1$TVl6TzlHUzJUTjF1dVd2dQ$Aq3lBydwjZMYwyZm3S+FhA');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountNo`);

--
-- Indeksy dla tabeli `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
