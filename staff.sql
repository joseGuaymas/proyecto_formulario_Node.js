-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2021 a las 03:14:33
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

CREATE TABLE `staff` (
  `id_empleado` int(2) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `puesto` varchar(30) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `staff`
--

INSERT INTO `staff` (`id_empleado`, `nombre`, `apellido`, `puesto`, `img`) VALUES
(1, 'Luciano', 'Álvarez', 'Business Analyst', 'https://media.istockphoto.com/photos/success-businessman-smiling-in-office-picture-id1189303518?k=20&m=1189303518&s=612x612&w=0&h=IjiDHtLQEBxdOQF-ukX-w4H53HRum8VAsoSj12ShX_s='),
(2, 'Mariana', 'Costas', 'Data Engineer', 'https://media.istockphoto.com/photos/modern-business-woman-picture-id1190733435?k=20&m=1190733435&s=612x612&w=0&h=H4E84UpKSsQUrbDIl4CCkHX7etijK5SLaUOUZag55pQ='),
(3, 'Esteban', 'Pistochi', 'General Manager', 'https://media.istockphoto.com/photos/mature-mixed-race-business-man-picture-id1059661424?k=20&m=1059661424&s=612x612&w=0&h=CLL4tto10GPo1gtMR9c-kPmf8VkvodjvTyqvtEuTLtg='),
(4, 'Lucía', 'Verdini', 'Data Scientist', 'https://media.istockphoto.com/photos/successful-mature-business-woman-looking-at-camera-picture-id1189303232?k=20&m=1189303232&s=612x612&w=0&h=wSES-gKPNgofHjBFjQLb3-ucjy9Ey2Dxq0m1X2MyGFw=');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
