-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2023 a las 09:48:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `precio_producto` double DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `tipo_producto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre_producto`, `precio_producto`, `stock`, `tipo_producto`) VALUES
(1, 'Sega Genesis', 15000, 15, 'Consola Videojuegos'),
(2, 'PlayStation 5', 450000, 25, 'Consola Videojuegos'),
(3, 'Xbox Series X', 300000, 10, 'Consola Videojuegos'),
(4, 'Joystick Xbox', 25000, 50, 'Periferico Videojuego'),
(5, 'Joystick PS5', 35000, 50, 'Periferico Videojuegos'),
(6, 'Nintendo Switch', 230000, 15, 'Consola Videojuegos'),
(7, 'Mario Kart 8', 15000, 5, 'Videojuegos'),
(8, 'Zelda: Breath of the wild', 15000, 7, 'Videojuegos'),
(9, 'Resident Evil 3', 15000, 20, 'Videojuegos'),
(10, 'God of War', 15000, 17, 'Videojuegos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `dni`, `direccion`, `email`, `password`, `telefono`) VALUES
(1, 'Javier', 'Villaro', '38207789', 'Capilla del Rosario 1965', 'jarvix_94@gmail.com', '123456789', '2616633333'),
(2, 'Fernando', 'Pampero', '32688619', 'Av. Siempre Viva 123', 'fernando_pampero@gmail.com', 'AAAAAAAAAAAA', '2666534333'),
(3, 'Agostina', 'Garcia', '36756393', 'Portugal 4856', 'agostina_garcia@gmail.com', '987654321', '0116533443'),
(4, 'Leonardo', 'Davinci', '35621987', 'Colombia 365', 'leonardo_davinci@gmail.com', 'ISLTRHOQJGFS', '2614633643'),
(5, 'Alexa', 'Torres', '38164325', 'Sobremonte 125', 'alexa_torres@gmail.com', 'usnbthygAJTB', '2615634483'),
(6, 'Pablo', 'Roldán', '38963458', 'San Martín 756', 'pablo_roldan@gmail.com', 'lsutnaujHGSK', '2616334383'),
(7, 'Luciano', 'Gómez', '38741841', 'Córdoba 452', 'luciano_gomez@gmail.com', 'OSJTajnbtuj', '2616623453'),
(8, 'Yanina', 'Cervantes', '37531894', 'Buenos Aires 488', 'yanina_cervantes@gmail.com', 'JKSJajusnbtu', '2616638543'),
(9, 'Ingacio', 'Pérez', '39456225', 'Entre Ríos 785', 'nacho_perez@gmail.com', 'LYTLSnskien', '0118435343'),
(10, 'Florencia', 'Quispe', '41785214', 'Bandera de los Andes 864', 'florencia_quispe@gmail.com', 'NTNSoatyyt', '2626534763');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
