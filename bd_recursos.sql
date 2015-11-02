-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2015 a las 12:50:06
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
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(20) COLLATE utf8_bin NOT NULL,
  `contraseña` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_recurso`
--
ALTER TABLE `tbl_recurso`
 ADD PRIMARY KEY (`id_recurso`);

--
-- Indices de la tabla `tbl_tipo_recurso`
--
ALTER TABLE `tbl_tipo_recurso`
 ADD PRIMARY KEY (`id_tipo_recurso`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
 ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_recurso`
--
ALTER TABLE `tbl_recurso`
MODIFY `id_recurso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_recurso`
--
ALTER TABLE `tbl_tipo_recurso`
MODIFY `id_tipo_recurso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
