-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2015 a las 12:16:05
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_recursos`
--
CREATE DATABASE IF NOT EXISTS `bd_recursos` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
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
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_recurso`
--

INSERT INTO `tbl_recurso` (`id_recurso`, `nombre_recurso`, `id_tipo_recurso`, `estado`, `id_usuario`) VALUES
(22, 'teoria1', 1, 'disponible', NULL),
(23, 'teoria2', 1, 'disponible', NULL),
(24, 'teoria3', 1, 'disponible', NULL),
(25, 'teoria4', 1, 'disponible', NULL),
(26, 'informatica1', 1, 'disponible', NULL),
(27, 'informatica2', 1, 'disponible', NULL),
(28, 'despacho1', 2, 'No disponible', 2),
(29, 'despacho2', 2, 'disponible', NULL),
(30, 'sala1', 3, 'disponible', NULL),
(31, 'proyector1', 4, 'disponible', NULL),
(32, 'portatil1', 5, 'disponible', NULL),
(33, 'portatil2', 5, 'disponible', NULL),
(34, 'portatil3', 5, 'disponible', NULL),
(35, 'movil1', 6, 'disponible', NULL),
(36, 'movil2', 6, 'disponible', NULL),
(37, 'ejemplo1', 6, 'disponible', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_recurso`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_recurso` (
`id_tipo_recurso` int(11) NOT NULL,
  `nombre_tipo_recurso` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_tipo_recurso`
--

INSERT INTO `tbl_tipo_recurso` (`id_tipo_recurso`, `nombre_tipo_recurso`) VALUES
(1, 'aula'),
(2, 'despacho'),
(3, 'sala_reunions'),
(4, 'proyectores'),
(5, 'portatiles'),
(6, 'moviles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_usuario` (
`id_usuario` int(11) NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id_usuario`, `password`, `usuario`) VALUES
(1, 'joan23', 'alvaro1'),
(2, 'joan23', 'sergioa1'),
(3, 'joan23', 'raulc1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_recurso`
--
ALTER TABLE `tbl_recurso`
 ADD PRIMARY KEY (`id_recurso`), ADD KEY `fk_tipo` (`id_tipo_recurso`), ADD KEY `fk_id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tbl_tipo_recurso`
--
ALTER TABLE `tbl_tipo_recurso`
 ADD PRIMARY KEY (`id_tipo_recurso`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
 ADD PRIMARY KEY (`id_usuario`), ADD KEY `id_usuario` (`id_usuario`);

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
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_recurso`
--
ALTER TABLE `tbl_recurso`
ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`),
ADD CONSTRAINT `fk_tipo` FOREIGN KEY (`id_tipo_recurso`) REFERENCES `tbl_tipo_recurso` (`id_tipo_recurso`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
