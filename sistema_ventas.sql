-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2026 a las 00:41:42
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
-- Base de datos: `sistema_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `nombre_grupo` varchar(50) DEFAULT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `kilos` int(11) DEFAULT NULL,
  `nombre_vendedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `nombre_grupo`, `nombre_producto`, `precio`, `fecha_alta`, `kilos`, `nombre_vendedor`) VALUES
(1, 'Fruta', 'manzana ', 5.00, '2025-12-01', 5, 'Devon'),
(2, 'Frutas', 'Naranjas', 1.00, '2024-03-15', 2319, 'Pepito'),
(3, 'Frutas', 'Naranjas', 1.00, '2024-03-15', 2143, 'Rosa'),
(4, 'Frutas', 'Malocoton', 2.00, '2024-03-15', 1999, 'Rosa'),
(5, 'Hortalizas', 'Esparragos', 1.00, '2024-03-15', 2437, 'Rosa'),
(6, 'Verduras', 'Tomates', 1.00, '2024-03-15', 460, 'Pepito'),
(7, 'Frutas', 'Melones', 2.00, '2024-03-15', 2477, 'Pepito'),
(8, 'Frutas', 'Mandarinas', 4.00, '2024-03-15', 2066, 'Pepito'),
(9, 'Frutas', 'Naranjas', 1.00, '2024-03-16', 500, 'Maria'),
(10, 'Verduras', 'Tomates', 1.20, '2024-03-16', 300, 'Maria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
