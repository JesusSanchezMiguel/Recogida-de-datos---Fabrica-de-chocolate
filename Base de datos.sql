-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2025 a las 18:00:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_jsm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_alarmas`
--

CREATE TABLE `codigos_alarmas` (
  `Numero` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codigos_alarmas`
--

INSERT INTO `codigos_alarmas` (`Numero`, `Descripcion`) VALUES
(1, 'General: Parada de emergencia'),
(2, 'General: Puertas abiertas'),
(3, 'General: Disparo termico'),
(4, 'General: Baja presion de aire'),
(5, 'General: Fallo motor de arrastre linea general'),
(6, 'General: Alarma reserva'),
(7, 'General: Alarma reserva'),
(8, 'General: Alarma reserva'),
(9, 'General: Alarma reserva'),
(10, 'Dosificadora: Alarma general'),
(11, 'Dosificadora: Nivel Bajo Chocolate'),
(12, 'Dosificadora: Nivel Bajo Relleno'),
(13, 'Dosificadora: Alarma Baja temperatura'),
(14, 'Dosificadora: Alarma Alta temperatura'),
(15, 'Dosificadora: Alarma Dosificacion'),
(16, 'Dosificadora: Fallo resistencias calientamiento'),
(17, 'Dosificadora: Alarma Reserva '),
(18, 'Dosificadora: Alarma Reserva '),
(19, 'Dosificadora: Alarma Reserva '),
(20, 'Batidora: Time Out Batidora'),
(21, 'Batidora: Fallo presion de aire batidora'),
(22, 'Batidora: Alarma Reserva '),
(23, 'Batidora: Alarma Reserva '),
(24, 'Batidora: Alarma Reserva '),
(25, 'Batidora: Alarma Reserva '),
(26, 'Batidora: Alarma Reserva '),
(27, 'Batidora: Alarma Reserva '),
(28, 'Batidora: Alarma Reserva '),
(29, 'Batidora: Alarma Reserva '),
(30, 'Frigorifico: Alta temperatura'),
(31, 'Frigorifico: Baja temperatura'),
(32, 'Frigorifico: Fallo elevacion de moldes'),
(33, 'Frigorifico: Fallo translacion de moldes'),
(34, 'Frigorifico: Fallo general'),
(35, 'Frigorifico: Alarma reserva'),
(36, 'Frigorifico: Alarma reserva'),
(37, 'Frigorifico: Alarma reserva'),
(38, 'Frigorifico: Alarma reserva'),
(39, 'Frigorifico: Alarma reserva'),
(40, 'Desmoldeo: Fallo general'),
(41, 'Desmoldeo:  Fallo servomotor '),
(42, 'Desmoldeo: Fallo martillo'),
(43, 'Desmoldeo: Alarma reserva'),
(44, 'Desmoldeo: Alarma reserva'),
(45, 'Desmoldeo: Alarma reserva'),
(46, 'Desmoldeo: Alarma reserva'),
(47, 'Desmoldeo: Alarma reserva'),
(48, 'Desmoldeo: Alarma reserva'),
(49, 'Desmoldeo: Alarma reserva'),
(50, 'Comprobador: Fallo general'),
(51, 'Comprobador: Fallo Servomotror'),
(52, 'Comprobador: Fallo sensores'),
(53, 'Comprobador: Alarma reserva'),
(54, 'Comprobador: Alarma reserva'),
(55, 'Comprobador: Alarma reserva'),
(56, 'Comprobador: Alarma reserva'),
(57, 'Comprobador: Alarma reserva'),
(58, 'Comprobador: Alarma reserva'),
(59, 'Comprobador: Alarma reserva'),
(60, 'Descargador Moldes: Fallo general'),
(61, 'Descargador Moldes: Fallo servomotor'),
(62, 'Descargador Moldes: Fallo sensores'),
(63, 'Descargador Moldes:  Alarma reserva'),
(64, 'Descargador Moldes:  Alarma reserva'),
(65, 'Descargador Moldes:  Alarma reserva'),
(66, 'Descargador Moldes:  Alarma reserva'),
(67, 'Descargador Moldes:  Alarma reserva'),
(68, 'Descargador Moldes:  Alarma reserva'),
(69, 'Descargador Moldes:  Alarma reserva'),
(70, 'Cargador moldes: Fallo general'),
(71, 'Cargador moldes: Fallo servomotor'),
(72, 'Cargador moldes: Fallo sensores'),
(73, 'Cargador moldes: Alarma reserva'),
(74, 'Cargador moldes: Alarma reserva'),
(75, 'Cargador moldes: Alarma reserva'),
(76, 'Cargador moldes: Alarma reserva'),
(77, 'Cargador moldes: Alarma reserva'),
(78, 'Cargador moldes: Alarma reserva'),
(79, 'Cargador moldes: Alarma reserva'),
(80, 'Temperadora: Alarma temperatura chocolate baja'),
(81, 'Temperadora: Alarma temperatura chocolate alta'),
(82, 'Temperadora: Fallo bomba recirculacion chocolate'),
(83, 'Temperadora: Fallo bomba recirculacion agua'),
(84, 'Temperadora: Fallo resistencias'),
(85, 'Temperadora: Alarma reserva'),
(86, 'Temperadora: Alarma reserva'),
(87, 'Temperadora: Alarma reserva'),
(88, 'Temperadora: Alarma reserva'),
(89, 'Temperadora: Alarma reserva'),
(90, 'Temperadora: Alarma reserva'),
(91, 'Empaquetadora: Fallo cinta'),
(92, 'Empaquetadora: Fallo deteccion'),
(93, 'Empaquetadora: Fallo pegamento'),
(94, 'Empaquetadora: Fallo servomotor'),
(95, 'Empaquetadora: Alarma reserva'),
(96, 'Empaquetadora: Alarma reserva'),
(97, 'Empaquetadora: Alarma reserva'),
(98, 'Empaquetadora: Alarma reserva'),
(99, 'Empaquetadora: Alarma reserva'),
(100, 'Empaquetadora: Alarma reserva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_productos`
--

CREATE TABLE `codigos_productos` (
  `Codigo_Producto` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codigos_productos`
--

INSERT INTO `codigos_productos` (`Codigo_Producto`, `Descripcion`) VALUES
(1, 'Tableta Chocolate negro'),
(2, 'Tableta Chocolate blanco'),
(3, 'Tableta Chocolate con leche'),
(4, 'Tableta Chocolate y turron'),
(5, 'Tableta Chocolate negro con almendras'),
(6, 'Tableta Chocolate blanco y fresa'),
(7, 'Tableta Chocolate con leche con almendras'),
(8, 'Tableta Chocolate y vainilla'),
(9, 'Bombones Chololate negro'),
(10, 'Bombones Chololate con leche'),
(11, 'Bombones Chololate Blanco'),
(12, 'Bombones Chocolate negro relleno de crema'),
(13, 'Bombones Chocolate con leche relleno de crema'),
(14, 'Bombones Chocolate blanco relleno de crema'),
(15, 'Bombones Chocolate relleno de licor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_alarmas`
--

CREATE TABLE `datos_alarmas` (
  `Id_alarma` bigint(20) NOT NULL,
  `codigo_alarma` int(11) NOT NULL,
  `id_Produccion` bigint(20) NOT NULL,
  `Hora_inicio_ALR` datetime NOT NULL DEFAULT current_timestamp(),
  `Hora_fin_ALR` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_alarmas`
--

INSERT INTO `datos_alarmas` (`Id_alarma`, `codigo_alarma`, `id_Produccion`, `Hora_inicio_ALR`, `Hora_fin_ALR`) VALUES
(95, 1, 106, '2025-11-24 14:24:44', '2025-11-24 14:24:45'),
(96, 2, 106, '2025-11-24 14:24:47', '2025-11-24 14:24:48'),
(97, 1, 107, '2025-11-24 14:25:12', '2025-11-24 14:25:14'),
(98, 2, 107, '2025-11-24 14:25:16', '2025-11-24 14:25:17'),
(99, 1, 108, '2025-11-24 14:42:54', '2025-11-24 14:42:56'),
(100, 10, 108, '2025-11-24 14:44:12', '2025-11-24 14:44:22'),
(101, 1, 109, '2025-11-24 14:47:38', '2025-11-24 14:47:39'),
(102, 10, 109, '2025-11-24 14:48:17', '2025-11-24 14:48:35'),
(103, 10, 109, '2025-11-24 14:48:36', '2025-11-24 14:48:43'),
(104, 22, 110, '2025-11-30 11:13:58', '2025-11-30 11:14:00'),
(105, 12, 111, '2025-11-30 11:19:18', '2025-11-30 11:20:04'),
(106, 12, 111, '2025-11-30 11:20:08', '2025-11-30 11:31:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_produccion`
--

CREATE TABLE `datos_produccion` (
  `Id_Produccion` bigint(20) NOT NULL,
  `Codigo_producto` int(11) NOT NULL,
  `Unidades_Fabricadas` int(11) NOT NULL DEFAULT 0,
  `Hora_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `Hora_fin` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_produccion`
--

INSERT INTO `datos_produccion` (`Id_Produccion`, `Codigo_producto`, `Unidades_Fabricadas`, `Hora_inicio`, `Hora_fin`) VALUES
(100, 3, 7, '2025-11-24 13:50:34', '2025-11-24 13:51:23'),
(101, 1, 0, '2025-11-24 13:59:15', '2025-11-24 13:59:38'),
(102, 3, 0, '2025-11-24 14:05:59', '2025-11-24 14:06:10'),
(103, 1, 0, '2025-11-24 14:11:29', '2025-11-24 14:11:51'),
(104, 2, 1, '2025-11-24 14:22:04', '2025-11-24 14:22:15'),
(105, 13, 30, '2025-11-24 14:23:17', '2025-11-24 14:23:44'),
(106, 5, 20, '2025-11-24 14:24:41', '2025-11-24 14:24:58'),
(107, 14, 15, '2025-11-24 14:25:07', '2025-11-24 14:25:55'),
(108, 12, 33, '2025-11-24 14:42:48', '2025-11-24 14:45:16'),
(109, 10, 33, '2025-11-24 14:47:34', '2025-11-24 14:48:55'),
(110, 9, 12, '2025-11-30 11:13:01', '2025-11-30 11:14:09'),
(111, 1, 0, '2025-11-30 11:19:09', '2025-11-30 11:19:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` bigint(11) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Administrador` tinyint(1) NOT NULL,
  `Fecha_ingreso` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `Password`, `Administrador`, `Fecha_ingreso`) VALUES
(21, 'Isabel', '0000', 1, '2025-09-26 20:24:11'),
(37, 'Carlos', '1111', 0, '2025-10-22 19:02:09'),
(38, 'Admin', '1001', 1, '2025-10-22 19:10:22'),
(43, 'Jesus', '1234', 0, '2025-10-29 16:59:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigos_alarmas`
--
ALTER TABLE `codigos_alarmas`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `Numero` (`Numero`);

--
-- Indices de la tabla `codigos_productos`
--
ALTER TABLE `codigos_productos`
  ADD PRIMARY KEY (`Codigo_Producto`),
  ADD KEY `Codigo_Producto` (`Codigo_Producto`);

--
-- Indices de la tabla `datos_alarmas`
--
ALTER TABLE `datos_alarmas`
  ADD PRIMARY KEY (`Id_alarma`),
  ADD UNIQUE KEY `Id_alarma` (`Id_alarma`),
  ADD KEY `codigo_alarma` (`codigo_alarma`),
  ADD KEY `id_Produccion` (`id_Produccion`);

--
-- Indices de la tabla `datos_produccion`
--
ALTER TABLE `datos_produccion`
  ADD PRIMARY KEY (`Id_Produccion`),
  ADD KEY `Codido_producto` (`Codigo_producto`),
  ADD KEY `Id_Produccion` (`Id_Produccion`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_alarmas`
--
ALTER TABLE `datos_alarmas`
  MODIFY `Id_alarma` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `datos_produccion`
--
ALTER TABLE `datos_produccion`
  MODIFY `Id_Produccion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_alarmas`
--
ALTER TABLE `datos_alarmas`
  ADD CONSTRAINT `datos_alarmas_ibfk_1` FOREIGN KEY (`codigo_alarma`) REFERENCES `codigos_alarmas` (`Numero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_alarmas_ibfk_2` FOREIGN KEY (`id_Produccion`) REFERENCES `datos_produccion` (`Id_Produccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_produccion`
--
ALTER TABLE `datos_produccion`
  ADD CONSTRAINT `datos_produccion_ibfk_1` FOREIGN KEY (`Codigo_producto`) REFERENCES `codigos_productos` (`Codigo_Producto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
