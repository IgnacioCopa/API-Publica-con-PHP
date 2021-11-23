-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3310
-- Tiempo de generación: 23-11-2021 a las 16:25:57
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `divisas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trade`
--

CREATE TABLE `trade` (
  `id` int(11) NOT NULL,
  `divisa` text NOT NULL,
  `compra` float NOT NULL,
  `venta` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trade`
--

INSERT INTO `trade` (`id`, `divisa`, `compra`, `venta`) VALUES
(1, 'Dólar Oficial', 100.31, 107.01),
(2, 'Dólar Bolsa', 201.46, 204.06),
(3, 'Dólar Contado Con Liqui', 214.74, 220.03),
(4, 'Dólar Solidario', 0, 174.07),
(5, 'Dólar Blue', 198.5, 201.5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
