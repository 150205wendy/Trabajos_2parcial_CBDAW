-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 09:45:26
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
-- Base de datos: `venta_relojes_wajc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` varchar(50) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `A_P` varchar(15) NOT NULL,
  `A_M` varchar(15) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `A_P`, `A_M`, `telefono`, `direccion`, `email`) VALUES
('02', 'Samuel Esai', 'Montes', 'Garcia', '4181234565', 'Las palomas #22', 'samael98@gmail.com'),
('03', 'Antonio Mario', 'Saldivar', 'Mendez', '4192334561', 'Querretaro #90', 'saeet22@gmail.com'),
('04', 'Marina Aliase', 'Wensly', 'Santias', '4184556663', 'Angel Independencia #34', 'wensly34@gmail.com'),
('05', 'Carlos Fernando', 'Sainz', 'Castro', '4189976554', 'Madrid #44', 'carlosainz23@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `id_provedor` varchar(50) NOT NULL,
  `nombre_empresa` varchar(50) NOT NULL,
  `representante` varchar(50) NOT NULL,
  `trasporte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provedor`
--

INSERT INTO `provedor` (`id_provedor`, `nombre_empresa`, `representante`, `trasporte`) VALUES
('28399RL', 'ROLEX', 'Santiago Villas Rojas', 'Convoy'),
('4578765RM', 'Rich Millie', 'Andres Leonardo Perez Garibay', 'Convoy'),
('65643HB', 'Hublot', 'Pierre Phellipe Gasly', 'Convoy'),
('677899OM', 'Omega', 'Nicholas Santa Bocanegra', 'Convoy'),
('78748CV', 'Casio Vintage', 'Lorenzo Arthur Megant Perez', 'Convoy'),
('987457PP', 'Patek Philippe', 'Charles Perceval Leclerc', 'Convoy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` varchar(50) NOT NULL,
  `nombre_vendedor` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` tinyint(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nombre_vendedor`, `apellidos`, `telefono`, `direccion`, `email`) VALUES
('V1001', 'Ana Lucero', 'Martinez Verde', 127, 'Las lomas del Parque #23', 'LuceroCliente01@gmail.com'),
('V1002', 'Julio Santiago', 'Moran Perez', 127, '15 OCTUBRE #2', 'julioS02@gmail.com'),
('V1003', 'Lucas Aden', 'Ramirez Martinez', 127, 'El polemon #76', 'lucasA03@gmail.com'),
('V1004', 'Leticia Guadalupe', 'Barajas Delgado', 127, 'Queretaro #23', 'leticiaG04@gmail.com'),
('V1005', 'Aldo Giovanni', 'Marcel Kipo', 127, 'Flores #9', 'aldoG05@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `index_email` (`email`);

--
-- Indices de la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD PRIMARY KEY (`id_provedor`,`nombre_empresa`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`),
  ADD KEY `index_email` (`email`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `vendedor` FOREIGN KEY (`id_cliente`) REFERENCES `vendedor` (`id_vendedor`);

--
-- Filtros para la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD CONSTRAINT `provedor` FOREIGN KEY (`id_provedor`) REFERENCES `vendedor` (`id_vendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
