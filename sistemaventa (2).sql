-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 01:32:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` int(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(1, 75486457, 'Miguel', 936365248, 'sadasdsa', 'persona natural', '2022-04-30 01:23:02'),
(3, 73809619, 'Juan', 93256478, 'Av siempre viva', 'persona natural', '2022-04-30 12:29:12'),
(4, 13469785, 'Jose', 964539856, 'provincia', 'Persona Natural', '2022-04-30 03:42:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nombre`, `ruc`, `telefono`, `direccion`, `razon`) VALUES
(1, 'Boticas y Salud', '293849583', 948573958, 'Lima - Peru', 'Boticas y Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `cod_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `cod_pro`, `cantidad`, `precio`, `id_venta`) VALUES
(5, 213, 6, '213', 4),
(6, 132, 5, '1532', 4),
(7, 213, 6, '213', 5),
(8, 132, 5, '1532', 5),
(9, 364, 30, '364', 6),
(10, 132, 4, '1532', 6),
(11, 213, 3, '213', 7),
(12, 132, 1, '1532', 7),
(13, 213, 3, '213', 8),
(14, 132, 1, '1532', 8),
(15, 132, 6, '1532', 9),
(16, 213, 1, '213', 9),
(17, 213, 6, '213', 10),
(18, 132, 1, '1532', 10),
(19, 132, 6, '1532', 11),
(20, 213, 1, '213', 11),
(21, 132, 5, '1532', 12),
(22, 213, 1, '213', 12),
(23, 364, 3, '364', 12),
(24, 132, 1, '1532', 13),
(25, 213, 1, '213', 13),
(26, 364, 1, '364', 13),
(27, 364, 1, '364', 14),
(28, 132, 1, '1532', 14),
(29, 213, 1, '213', 14),
(30, 213, 2, '213', 15),
(31, 132, 2, '1532', 16),
(32, 213, 2, '213', 17),
(33, 132, 3, '1532', 18),
(34, 213, 2, '213', 19),
(35, 132, 1, '1532', 20),
(36, 132, 1, '1532', 21),
(37, 132, 5, '1532', 22),
(38, 213, 7, '213', 22),
(39, 456, 10, '456', 22),
(40, 789, 7, '789', 22),
(41, 213, 3, '213', 23),
(42, 132, 1, '1532', 23),
(43, 456, 5, '456', 24),
(44, 789, 3, '789', 24),
(45, 213, 10, '213', 25),
(46, 789, 5, '789', 26),
(47, 456, 3, '456', 27),
(48, 132, 1, '1532', 28),
(49, 789, 1, '789', 29),
(50, 789, 1, '789', 30),
(51, 789, 1, '789', 31),
(52, 456, 1, '456', 32),
(53, 456, 1, '456', 33),
(54, 789, 2, '789', 34),
(55, 789, 2, '789', 35),
(56, 213, 2, '213', 36),
(57, 789, 2, '789', 37),
(58, 132, 2, '1532', 38),
(59, 213, 2, '213', 39),
(60, 789, 2, '854', 39),
(61, 456, 5, '456', 40),
(62, 789, 3, '854', 41),
(63, 789, 3, '854', 42),
(64, 132, 2, '1532', 43),
(65, 213, 1, '213', 43),
(66, 1, 2, '10', 44),
(67, 17, 3, '20', 44),
(68, 1, 1, '10', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(1, '000001', 'Azifar 200mg/5ml Suspensión 30ml', 'Distribuidores SRL', 997, '10', '2022-05-16 17:37:35'),
(13, '000002', 'Perspirex Strong', 'B. Braun', 1000, '74', '2022-05-16 17:39:05'),
(14, '000003', 'Acitranesa 1g', 'B. Braun', 1000, '30', '2022-05-16 17:40:02'),
(15, '000004', 'Alendroporosis 70 mg', 'B. Braun', 1000, '48', '2022-05-16 17:41:03'),
(16, '000005', 'Artriflam 15 mg', 'Sebal Farma Distribuciones S.A.C.', 1000, '17', '2022-05-16 17:51:29'),
(17, '000006', 'Celexidox 200 mg', 'Distribuidores SRL', 1000, '10', '2022-05-16 17:55:27'),
(20, '000007', 'Doloacemifem 120 mg', 'Sebal Farma Distribuciones S.A.C.', 1000, '7', '2022-05-16 18:01:22'),
(21, '000008', 'Doloacemifem 500 mg', 'Distribuidores SRL', 1000, '1', '2022-05-16 18:01:55'),
(22, '000009', 'Dolodic Retard', 'Distribuidores SRL', 1000, '12', '2022-05-16 18:02:18'),
(23, '000010', 'Etorcox 90 mg', 'Sebal Farma Distribuciones S.A.C.', 1000, '25', '2022-05-16 18:03:51'),
(24, '000011', 'Flamalgesico 100 mg /5 ml', 'B. Braun', 1000, '9', '2022-05-16 18:04:47'),
(25, '000012', 'Flamalgesico 400 mg', 'Distribuidores SRL', 1000, '4', '2022-05-16 18:05:28'),
(26, '000013', 'Flexi Hot Nf Ungüento', 'Distribuidores SRL', 1000, '21', '2022-05-16 18:07:57'),
(27, '000014', 'Flogoflex Relax', 'B. Braun', 1000, '15', '2022-05-16 18:08:36'),
(28, '000015', 'Gestafol 0.50 mg', 'Sebal Farma Distribuciones S.A.C.', 1000, '8', '2022-05-16 18:08:58'),
(29, '000016', 'Gestafol Duo', 'Distribuidores SRL', 1000, '10', '2022-05-16 18:09:20'),
(30, '000017', 'Ginofem Óvulos', 'B. Braun', 997, '20', '2022-05-16 18:09:42'),
(31, '000018', 'Herbacontrax Parches', 'B. Braun', 1000, '15', '2022-05-16 18:10:03'),
(32, '000019', 'Ibandroporosis', 'Sebal Farma Distribuciones S.A.C.', 1000, '140', '2022-05-16 18:10:43'),
(33, '000020', 'Ketradol 10 mg', 'Sebal Farma Distribuciones S.A.C.', 1000, '12', '2022-05-16 18:11:08'),
(34, '000021', 'Maxiflam Forte 550 mg', 'B. Braun', 1000, '10', '2022-05-16 18:11:34'),
(35, '000022', 'Metrofem Óvulos', 'Distribuidores SRL', 1000, '25', '2022-05-16 18:12:01'),
(36, '000023', 'Metroflaxyl 500 mg', 'Sebal Farma Distribuciones S.A.C.', 1000, '10', '2022-05-16 18:12:27'),
(37, '000024', 'Movigor Flex', 'Sebal Farma Distribuciones S.A.C.', 1000, '5', '2022-05-16 18:12:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` varchar(15) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(6, '12342354363', 'Distribuidores SRL', 938472679, 'Jirón Añaquito 169 B - San Miguel ', 'P & G DISTRIBUIDORES SRL', '2022-05-16 17:09:11'),
(7, '17483647243', 'B. Braun', 958795738, 'Avenida Separadora Industrial 887 Urb. Miguel Grau', 'B. BRAUN', '2022-05-16 17:15:58'),
(8, '1234568741', 'Sebal Farma Distribuciones S.A.C.', 958968594, 'Avenida Brígida Silva de Ochoa 174 Int. 4 - San Miguel - Lima', 'Sebal Farma Distribuciones', '2022-05-16 17:17:17'),
(9, '1111111111', 'farmaceutica SAC', 938472638, 'San Isidro', 'Farma SAC', '2022-05-22 02:12:57'),
(14, '12345678901', 'DEISTER', 928658342, 'Av las flores', 'DEISTER', '2022-05-22 10:31:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'jherson', '123@gmail.com', '12345', 'Administrador'),
(2, 'estefano', '456@gmail.com', '11111', 'Laborador'),
(3, 'juan', 'juan@gmail.com', '456', 'Laborador'),
(4, 'luis', 'luis@gmail.com', '789', 'Laborador'),
(5, 'alex ', 'alex@gmail.com', 'alex', 'Laborador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Vendedor` varchar(100) CHARACTER SET latin1 NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `Vendedor`, `total`, `fecha`) VALUES
(44, 'Juan', 'Botica', '80.00', '16/05/2022'),
(45, 'Miguel', 'jherson', '10.00', '20/05/2022');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
