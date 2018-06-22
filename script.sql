-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-06-2018 a las 01:47:09
-- Versión del servidor: 5.7.21
-- Versión de PHP: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `troncal_libros_clau`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `codigolibro` varchar(20) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `anio` int(11) NOT NULL,
  `nombreusuario` varchar(20) NOT NULL,
  `descripcion` text,
  `imagen` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigolibro`, `titulo`, `autor`, `anio`, `nombreusuario`, `descripcion`, `imagen`) VALUES
('12', 'The Caves of Steel', 'Isaac Assimov', 1954, 'claudia', '', ''),
('1234', 'De la Tierra a la Luna', 'Julio Verne', 1930, 'claudia', 'Es un libro espectacular de ciencia ficción', NULL),
('12345', 'el Quijote', 'Cervantes', 1850, 'claudia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec leo quis urna egestas tempus. Phasellus ut volutpat leo. Suspendisse volutpat facilisis erat eget tincidunt. ', NULL),
('134', '20k de viaje submarino', 'Julio Verne', 1827, 'claudia', 'Lorem Ipsum', ''),
('16', '20k de viaje submarino', 'Julio Verne', 1870, 'pepe', 'Veinte mil leguas de viaje submarino es una de las obras literarias más conocidas del escritor francés Julio Verne.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `password`) VALUES
('claudia', 'mardones'),
('pepe', 'pepe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`codigolibro`),
  ADD KEY `FK_USUARIO` (`nombreusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nombre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `FK_USUARIO` FOREIGN KEY (`nombreusuario`) REFERENCES `usuarios` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
