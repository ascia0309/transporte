-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2018 a las 23:06:34
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbtransporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menid` int(11) NOT NULL,
  `mensubid` int(11) DEFAULT NULL,
  `mennombre` varchar(45) DEFAULT NULL,
  `mencontrolador` varchar(45) DEFAULT NULL,
  `menaccion` varchar(20) DEFAULT NULL,
  `menicono` varchar(30) DEFAULT NULL,
  `menorden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menid`, `mensubid`, `mennombre`, `mencontrolador`, `menaccion`, `menicono`, `menorden`) VALUES
(1, NULL, 'Usuario', 'Principal', NULL, NULL, 1),
(2, 1, 'busqueda usuario', 'Principal', 'index', NULL, 2),
(3, 1, 'Asignar Perfil', 'Usuario', 'listar', NULL, 3),
(4, NULL, 'Venta', 'Usuario', NULL, NULL, 4),
(5, 4, 'realizar venta', 'Usuario', 'listar', NULL, 5),
(6, 4, 'consulta venta', 'Principal', 'editar', NULL, 6),
(7, NULL, 'Inicio', 'Principal', NULL, NULL, 7),
(8, 7, 'Principal', 'Principal', 'index', NULL, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mep`
--

CREATE TABLE `mep` (
  `mepid` int(11) NOT NULL,
  `perid` int(11) NOT NULL,
  `menid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mep`
--

INSERT INTO `mep` (`mepid`, `perid`, `menid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 4),
(5, 2, 4),
(6, 1, 7),
(7, 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `perid` int(11) NOT NULL,
  `pernombre` varchar(20) DEFAULT NULL,
  `perdescripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`perid`, `pernombre`, `perdescripcion`) VALUES
(1, 'Administrador', NULL),
(2, 'Vendedor', NULL),
(3, 'Secretaria', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuid` int(11) NOT NULL,
  `perid` int(11) NOT NULL,
  `usudni` varchar(8) DEFAULT NULL,
  `usuemail` varchar(30) DEFAULT NULL,
  `usucontrasenia` varchar(1000) DEFAULT NULL,
  `usunombres` varchar(20) DEFAULT NULL,
  `usuapellidos` varchar(30) DEFAULT NULL,
  `usucelular` varchar(9) DEFAULT NULL,
  `usuestado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuid`, `perid`, `usudni`, `usuemail`, `usucontrasenia`, `usunombres`, `usuapellidos`, `usucelular`, `usuestado`) VALUES
(1, 1, '46701111', 'admin@seguridad.com', 'admin', 'Admin', 'Adminini', '993111119', 1),
(7, 1, '11112222', 'hola@hotmail.com', 'hola', 'Dan', 'Jin', '923456781', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menid`),
  ADD KEY `fk_menu_menu1_idx` (`mensubid`);

--
-- Indices de la tabla `mep`
--
ALTER TABLE `mep`
  ADD PRIMARY KEY (`mepid`,`perid`,`menid`),
  ADD KEY `fk_perfil_has_menu_menu1_idx` (`menid`),
  ADD KEY `fk_perfil_has_menu_perfil1_idx` (`perid`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`perid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuid`),
  ADD KEY `fk_usuario_perfil_idx` (`perid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mep`
--
ALTER TABLE `mep`
  MODIFY `mepid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `perid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`mensubid`) REFERENCES `menu` (`menid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mep`
--
ALTER TABLE `mep`
  ADD CONSTRAINT `fk_perfil_has_menu_menu1` FOREIGN KEY (`menid`) REFERENCES `menu` (`menid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfil_has_menu_perfil1` FOREIGN KEY (`perid`) REFERENCES `perfil` (`perid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`perid`) REFERENCES `perfil` (`perid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
