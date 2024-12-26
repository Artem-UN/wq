-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 26 2024 г., 17:42
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `air_quality`
--

-- --------------------------------------------------------

--
-- Структура таблицы `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int(11) NOT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `request_type` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `request_logs`
--

INSERT INTO `request_logs` (`id`, `latitude`, `longitude`, `request_type`, `status`, `message`, `timestamp`) VALUES
(1, 43.2428269, 76.9043480, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:07:57'),
(2, 43.2428269, 76.9043480, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:07:58'),
(3, 43.2428269, 76.9043480, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:07:59'),
(4, 43.2051758, 77.0709784, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:08:02'),
(5, 43.2051758, 77.0709784, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:08:03'),
(6, 43.3231796, 76.9170834, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:08:43'),
(7, 43.3231796, 76.9170834, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:08:43'),
(8, 43.2482037, 76.8841059, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:09:01'),
(9, 43.2482037, 76.8841059, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:09:02'),
(10, 43.2582058, 76.8662431, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:09:26'),
(11, 43.2582058, 76.8662431, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:09:27'),
(12, 43.2582058, 76.8662431, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:16:54'),
(13, 43.2582058, 76.8662431, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:16:54'),
(14, 43.0558443, 77.2344919, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:17:23'),
(15, 42.5004530, 77.2853477, 'weather', 'success', 'Успешный запрос', '2024-12-26 08:17:28'),
(16, 42.5004530, 77.2853477, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 08:17:32'),
(17, 24.2068896, 200.4966471, 'weather', 'error', 'Ошибка: wrong longitude', '2024-12-26 08:17:58'),
(18, 43.3042404, 76.9266532, 'weather', 'success', 'Успешный запрос', '2024-12-26 16:23:25'),
(19, 43.3042404, 76.9266532, 'air_quality', 'success', 'Успешный запрос', '2024-12-26 16:23:25');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
