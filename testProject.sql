-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 07 2019 г., 10:45
-- Версия сервера: 5.7.27-0ubuntu0.19.04.1
-- Версия PHP: 7.2.24-0ubuntu0.19.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testProject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `testTable`
--

CREATE TABLE `testTable` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET cp1251 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `testTable`
--

INSERT INTO `testTable` (`id`, `text`) VALUES
(1, 'Пожалуйста, сделайте так, чтобы это удивительное тестовое предложение изменялось быстро случайным образом.'),
(2, 'Пожалуйста, сделайте так, чтобы это удивительное тестовое предложение менялось каждый раз.'),
(3, 'Пожалуйста, сделайте так, чтобы это удивительное тестовое предложение изменялось мгновенно случайным образом.'),
(4, 'Пожалуйста, сделайте так, чтобы это удивительное тестовое предложение изменялось \nоперативно случайным образом.'),
(5, 'Пожалуйста, сделайте так, чтобы это удивительное тестовое предложение изменялось правильно случайным образом.'),
(6, 'Пожалуйста, сделайте так, чтобы это крутое тестовое предложение изменялось быстро случайным образом.'),
(7, 'Пожалуйста, сделайте так, чтобы это крутое тестовое предложение менялось каждый раз.'),
(8, 'Пожалуйста, сделайте так, чтобы это крутое тестовое предложение изменялось мгновенно случайным образом.'),
(9, 'Пожалуйста, сделайте так, чтобы это крутое тестовое предложение изменялось \nоперативно случайным образом.'),
(10, 'Пожалуйста, сделайте так, чтобы это крутое тестовое предложение изменялось правильно случайным образом.'),
(11, 'Пожалуйста, сделайте так, чтобы это \nпростое тестовое предложение изменялось быстро случайным образом.'),
(12, 'Пожалуйста, сделайте так, чтобы это \nпростое тестовое предложение менялось каждый раз.'),
(13, 'Пожалуйста, сделайте так, чтобы это \nпростое тестовое предложение изменялось мгновенно случайным образом.'),
(14, 'Пожалуйста, сделайте так, чтобы это \nпростое тестовое предложение изменялось \nоперативно случайным образом.'),
(15, 'Пожалуйста, сделайте так, чтобы это \nпростое тестовое предложение изменялось правильно случайным образом.'),
(16, 'Пожалуйста, сделайте так, чтобы это важное тестовое предложение изменялось быстро случайным образом.'),
(17, 'Пожалуйста, сделайте так, чтобы это важное тестовое предложение менялось каждый раз.'),
(18, 'Пожалуйста, сделайте так, чтобы это важное тестовое предложение изменялось мгновенно случайным образом.'),
(19, 'Пожалуйста, сделайте так, чтобы это важное тестовое предложение изменялось \nоперативно случайным образом.'),
(20, 'Пожалуйста, сделайте так, чтобы это важное тестовое предложение изменялось правильно случайным образом.'),
(21, 'Пожалуйста, сделайте так, чтобы это бесполезное тестовое предложение изменялось быстро случайным образом.'),
(22, 'Пожалуйста, сделайте так, чтобы это бесполезное тестовое предложение менялось каждый раз.'),
(23, 'Пожалуйста, сделайте так, чтобы это бесполезное тестовое предложение изменялось мгновенно случайным образом.'),
(24, 'Пожалуйста, сделайте так, чтобы это бесполезное тестовое предложение изменялось \nоперативно случайным образом.'),
(25, 'Пожалуйста, сделайте так, чтобы это бесполезное тестовое предложение изменялось правильно случайным образом.'),
(26, 'Просто сделайте так, чтобы это удивительное тестовое предложение изменялось быстро случайным образом.'),
(27, 'Просто сделайте так, чтобы это удивительное тестовое предложение менялось каждый раз.'),
(28, 'Просто сделайте так, чтобы это удивительное тестовое предложение изменялось мгновенно случайным образом.'),
(29, 'Просто сделайте так, чтобы это удивительное тестовое предложение изменялось \nоперативно случайным образом.'),
(30, 'Просто сделайте так, чтобы это удивительное тестовое предложение изменялось правильно случайным образом.'),
(31, 'Просто сделайте так, чтобы это крутое тестовое предложение изменялось быстро случайным образом.'),
(32, 'Просто сделайте так, чтобы это крутое тестовое предложение менялось каждый раз.'),
(33, 'Просто сделайте так, чтобы это крутое тестовое предложение изменялось мгновенно случайным образом.'),
(34, 'Просто сделайте так, чтобы это крутое тестовое предложение изменялось \nоперативно случайным образом.'),
(35, 'Просто сделайте так, чтобы это крутое тестовое предложение изменялось правильно случайным образом.'),
(36, 'Просто сделайте так, чтобы это \nпростое тестовое предложение изменялось быстро случайным образом.'),
(37, 'Просто сделайте так, чтобы это \nпростое тестовое предложение менялось каждый раз.'),
(38, 'Просто сделайте так, чтобы это \nпростое тестовое предложение изменялось мгновенно случайным образом.'),
(39, 'Просто сделайте так, чтобы это \nпростое тестовое предложение изменялось \nоперативно случайным образом.'),
(40, 'Просто сделайте так, чтобы это \nпростое тестовое предложение изменялось правильно случайным образом.'),
(41, 'Просто сделайте так, чтобы это важное тестовое предложение изменялось быстро случайным образом.'),
(42, 'Просто сделайте так, чтобы это важное тестовое предложение менялось каждый раз.'),
(43, 'Просто сделайте так, чтобы это важное тестовое предложение изменялось мгновенно случайным образом.'),
(44, 'Просто сделайте так, чтобы это важное тестовое предложение изменялось \nоперативно случайным образом.'),
(45, 'Просто сделайте так, чтобы это важное тестовое предложение изменялось правильно случайным образом.'),
(46, 'Просто сделайте так, чтобы это бесполезное тестовое предложение изменялось быстро случайным образом.'),
(47, 'Просто сделайте так, чтобы это бесполезное тестовое предложение менялось каждый раз.'),
(48, 'Просто сделайте так, чтобы это бесполезное тестовое предложение изменялось мгновенно случайным образом.'),
(49, 'Просто сделайте так, чтобы это бесполезное тестовое предложение изменялось \nоперативно случайным образом.'),
(50, 'Просто сделайте так, чтобы это бесполезное тестовое предложение изменялось правильно случайным образом.'),
(51, 'Если сможете, сделайте так, чтобы это удивительное тестовое предложение изменялось быстро случайным образом.'),
(52, 'Если сможете, сделайте так, чтобы это удивительное тестовое предложение менялось каждый раз.'),
(53, 'Если сможете, сделайте так, чтобы это удивительное тестовое предложение изменялось мгновенно случайным образом.'),
(54, 'Если сможете, сделайте так, чтобы это удивительное тестовое предложение изменялось \nоперативно случайным образом.'),
(55, 'Если сможете, сделайте так, чтобы это удивительное тестовое предложение изменялось правильно случайным образом.'),
(56, 'Если сможете, сделайте так, чтобы это крутое тестовое предложение изменялось быстро случайным образом.'),
(57, 'Если сможете, сделайте так, чтобы это крутое тестовое предложение менялось каждый раз.'),
(58, 'Если сможете, сделайте так, чтобы это крутое тестовое предложение изменялось мгновенно случайным образом.'),
(59, 'Если сможете, сделайте так, чтобы это крутое тестовое предложение изменялось \nоперативно случайным образом.'),
(60, 'Если сможете, сделайте так, чтобы это крутое тестовое предложение изменялось правильно случайным образом.'),
(61, 'Если сможете, сделайте так, чтобы это \nпростое тестовое предложение изменялось быстро случайным образом.'),
(62, 'Если сможете, сделайте так, чтобы это \nпростое тестовое предложение менялось каждый раз.'),
(63, 'Если сможете, сделайте так, чтобы это \nпростое тестовое предложение изменялось мгновенно случайным образом.'),
(64, 'Если сможете, сделайте так, чтобы это \nпростое тестовое предложение изменялось \nоперативно случайным образом.'),
(65, 'Если сможете, сделайте так, чтобы это \nпростое тестовое предложение изменялось правильно случайным образом.'),
(66, 'Если сможете, сделайте так, чтобы это важное тестовое предложение изменялось быстро случайным образом.'),
(67, 'Если сможете, сделайте так, чтобы это важное тестовое предложение менялось каждый раз.'),
(68, 'Если сможете, сделайте так, чтобы это важное тестовое предложение изменялось мгновенно случайным образом.'),
(69, 'Если сможете, сделайте так, чтобы это важное тестовое предложение изменялось \nоперативно случайным образом.'),
(70, 'Если сможете, сделайте так, чтобы это важное тестовое предложение изменялось правильно случайным образом.'),
(71, 'Если сможете, сделайте так, чтобы это бесполезное тестовое предложение изменялось быстро случайным образом.'),
(72, 'Если сможете, сделайте так, чтобы это бесполезное тестовое предложение менялось каждый раз.'),
(73, 'Если сможете, сделайте так, чтобы это бесполезное тестовое предложение изменялось мгновенно случайным образом.'),
(74, 'Если сможете, сделайте так, чтобы это бесполезное тестовое предложение изменялось \nоперативно случайным образом.'),
(75, 'Если сможете, сделайте так, чтобы это бесполезное тестовое предложение изменялось правильно случайным образом.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `testTable`
--
ALTER TABLE `testTable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `testTable`
--
ALTER TABLE `testTable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
