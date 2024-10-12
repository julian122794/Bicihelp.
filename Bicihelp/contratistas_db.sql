-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2024 a las 19:42:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contratistas_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratistas`
--

CREATE TABLE `contratistas` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `cedula_ciudadania` varchar(50) NOT NULL,
  `tipo_servicio` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratistas`
--

INSERT INTO `contratistas` (`id`, `nombres`, `apellidos`, `fecha_nacimiento`, `correo_electronico`, `cedula_ciudadania`, `tipo_servicio`, `telefono`, `ciudad`, `contrasena`) VALUES
(1, 'julian', 'herrera ', '2024-10-08', 'juliandavid40@live.com', '1', '1', '7819071', 'Bogotá, Bogotá D.C., Colombia', '$2y$10$8DK74oGCRC3kitoiqSOa4.eXSgf6L9I.iujqZ1uleHCfuY3heg7wC'),
(2, 'pedro ', 'sanchez ', '2024-10-13', 'juliandavid40@live.com', '1', '1', '92939849', 'cali', '$2y$10$q5jYSYK3OqXemz3dQ2coQOtyajnc5vAi9Sv.PqQ92IsPucV2dO2XW'),
(3, 'andres', 'pablo', '2024-10-18', 'jjjjjjj@hotmail.com', '1', '1', '4444444', 'medellin', '$2y$10$VLM1gusSRQx7q3sU.FuSTuOL.3h822E/.aoAjb5/V05WJ3ebGT96e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
