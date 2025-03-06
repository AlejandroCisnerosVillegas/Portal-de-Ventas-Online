-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2025 a las 03:10:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `general`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_04_items`
--

CREATE TABLE `project_04_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `project_04_items`
--

INSERT INTO `project_04_items` (`id`, `name`, `price`) VALUES
(1, 'HyperX Cloud II (Kingston)', 2200),
(2, 'Logitech G Pro X (Logitech)', 2800),
(3, 'Razer Kraken Tournament (Razer)', 1500),
(4, 'SteelSeries Arctis 7 (SteelSeries)', 3300),
(5, 'Acer Predator XB271HU (Acer)', 15000),
(6, 'ASUS ROG Swift PG279Q (ASUS)', 16000),
(7, 'BenQ ZOWIE XL2546 (BenQ)', 13000),
(8, 'AOC Agon AG271QX (AOC)', 11000),
(9, 'Logitech G Pro X (Logitech)', 2500),
(10, 'Corsair K70 RGB MK.2 (Corsair)', 2000),
(11, 'Razer BlackWidow Elite (Razer)', 2300),
(12, 'ASUS ROG Strix Scope (ASUS)', 2400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_04_users`
--

CREATE TABLE `project_04_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `project_04_users`
--

INSERT INTO `project_04_users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(7, 'Cristian Alejandro Cisneros Villegas', 'alex@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '5529002158', 'Ciudad de México', 'Iztapalapa, CDMX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_04_users_items`
--

CREATE TABLE `project_04_users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Agregado al carrito','Confirmada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `project_04_users_items`
--

INSERT INTO `project_04_users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(33, 7, 7, 'Confirmada'),
(34, 7, 6, 'Confirmada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `project_04_items`
--
ALTER TABLE `project_04_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_04_users`
--
ALTER TABLE `project_04_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_04_users_items`
--
ALTER TABLE `project_04_users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `project_04_items`
--
ALTER TABLE `project_04_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `project_04_users`
--
ALTER TABLE `project_04_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `project_04_users_items`
--
ALTER TABLE `project_04_users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
