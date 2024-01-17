-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2024 a las 03:47:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `destinosturisticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `idDestino` int(11) NOT NULL,
  `tipoDestino` int(1) NOT NULL,
  `nombreDestino` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(120) NOT NULL,
  `preferencia` int(1) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellidos`, `preferencia`, `correo`, `contraseña`) VALUES
(1, 'Chris', 'hr', 0, 'cdhk@gmail.com', 'sdcwq'),
(2, 'Ronaldo', 'Nazario', 0, 'rl9@gmail.com', 'ACM!PT'),
(3, 'Cristiano', 'Ronaldo', 0, 'cr7@gmail.com', '$2y$10$xoEf8VSrUIzemS3wXjDQRe8mqIM9mZL7Uq/wMotJzbV1r2azJfXp.'),
(4, 'Neymar', 'JR', 0, 'ney@gmail.com', '$2y$10$pJd9kiZJZAnELW3h9iTs2u65HekKqRF52hyX3kEdThTNfjdnL4L0O'),
(5, 'Romelu', 'Lukaku', 0, 'luka9@gmail.com', '$2y$10$iHFrDXBHjvGghNcrN28d3.4CwhqJSr4zzE7o1UJuLIGLZNfo4gNl6'),
(6, 'Hola', 'prueba', 0, 'holas123@gmail.com', '$2y$10$Lmxte2Y5CqikLhcyF9B06u.QMrQ4w1KNBm/c8rDTLate2zfa75IvC'),
(7, '', '', 0, '', '$2y$10$rjiSxP6wQQw0J6KuGH3r7.bybk3VLm8BxrkdYx/6JEHkWPLwQ5ewS'),
(8, 'prueba', 'prd', 0, 'prd@gmail.com', '$2y$10$dotYUF5bvSMC0GiTV6WksO5N7tKUlCFcvOSRpM/sGxibHnhzbQIZ2'),
(9, 'carlos', 'mora', 2, 'morita@gmail.com', '$2y$10$uraHXhxGdtHbKn3iRDnWE.O1DIR4Y42sU6FXpzEqDIntVIRSRlNR2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`idDestino`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `idDestino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
