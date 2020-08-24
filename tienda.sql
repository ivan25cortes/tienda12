-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2020 a las 19:38:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `f_registro` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `id_usuario`, `f_registro`, `estado`) VALUES
(1, 2, '2020-08-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencia`
--

CREATE TABLE `existencia` (
  `id_existencia` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `talla` enum('Chica','Mediana','Grande','Extra Grande') COLLATE latin1_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `existencia`
--

INSERT INTO `existencia` (`id_existencia`, `id_producto`, `talla`, `cantidad`) VALUES
(1, 1, 'Grande', 5),
(2, 1, 'Mediana', 6),
(3, 1, 'Extra Grande', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `marca` enum('Adidas','Nike','Puma','Joma') COLLATE latin1_spanish_ci NOT NULL,
  `categoria` enum('Hombre','Mujer','Niño') COLLATE latin1_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `f_registro` datetime NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `marca`, `categoria`, `precio`, `descripcion`, `f_registro`, `estado`) VALUES
(1, 'Jersey Cruz Azul', 'Joma', 'Hombre', 1200, 'Jersey Cruz Azul para hombre', '2020-08-23 00:38:19', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `a_paterno` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `a_materno` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `f_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `a_paterno`, `a_materno`, `email`, `f_nacimiento`) VALUES
(1, 'José Luis', 'Hernández', 'Escuela', 'joseluis@gmail.com', '2000-06-18'),
(2, 'Uriel ', 'Hernández', 'Hernandez', 'uriel@gmail.com', '2000-03-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_ventas` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `banco` enum('BVBA','ScotiaBank','Visa','MasterCard') COLLATE latin1_spanish_ci NOT NULL,
  `no_tarjeta` int(11) NOT NULL,
  `f_compra` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_ventas`, `id_usuario`, `banco`, `no_tarjeta`, `f_compra`) VALUES
(1, 1, 'Visa', 1234567899, '2020-08-23 00:57:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_producto`
--

CREATE TABLE `ventas_producto` (
  `id_venta` int(11) NOT NULL,
  `id_existencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `ventas_producto`
--

INSERT INTO `ventas_producto` (`id_venta`, `id_existencia`) VALUES
(1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`),
  ADD KEY `fk_administradores_usuarios` (`id_usuario`);

--
-- Indices de la tabla `existencia`
--
ALTER TABLE `existencia`
  ADD PRIMARY KEY (`id_existencia`),
  ADD KEY `fk_existencias_productos` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `fk_ventas_usuario` (`id_usuario`);

--
-- Indices de la tabla `ventas_producto`
--
ALTER TABLE `ventas_producto`
  ADD PRIMARY KEY (`id_venta`,`id_existencia`),
  ADD KEY `fk_venta_existencia_1` (`id_existencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `existencia`
--
ALTER TABLE `existencia`
  MODIFY `id_existencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `fk_administradores_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `existencia`
--
ALTER TABLE `existencia`
  ADD CONSTRAINT `fk_existencias_productos` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_ventas_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas_producto`
--
ALTER TABLE `ventas_producto`
  ADD CONSTRAINT `fk_venta_existencia_1` FOREIGN KEY (`id_existencia`) REFERENCES `existencia` (`id_existencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_productos_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_ventas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
