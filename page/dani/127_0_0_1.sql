-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2023 a las 20:30:35
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbdddnaomy`
--
CREATE DATABASE IF NOT EXISTS `bbdddnaomy` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `bbdddnaomy`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfarmacos`
--

CREATE TABLE `tfarmacos` (
  `inchi` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_fichero` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_fichero` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `smiles` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_creador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tproteinas`
--

CREATE TABLE `tproteinas` (
  `resolucion` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `metodo` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_fichero` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_fichero` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `especie` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_creador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `numero_telefono` int(11) NOT NULL,
  `codigo_postal` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `nom_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `contrasenya` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `DNI` varchar(9) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `correo` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`numero_telefono`, `codigo_postal`, `nom_usuario`, `contrasenya`, `tipo`, `DNI`, `ID`, `correo`) VALUES
(645626325, '08042', 'Titanrockxl', 'daniel2002', 1, '36383421A', 1, 'daniel40488@gmail.com'),
(634819247, '08030', 'Namy Liquo', '123456', 2, '89562318L', 2, 'ncastell12@yahoo.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tfarmacos`
--
ALTER TABLE `tfarmacos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `tfarmacos_ibfk_1` (`id_creador`);

--
-- Indices de la tabla `tproteinas`
--
ALTER TABLE `tproteinas`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `tproteinas_ibfk_1` (`id_creador`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tfarmacos`
--
ALTER TABLE `tfarmacos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tproteinas`
--
ALTER TABLE `tproteinas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tfarmacos`
--
ALTER TABLE `tfarmacos`
  ADD CONSTRAINT `tfarmacos_ibfk_1` FOREIGN KEY (`id_creador`) REFERENCES `tusuario` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tproteinas`
--
ALTER TABLE `tproteinas`
  ADD CONSTRAINT `tproteinas_ibfk_1` FOREIGN KEY (`id_creador`) REFERENCES `tusuario` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
