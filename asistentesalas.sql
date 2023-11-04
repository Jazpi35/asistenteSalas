-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2023 a las 05:26:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistentesalas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE DATABASE asistentesalas;


CREATE TABLE `asignaturas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `estado` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `fecha_reserva` datetime NOT NULL,
  `hora_reserva_inicio` time NOT NULL,
  `hora_reserva_fin` time NOT NULL,
  `observacion_reserva` text NOT NULL,
  `fecha_cancelacion` datetime NOT NULL,
  `observacion_cancelacion` text NOT NULL,
  `id_asignaturas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_inconsistencias`
--

CREATE TABLE `reservas_inconsistencias` (
  `id` int(11) NOT NULL,
  `id_reservas` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_reservas_recursos` int(11) NOT NULL,
  `observacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_recursos`
--

CREATE TABLE `reservas_recursos` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `estado` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `bloque` varchar(200) NOT NULL,
  `capacidad_estudiantes` varchar(200) NOT NULL,
  `aire_acondicionado` varchar(200) NOT NULL,
  `video_beam` varchar(200) NOT NULL,
  `observacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `estado` int(11) NOT NULL,
  `direccion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `nombre`, `estado`, `direccion`) VALUES
(1, 'Pance', 1, ''),
(2, 'Lopez', 1, ''),
(3, 'Melendez', 1, ''),
(4, 'prueba', 1, 'dirección'),
(5, 'SEDE PRUEBA DOS', 1, 'DIRECCION PRUEBA DOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `estado` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` text NOT NULL,
  `contraseña` text NOT NULL,
  `identificacion` int(11) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `tipo_identificacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `estado`, `id_rol`, `fecha`, `usuario`, `contraseña`, `identificacion`, `telefono`, `tipo_identificacion`) VALUES
(1, 'VALENTINA', 1, 1, '0000-00-00 00:00:00', 'valen', '827ccb0eea8a706c4c34a16891f84e7b', 1006101366, '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas_inconsistencias`
--
ALTER TABLE `reservas_inconsistencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas_recursos`
--
ALTER TABLE `reservas_recursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas_inconsistencias`
--
ALTER TABLE `reservas_inconsistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas_recursos`
--
ALTER TABLE `reservas_recursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
