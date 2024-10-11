-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 05:40:23
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
-- Estructura de tabla para la tabla `contratistas`
--

CREATE TABLE `contratistas` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `cedula_ciudadania` varchar(20) NOT NULL,
  `tipo_servicio` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `id` int(11) NOT NULL,
  `estado` enum('ACTIVO','BLOQUEADO','BANEADO','INACTIVO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financiero`
--

CREATE TABLE `financiero` (
  `id` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `vlr_importe` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_inicio_sesion`
--

CREATE TABLE `ingreso_inicio_sesion` (
  `id` int(11) NOT NULL,
  `cuenta_usuario` varchar(100) NOT NULL,
  `cuenta_contratista` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  `estado_usuario` enum('ACTIVO','BLOQUEADO','BANEADO','INACTIVO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_pago`
--

CREATE TABLE `medio_pago` (
  `id_pago` int(11) NOT NULL,
  `nombre_pago` varchar(50) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL
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
-- Estructura de tabla para la tabla `realizar_pago`
--

CREATE TABLE `realizar_pago` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  `vlr_importe` decimal(10,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `id_pago` int(11) NOT NULL,
  `id_orden_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `id_tarifa` int(11) NOT NULL,
  `nombre_tarifa` varchar(100) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `vlr_basico` decimal(10,2) NOT NULL,
  `recargo_tarifa` decimal(10,2) DEFAULT NULL,
  `descuento_tarifa` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `cedula_ciudadania` varchar(20) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo_electronico`, `cedula_ciudadania`, `telefono`, `ciudad`, `contrasena`, `ubicacion`, `fecha_nacimiento`, `rol`) VALUES
(1, 'PEPITO', 'PEREZ', 'p_perez@yamcha.com', '1000000001', '350500112233', 'Bogota', 'PP123456*', '[value-9]', '1980-07-01', 2);

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
-- Indices de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`),
  ADD UNIQUE KEY `cedula_ciudadania` (`cedula_ciudadania`);

--
-- Indices de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `financiero`
--
ALTER TABLE `financiero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_contratista` (`id_contratista`);

--
-- Indices de la tabla `ingreso_inicio_sesion`
--
ALTER TABLE `ingreso_inicio_sesion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `mesa_servicios`
--
ALTER TABLE `mesa_servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `realizar_pago`
--
ALTER TABLE `realizar_pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_contratista` (`id_contratista`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`id_tarifa`),
  ADD KEY `id_servicio` (`id_servicio`);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`),
  ADD UNIQUE KEY `cedula_ciudadania` (`cedula_ciudadania`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `financiero`
--
ALTER TABLE `financiero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingreso_inicio_sesion`
--
ALTER TABLE `ingreso_inicio_sesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa_servicios`
--
ALTER TABLE `mesa_servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `realizar_pago`
--
ALTER TABLE `realizar_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `id_tarifa` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `financiero_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `financiero_ibfk_2` FOREIGN KEY (`id_contratista`) REFERENCES `contratistas` (`id`);

--
-- Filtros para la tabla `realizar_pago`
--
ALTER TABLE `realizar_pago`
  ADD CONSTRAINT `realizar_pago_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `realizar_pago_ibfk_2` FOREIGN KEY (`id_contratista`) REFERENCES `contratistas` (`id`),
  ADD CONSTRAINT `realizar_pago_ibfk_3` FOREIGN KEY (`id_pago`) REFERENCES `medio_pago` (`id_pago`);

--
-- Filtros para la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD CONSTRAINT `tarifa_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`);

--
-- Filtros para la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  ADD CONSTRAINT `tipo_servicios_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
