-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2024 a las 06:39:53
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
-- Base de datos: `bicihelp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `descripcion1` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `descripcion`, `descripcion1`) VALUES
(1, 'administrador', ''),
(2, 'cliente', 'usuario que solicita servicio'),
(3, 'Contratista', 'Tecnico');

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
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(150) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `contrasena` varchar(150) NOT NULL,
  `confirmar_contrasena` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `confirmar_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`id`, `nombre_completo`, `usuario`, `contrasena`, `confirmar_contrasena`, `email`, `confirmar_email`) VALUES
(21, 'hernan galindo', 'julan david', '12345', '', 'carlos@gamil.com', 'carlos@gamil.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pqrs` text NOT NULL,
  `fecha_mensaje` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pqrs`
--

INSERT INTO `pqrs` (`id`, `nombre`, `email`, `pqrs`, `fecha_mensaje`) VALUES
(1, 'Usuario de prueba 2', 'usuario2@example.com', '', '2024-12-09 01:42:15'),
(2, 'Usuario 3 Pruebas', 'usuario3@example.com', 'Mensaje de prueba No. 3 formulario contactenos', '2024-12-09 02:06:09'),
(3, 'Usuario 3 de Pruebas', 'usuario3@example.com', 'Mensaje de prueba No. 3 de contactenso - pqrs', '2024-12-09 02:09:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `cedula_ciudadania` varchar(50) NOT NULL,
  `tipo_servicio` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombres`, `apellidos`, `fecha_nacimiento`, `usuario`, `cedula_ciudadania`, `tipo_servicio`, `telefono`, `ciudad`, `contrasena`, `id_cargo`) VALUES
(17, '', '', '0000-00-00', 'admin@bicihelp.com', '', NULL, NULL, 'Bogotá', 'e10adc3949ba59abbe56e057f20f883e', 1),
(24, 'Usuario 2', 'Pruebas', '2000-01-01', 'usuario2@example.com', '10000002', NULL, NULL, 'Bogotá', 'e10adc3949ba59abbe56e057f20f883e', 2),
(25, 'Tecnico 1', 'Pruebas Registro', '2001-01-01', 'tecnico1@example.com', '10003001', NULL, NULL, 'Bogotá', 'e10adc3949ba59abbe56e057f20f883e', 3);

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
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

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
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_completo` (`nombre_completo`) USING BTREE;

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

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
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`);

--
-- Filtros para la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  ADD CONSTRAINT `tipo_servicios_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
