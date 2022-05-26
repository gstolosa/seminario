-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2021 a las 18:42:49
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ghoproinc_seminario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `razon_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuit` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `razon_social`, `nombre`, `cuit`, `direccion`, `ciudad`, `telefono`, `email`) VALUES
(3, 'HardEs SRL', 'Gabriel', '22-222222-2', 'Cuenca 1234', 'CABA', '1234-4567', 'test@test.com'),
(4, 'Componentes SRL', 'Lucas', '33-333333-3', 'Av. Gaona 123', 'CABA', '7891-1234', 'mail@lucas.com'),
(5, 'ProPC SRL', 'Gisela', '44-444444-4', 'Helguera 2589', 'CABA', '3698-2587', 'gisela@test.com'),
(8, 'PCtest SRL', 'Juan', '55-222222-4', 'Calle 15', 'La Plata', '221221221', 'test@mail.com'),
(9, 'Emprendimiento SRL', 'Santino', '22-777777-1', 'Entre Ríos 258', 'Rosario', '34158962147', 'san@san.com'),
(10, 'Empresa SRL', 'Apolo', '66-555555-8', 'Rojas 123', 'Bahía Blanca', '2915896345', 'apolo@empresa.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
