-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2017 a las 12:22:27
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio_gingabi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Est_codigo` int(11) NOT NULL,
  `Est_nombres` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Est_apellidos` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Est_documento` decimal(10,0) NOT NULL,
  `Est_genero` char(1) COLLATE utf32_spanish_ci NOT NULL,
  `Est_acudiente` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Est_telefono` int(11) NOT NULL,
  `Est_direccion` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Est_foto` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Cur_codigo` int(11) DEFAULT NULL,
  `Est_estado` varchar(45) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Est_codigo`, `Est_nombres`, `Est_apellidos`, `Est_documento`, `Est_genero`, `Est_acudiente`, `Est_telefono`, `Est_direccion`, `Est_foto`, `Cur_codigo`, `Est_estado`) VALUES
(1, 'ALEJANDRO', 'GARZON', '435', 'M', 'ALEJANDRO GARZON', 2147483647, '2995 montgomery ave', 'imagen/20171025052540.png', 1, 'Activo'),
(2, 'ALEJANDRO', 'GARZON', '435', 'M', 'ALEJANDRO GARZON', 2147483647, '2995 montgomery ave', 'imagen/20171025052540.png', 2, 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Est_codigo`),
  ADD UNIQUE KEY `idEstudiante_UNIQUE` (`Est_codigo`),
  ADD KEY `fk_Estudiante_Curso1_idx` (`Cur_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Est_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_Estudiante_Curso1` FOREIGN KEY (`Cur_codigo`) REFERENCES `curso` (`Cur_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
