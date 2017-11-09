-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2017 a las 12:25:34
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
-- Estructura de tabla para la tabla `anhos`
--

CREATE TABLE `anhos` (
  `Ano_codigo` int(11) NOT NULL,
  `Ano_nombre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `anhos`
--

INSERT INTO `anhos` (`Ano_codigo`, `Ano_nombre`) VALUES
(1, 2017),
(2, 2018),
(3, 2019),
(4, 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Asi_codigo` int(11) NOT NULL,
  `Asi_nombre` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Cur_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`Asi_codigo`, `Asi_nombre`, `Cur_codigo`) VALUES
(1, 'asignatura1', 1),
(2, 'matematicas', 1),
(3, 'Español', 1),
(4, 'Español', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `Col_nit` int(11) NOT NULL,
  `Col_nombre` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Col_direccion` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Col_telefono` int(11) NOT NULL,
  `Col_Rector` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Col_logo` varchar(45) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`Col_nit`, `Col_nombre`, `Col_direccion`, `Col_telefono`, `Col_Rector`, `Col_logo`) VALUES
(123, 'ALEJANDRO GARZON', '2995 montgomery ave', 2147483647, 'juan perez', 'imagen/20171025051943.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Cur_codigo` int(11) NOT NULL,
  `Cur_nombre` varchar(45) COLLATE utf32_spanish_ci NOT NULL COMMENT '	',
  `Cur_ano` varchar(4) COLLATE utf32_spanish_ci NOT NULL,
  `Doc_cedula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Cur_codigo`, `Cur_nombre`, `Cur_ano`, `Doc_cedula`) VALUES
(1, 'Curso1', '2017', 324234),
(2, 'Curso2', '2017', 0),
(3, 'Curso3', '2018', 324234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Doc_cedula` int(11) NOT NULL,
  `Doc_nombres` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Doc_apellidos` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Doc_genero` char(1) COLLATE utf32_spanish_ci NOT NULL,
  `Doc_telefono` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Doc_correo` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Usu_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`Doc_cedula`, `Doc_nombres`, `Doc_apellidos`, `Doc_genero`, `Doc_telefono`, `Doc_correo`, `Usu_codigo`) VALUES
(324234, 'ALEJANDRO', 'GARZON', 'M', '7348297708', 'yag_cast@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_has_asignatura`
--

CREATE TABLE `docente_has_asignatura` (
  `Doc_cedula` int(11) NOT NULL,
  `Asi_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `Nota_final` double NOT NULL,
  `Nota_corte1` double NOT NULL,
  `Nota_corte2` double NOT NULL,
  `Nota_corte3` double NOT NULL,
  `Asi_codigo` int(11) NOT NULL,
  `Est_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`Nota_final`, `Nota_corte1`, `Nota_corte2`, `Nota_corte3`, `Asi_codigo`, `Est_codigo`) VALUES
(1.3333333333333, 4, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `Per_codigo` int(11) NOT NULL,
  `Per_perfil` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`Per_codigo`, `Per_perfil`) VALUES
(1, 'Administrador'),
(2, 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `Seg_año` int(11) NOT NULL,
  `Periodo` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Observacion` varchar(500) COLLATE utf32_spanish_ci NOT NULL,
  `Est_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`Seg_año`, `Periodo`, `Observacion`, `Est_codigo`) VALUES
(2017, '1', 'prueba', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Usu_codigo` int(11) NOT NULL,
  `Usu_nombre` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Usu_clave` varchar(45) COLLATE utf32_spanish_ci NOT NULL,
  `Per_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Usu_codigo`, `Usu_nombre`, `Usu_clave`, `Per_codigo`) VALUES
(1, 'uno', '827ccb0eea8a706c4c34a16891f84e7b', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anhos`
--
ALTER TABLE `anhos`
  ADD PRIMARY KEY (`Ano_codigo`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`Asi_codigo`),
  ADD UNIQUE KEY `idClase_UNIQUE` (`Asi_codigo`),
  ADD KEY `fk_Asignatura_Curso1_idx` (`Cur_codigo`);

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`Col_nit`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Cur_codigo`),
  ADD UNIQUE KEY `idCurso_UNIQUE` (`Cur_codigo`),
  ADD UNIQUE KEY `unique_index` (`Cur_ano`,`Doc_cedula`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`Doc_cedula`),
  ADD UNIQUE KEY `idDocente_UNIQUE` (`Doc_cedula`),
  ADD KEY `fk_Docente_Usuario1_idx` (`Usu_codigo`);

--
-- Indices de la tabla `docente_has_asignatura`
--
ALTER TABLE `docente_has_asignatura`
  ADD PRIMARY KEY (`Doc_cedula`,`Asi_codigo`),
  ADD KEY `fk_Docente_has_Asignatura_Asignatura1_idx` (`Asi_codigo`),
  ADD KEY `fk_Docente_has_Asignatura_Docente1_idx` (`Doc_cedula`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Est_codigo`),
  ADD UNIQUE KEY `idEstudiante_UNIQUE` (`Est_codigo`),
  ADD KEY `fk_Estudiante_Curso1_idx` (`Cur_codigo`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD KEY `fk_Notas_Asignatura1_idx` (`Asi_codigo`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`Per_codigo`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`Seg_año`),
  ADD KEY `fk_Seguimiento_Estudiante1_idx` (`Est_codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Usu_codigo`),
  ADD UNIQUE KEY `idUsuario_UNIQUE` (`Usu_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anhos`
--
ALTER TABLE `anhos`
  MODIFY `Ano_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `Asi_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Cur_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Est_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `Per_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Usu_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `fk_Asignatura_Curso1` FOREIGN KEY (`Cur_codigo`) REFERENCES `curso` (`Cur_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `fk_Docente_Usuario1` FOREIGN KEY (`Usu_codigo`) REFERENCES `usuario` (`Usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente_has_asignatura`
--
ALTER TABLE `docente_has_asignatura`
  ADD CONSTRAINT `fk_Docente_has_Asignatura_Asignatura1` FOREIGN KEY (`Asi_codigo`) REFERENCES `asignatura` (`Asi_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Docente_has_Asignatura_Docente1` FOREIGN KEY (`Doc_cedula`) REFERENCES `docente` (`Doc_cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_Estudiante_Curso1` FOREIGN KEY (`Cur_codigo`) REFERENCES `curso` (`Cur_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_Notas_Asignatura1` FOREIGN KEY (`Asi_codigo`) REFERENCES `asignatura` (`Asi_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `fk_Seguimiento_Estudiante1` FOREIGN KEY (`Est_codigo`) REFERENCES `estudiante` (`Est_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
