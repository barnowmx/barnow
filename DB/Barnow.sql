-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-06-2014 a las 21:38:15
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `Barnow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Bar`
--

CREATE TABLE IF NOT EXISTS `Bar` (
  `barId` int(11) NOT NULL AUTO_INCREMENT,
  `nombreBar` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `estadoId` int(11) DEFAULT NULL,
  `codigoPostal` int(11) DEFAULT NULL,
  `paisId` int(11) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `pagina` varchar(200) DEFAULT NULL,
  `RFC` varchar(100) DEFAULT NULL,
  `comentarios` longtext,
  PRIMARY KEY (`barId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Bar`
--

INSERT INTO `Bar` (`barId`, `nombreBar`, `direccion`, `ciudad`, `estadoId`, `codigoPostal`, `paisId`, `facebook`, `pagina`, `RFC`, `comentarios`) VALUES
(1, 'Barnow', 'Calle extaña No. 14', 'Mexico', 1, 56860, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contacto`
--

CREATE TABLE IF NOT EXISTS `Contacto` (
  `barId` int(11) NOT NULL AUTO_INCREMENT,
  `contactoId` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `telefono` decimal(10,0) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `celular` decimal(10,0) DEFAULT NULL,
  `rangoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`barId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Contacto`
--

INSERT INTO `Contacto` (`barId`, `contactoId`, `nombre`, `apellidos`, `telefono`, `mail`, `celular`, `rangoId`) VALUES
(1, 1, 'Rene', 'Garcia Santos', '5522125123', 'redfv@gmail.com', '5522125123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estado`
--

CREATE TABLE IF NOT EXISTS `Estado` (
  `estadoId` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`estadoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Estado`
--

INSERT INTO `Estado` (`estadoId`, `estado`) VALUES
(1, 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE IF NOT EXISTS `Pais` (
  `paisId` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`paisId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Pais`
--

INSERT INTO `Pais` (`paisId`, `pais`) VALUES
(1, 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Rango`
--

CREATE TABLE IF NOT EXISTS `Rango` (
  `rangoId` int(11) NOT NULL AUTO_INCREMENT,
  `rango` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rangoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Rango`
--

INSERT INTO `Rango` (`rangoId`, `rango`) VALUES
(1, 'Dueno');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
