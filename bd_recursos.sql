-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2015 a las 11:46:45
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_recursos`
--
CREATE DATABASE IF NOT EXISTS `bd_recursos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_recursos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_recurso`
--

CREATE TABLE IF NOT EXISTS `tbl_recurso` (
  `id_recurso` int(11) NOT NULL,
  `nombre_recurso` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_tipo_recurso` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ultima_reserva` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ultima_liberacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `veces_usado` int(11) NOT NULL,
  `foto_recurso` varchar(25) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_recurso`
--

INSERT INTO `tbl_recurso` (`id_recurso`, `nombre_recurso`, `id_tipo_recurso`, `estado`, `id_usuario`, `ultima_reserva`, `ultima_liberacion`, `veces_usado`, `foto_recurso`) VALUES
(22, 'Teoria T100', 1, 'disponible', NULL, '2015-11-06 10:38:22', '2015-11-06 10:38:27', 16, '22.jpg'),
(23, 'Teoria T101', 1, 'disponible', NULL, '2015-11-06 10:21:35', '2015-11-06 10:24:28', 26, '23.jpg'),
(24, 'Teoria T102', 1, 'disponible', NULL, '2015-11-06 10:23:48', '2015-11-06 10:28:23', 3, '24.jpg'),
(25, 'Teoria T103', 1, 'disponible', NULL, '2015-11-05 13:22:55', '2015-11-06 10:10:46', 1, '25.jpg'),
(26, 'Informatica I200', 1, 'disponible', NULL, '2015-11-05 22:57:02', '2015-11-05 22:57:33', 1, '26.jpg'),
(27, 'Informatica I201', 1, 'disponible', NULL, '2015-11-05 19:48:21', '2015-11-05 20:10:24', 1, '27.jpg'),
(28, 'Despacho D300', 2, 'disponible', NULL, '2015-11-06 10:42:10', '2015-11-06 10:42:17', 2, '28.jpg'),
(29, 'Despacho D301', 2, 'disponible', NULL, '2015-11-05 10:49:29', '2015-11-05 10:49:42', 4, '29.jpg'),
(30, 'Sala S400', 3, 'disponible', NULL, '2015-11-06 10:24:39', '2015-11-06 10:28:34', 7, '30.jpg'),
(31, 'Proyector P500', 4, 'disponible', NULL, '2015-11-05 10:48:31', '2015-11-06 10:11:09', 1, '31.jpg'),
(32, 'Portatil P600', 5, 'No disponible', 3, '2015-11-05 19:56:28', '2015-11-05 19:55:36', 2, '32.jpg'),
(33, 'Portatil P601', 5, 'disponible', NULL, '2015-11-05 19:52:31', '2015-11-05 19:52:35', 2, '33.jpg'),
(34, 'Portatil P602', 5, 'disponible', NULL, '2015-11-05 10:39:15', '0000-00-00 00:00:00', 1, '34.jpg'),
(35, 'Movil M700', 6, 'disponible', NULL, '2015-11-05 10:38:48', '0000-00-00 00:00:00', 0, '35.jpg'),
(36, 'Movil M701', 6, 'disponible', NULL, '2015-11-05 10:38:48', '0000-00-00 00:00:00', 0, '36.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_recurso`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_recurso` (
  `id_tipo_recurso` int(11) NOT NULL,
  `nombre_tipo_recurso` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_tipo_recurso`
--

INSERT INTO `tbl_tipo_recurso` (`id_tipo_recurso`, `nombre_tipo_recurso`) VALUES
(1, 'Aula'),
(2, 'Despacho'),
(3, 'Sala de Reuniones'),
(4, 'Proyectores'),
(5, 'Portatiles'),
(6, 'Moviles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_usuario` (
  `id_usuario` int(11) NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id_usuario`, `password`, `usuario`) VALUES
(1, '1234', 'acamacho'),
(2, '1234', 'sayala'),
(3, '1234', 'rcalvo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_recurso`
--
ALTER TABLE `tbl_recurso`
  ADD PRIMARY KEY (`id_recurso`),
  ADD KEY `fk_tipo` (`id_tipo_recurso`),
  ADD KEY `fk_id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tbl_tipo_recurso`
--
ALTER TABLE `tbl_tipo_recurso`
  ADD PRIMARY KEY (`id_tipo_recurso`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_recurso`
--
ALTER TABLE `tbl_recurso`
  MODIFY `id_recurso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_recurso`
--
ALTER TABLE `tbl_tipo_recurso`
  MODIFY `id_tipo_recurso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
