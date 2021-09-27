-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2021 a las 03:01:56
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `primernombre` varchar(30) NOT NULL,
  `primerapellido` varchar(30) NOT NULL,
  `rut` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`primernombre`, `primerapellido`, `rut`, `correo`, `clave`) VALUES
('Felipe', 'Ramirez', 17800300, 'felipe.ramirez@gmail.com', '8020e'),
('Fernando', 'Loncon', 17800301, 'fernando.loncon@gmail.com', '8021e'),
('Genesis', 'Sandoval', 17800302, 'genesis.sandoval@gmail.com', '8022e'),
('Jaime', 'Pavez', 17800303, 'jaime.pavez@gmail.com', '8023e'),
('Nicole', 'Salazar', 17800304, 'nicole.salazar@gmail.com', '8024e'),
('Elsa', 'Torres', 17800305, 'elsa.torres@gmail.com', '8025e'),
('Juan', 'Millan', 17800306, 'juan.millan@gmail.com', '8026e'),
('Sara', 'Palominos', 17800307, 'sara.palominos@gmail.com', '8027e'),
('Belen', 'Vidal', 17800308, 'belen.vidal@gmail.com', '8028e'),
('William', 'Morelli', 17800309, 'william.morelli@gmail.com', '8029e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad_mascota`
--

CREATE TABLE `enfermedad_mascota` (
  `enfermedades` varchar(30) NOT NULL,
  `id_mascota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enfermedad_mascota`
--

INSERT INTO `enfermedad_mascota` (`enfermedades`, `id_mascota`) VALUES
('hepatitis canina', '4005ab'),
('hepatitis caninca', '4004ab'),
('leucemia felina', '4000ab'),
('linfomas', '4007ab'),
('nematodos', '4009ab'),
('ninguna', '4002ab'),
('ninguna', '4006ab'),
('ninguna', '4008ab'),
('otitis', '4001ab'),
('otitis', '4004ab'),
('rabia', '4003ab');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_consulta`
--

CREATE TABLE `ficha_consulta` (
  `id_consulta` varchar(30) NOT NULL,
  `id_mascota` varchar(30) NOT NULL,
  `id_historial` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `diagnostico` varchar(30) NOT NULL,
  `veterinario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha_consulta`
--

INSERT INTO `ficha_consulta` (`id_consulta`, `id_mascota`, `id_historial`, `fecha`, `diagnostico`, `veterinario`) VALUES
('0000kl', '4000ab', '5000gg', '2021-03-23', 'leucemia felina', 'L.Riquelme'),
('0001kl', '4001ab', '5001gg', '2021-03-24', 'otitis', 'G.García'),
('0002kl', '4002ab', '5002gg', '2021-03-25', 'brucelosis', 'A.Barria'),
('0003kl', '4003ab', '5003gg', '2021-03-26', 'rabia', 'L.Riquelme'),
('0004kl', '4004ab', '5004gg', '2021-03-27', 'otitis', 'A.Barria'),
('0005kl', '4005ab', '5005gg', '2021-03-28', 'hepatitis canina', 'L.Riquelme'),
('0006kl', '4006ab', '5006gg', '2021-03-29', 'ninguna', 'A.Barria'),
('0007kl', '4007ab', '5007gg', '2021-03-29', 'linfomas', 'G.García'),
('0008kl', '4008ab', '5008gg', '2021-03-30', 'ninguna', 'S.Valencia'),
('0009kl', '4009ab', '5009gg', '2021-03-30', 'nematodos', 'M.Cubillos'),
('0010kl', '4000ab', '5000gg', '2021-09-30', 'gastritis', 'S.Valencia'),
('0011kl', '4002ab', '5002gg', '2021-10-28', 'otitis', 'L.Riquelme');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE `historial_medico` (
  `id_historial` varchar(30) NOT NULL,
  `observaciones` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_medico`
--

INSERT INTO `historial_medico` (`id_historial`, `observaciones`) VALUES
('5000gg', NULL),
('5001gg', NULL),
('5002gg', NULL),
('5003gg', NULL),
('5004gg', NULL),
('5005gg', NULL),
('5006gg', NULL),
('5007gg', NULL),
('5008gg', NULL),
('5009gg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `id_mascota` varchar(30) NOT NULL,
  `nombre_mascota` varchar(30) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `rut_cliente` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`id_mascota`, `nombre_mascota`, `especie`, `raza`, `rut_cliente`, `edad`, `peso`) VALUES
('4000ab', 'nami', 'gato', 'bengala', 17800300, 1, 3.5),
('4001ab', 'raya', 'gato', 'gato esfinge', 17800301, 2, 3),
('4002ab', 'panda', 'gato', 'toyger', 17800302, 6, 4),
('4003ab', 'dinky', 'perro', 'pastor aleman', 17800303, 2, 40.3),
('4004ab', 'firulais', 'perro', 'pitbull', 17800304, 5, 32.9),
('4005ab', 'lulu', 'perro', 'poodle', 17800305, 4, 4.5),
('4006ab', 'puky', 'perro', 'labrador', 17800306, 1, 30.5),
('4007ab', 'luffy', 'hamster', 'hamster dorado', 17800307, 7, 0.4),
('4008ab', 'dongo', 'hamster', 'hamster ruso', 17800308, 4, 0.5),
('4009ab', 'spirit', 'Caballo', 'caballo arabe', 17800309, 20, 600),
('4010ab', 'carlos', 'perro', 'san bernardo', 17800300, 3, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento_mascota`
--

CREATE TABLE `tratamiento_mascota` (
  `tratamientos` varchar(30) NOT NULL,
  `id_mascota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tratamiento_mascota`
--

INSERT INTO `tratamiento_mascota` (`tratamientos`, `id_mascota`) VALUES
('antibioticos', '4005ab'),
('desparasitante', '4004ab'),
('desparasitante', '4006ab'),
('desparasitante', '4009ab'),
('gotas', '4001ab'),
('gotas', '4004ab'),
('ninguno', '4008ab'),
('pildoras', '4007ab'),
('reposo y dieta', '4000ab'),
('soporte', '4000ab'),
('vacuna antirrabica', '4003ab'),
('vacuna triple felina', '4002ab');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `rut` (`rut`);

--
-- Indices de la tabla `enfermedad_mascota`
--
ALTER TABLE `enfermedad_mascota`
  ADD PRIMARY KEY (`enfermedades`,`id_mascota`),
  ADD KEY `id_mascota` (`id_mascota`);

--
-- Indices de la tabla `ficha_consulta`
--
ALTER TABLE `ficha_consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `id_mascota` (`id_mascota`,`id_historial`),
  ADD KEY `id_historial` (`id_historial`);

--
-- Indices de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_historial` (`id_historial`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `rut_cliente` (`rut_cliente`),
  ADD KEY `id_mascota` (`id_mascota`);

--
-- Indices de la tabla `tratamiento_mascota`
--
ALTER TABLE `tratamiento_mascota`
  ADD PRIMARY KEY (`tratamientos`,`id_mascota`),
  ADD KEY `id_mascota` (`id_mascota`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedad_mascota`
--
ALTER TABLE `enfermedad_mascota`
  ADD CONSTRAINT `enfermedad_mascota_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ficha_consulta`
--
ALTER TABLE `ficha_consulta`
  ADD CONSTRAINT `ficha_consulta_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ficha_consulta_ibfk_2` FOREIGN KEY (`id_historial`) REFERENCES `historial_medico` (`id_historial`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`rut`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tratamiento_mascota`
--
ALTER TABLE `tratamiento_mascota`
  ADD CONSTRAINT `tratamiento_mascota_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
