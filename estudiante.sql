-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 07:50:32
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_wajc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `num_control` varchar(18) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `edad` tinyint(4) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` text NOT NULL,
  `grupo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`num_control`, `nombre`, `apellidos`, `edad`, `telefono`, `direccion`, `grupo`) VALUES
('00120032321076', 'Angie Samantha', 'Masias Alarcon', 15, '4181132330', 'Lomas Paz #12', '5PV'),
('001200323321076', 'Angie Samantha', 'Masias Alarcon', 15, '4181132330', 'Lomas Paz #12', '1PV'),
('0012009354443376', 'Ali Sia', 'Moreno Sanchez', 17, '4181134980', 'Porfirio Diaz #5', '5PM'),
('001200935444376', 'Ali Sia', 'Moreno Sanchez', 17, '4181134980', 'Porfirio Diaz #5', '5PM'),
('001264543467336354', 'Mauricio Lucas', 'Martinez Arredondo', 16, '4181123890', 'Las lomas #22', '3PV'),
('0012645434676354', 'Mauricio Lucas', 'Martinez Arredondo', 16, '4181123890', 'Las lomas #22', '3PV');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`num_control`),
  ADD KEY `index_estudiante` (`grupo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `grupo` FOREIGN KEY (`num_control`) REFERENCES `grupo` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
