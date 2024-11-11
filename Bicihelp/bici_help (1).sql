-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2024 a las 03:07:59
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
-- Base de datos: `bici_help`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`) VALUES
(1, 'BOGOTA'),
(2, 'BOSA'),
(3, 'SOACHA'),
(4, 'CHIA'),
(5, 'FUNZA'),
(6, 'MOSQUERA'),
(7, 'COTA'),
(8, 'MADRID');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financiero`
--

CREATE TABLE `financiero` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  `vlr_importe` decimal(10,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `id_orden_servicio` int(11) NOT NULL,
  `nombre_pago` varchar(50) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL,
  `recargo_tarifa` decimal(10,2) DEFAULT NULL,
  `descuento_tarifa` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa_servicios`
--

CREATE TABLE `mesa_servicios` (
  `id` int(11) NOT NULL,
  `ubicacion_usuario` varchar(255) NOT NULL,
  `ubicacion_contratista` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipodoc_id` int(11) NOT NULL,
  `num_doc` varchar(50) NOT NULL,
  `tipo_servicio` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `rol_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombres`, `apellidos`, `fecha_nacimiento`, `email`, `tipodoc_id`, `num_doc`, `tipo_servicio`, `telefono`, `ciudad_id`, `password`, `rol_Id`) VALUES
(1, 'JOAQUIN', 'RODRIGUEZ', '0000-00-00', 'jalexander.rodriguez@hotmail.com', 1, '', NULL, NULL, 1, 'J12345rod', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Contratista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `tarifa` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) DEFAULT 0.00,
  `recargo` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_doc`
--

CREATE TABLE `tipo_doc` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_doc`
--

INSERT INTO `tipo_doc` (`id`, `nombre`) VALUES
(1, 'Cédula de ciudadnia'),
(2, 'Cédula de extranjería'),
(3, 'Tarjeta de identidad'),
(4, 'Pasaporte'),
(5, 'Tarjeta de identidad'),
(6, 'Permiso de protección temporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicios`
--

CREATE TABLE `tipo_servicios` (
  `id_orden_servicio` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `tarifa` decimal(10,2) NOT NULL,
  `fecha_servicio` date NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `contacto_usuario` varchar(100) DEFAULT NULL,
  `contacto_contratista` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trayecto`
--

CREATE TABLE `trayecto` (
  `id` int(11) NOT NULL,
  `ubicacion_usuario` varchar(255) NOT NULL,
  `ubicacion_contratista` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(11) NOT NULL,
  `tipo_vehiculo` varchar(50) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `caracteristicas_especiales` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `financiero`
--
ALTER TABLE `financiero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_contratista` (`id_contratista`),
  ADD KEY `id_orden_servicio` (`id_orden_servicio`);

--
-- Indices de la tabla `mesa_servicios`
--
ALTER TABLE `mesa_servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `rol_Id` (`rol_Id`),
  ADD KEY `fk_ciudad` (`ciudad_id`),
  ADD KEY `fk_tipodoc` (`tipodoc_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tipo_doc`
--
ALTER TABLE `tipo_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  ADD PRIMARY KEY (`id_orden_servicio`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `trayecto`
--
ALTER TABLE `trayecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `financiero`
--
ALTER TABLE `financiero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa_servicios`
--
ALTER TABLE `mesa_servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_doc`
--
ALTER TABLE `tipo_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  MODIFY `id_orden_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trayecto`
--
ALTER TABLE `trayecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `financiero`
--
ALTER TABLE `financiero`
  ADD CONSTRAINT `financiero_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `registro` (`id`),
  ADD CONSTRAINT `financiero_ibfk_2` FOREIGN KEY (`id_contratista`) REFERENCES `registro` (`id`),
  ADD CONSTRAINT `financiero_ibfk_3` FOREIGN KEY (`id_orden_servicio`) REFERENCES `tipo_servicios` (`id_orden_servicio`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `fk_ciudad` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  ADD CONSTRAINT `fk_rol_id` FOREIGN KEY (`rol_Id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_tipodoc` FOREIGN KEY (`tipodoc_id`) REFERENCES `tipo_doc` (`id`);

--
-- Filtros para la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  ADD CONSTRAINT `tipo_servicios_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
