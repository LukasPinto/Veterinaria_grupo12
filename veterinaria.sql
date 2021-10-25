-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2021 a las 16:47:27
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
('lukas', 'PINTO', 1231232, 'lukas.pinto@alumnos.uv.cl', 'asdasds'),
('juan', 'Escobedo', 12312322, 'hola@hotmail.com', 'asdfasdfsd'),
('Felipe', 'Ramirez', 17800300, 'felipe.ramirez@gmail.com', '8020e'),
('Fernando', 'Loncon', 17800301, 'fernando.loncon@gmail.com', '8021e'),
('Genesis', 'Sandoval', 17800302, 'genesis.sandoval@gmail.com', '8022e'),
('Jaime', 'Pavez', 17800303, 'jaime.pavez@gmail.com', '8023e'),
('Nicole', 'Salazar', 17800304, 'nicole.salazar@gmail.com', '8024e'),
('Elsa', 'Torres', 17800305, 'elsa.torres@gmail.com', '8025e'),
('Juan', 'Millan', 17800306, 'juan.millan@gmail.com', '8026e'),
('Sara', 'Palominos', 17800307, 'sara.palominos@gmail.com', '8027e'),
('Belen', 'Vidal', 17800308, 'belen.vidal@gmail.com', '8028e'),
('William', 'Morelli', 17800309, 'william.morelli@gmail.com', '8029e'),
('lukas', 'PINTO', 20725246, 'lukas.pinto@alumnos.uv.cl', 'asdasdsa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad_mascota`
--

CREATE TABLE `enfermedad_mascota` (
  `enfermedad` varchar(30) NOT NULL,
  `id_enfermedad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enfermedad_mascota`
--

INSERT INTO `enfermedad_mascota` (`enfermedad`, `id_enfermedad`) VALUES
('leucemia felina', 1),
('otitis', 2),
('ninguna', 3),
('rabia', 4),
('otitis', 5),
('hepatitis canina', 6),
('ninguna', 7),
('linfomas', 8),
('ninguna', 9),
('nematodos', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_consulta`
--

CREATE TABLE `ficha_consulta` (
  `fecha` date NOT NULL,
  `diagnostico` varchar(30) NOT NULL,
  `veterinario` varchar(30) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  `id_historial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha_consulta`
--

INSERT INTO `ficha_consulta` (`fecha`, `diagnostico`, `veterinario`, `id_consulta`, `id_historial`) VALUES
('2021-03-23', 'leucemia felina', 'L.Riquelme', 1, 1),
('2021-03-24', 'otitis', 'G.García', 2, 1),
('2021-03-25', 'ninguno', 'S.Valencia', 3, 3),
('2021-03-26', 'rabia', 'L.Riquelme', 4, 4),
('2021-03-27', 'otitis', 'A.Barria', 5, 5),
('2021-03-28', 'hepatitis canina', 'L.Riquelme', 6, 6),
('2021-03-29', 'ninguna', 'A.Barria', 7, 7),
('2021-03-29', 'linfomas', 'G.García', 8, 8),
('2021-03-30', 'ninguna', 'S.Valencia', 9, 9),
('2021-03-30', 'nematodos', 'M.Cubillos', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE `historial_medico` (
  `observaciones` varchar(30) DEFAULT NULL,
  `id_enfermedad` varchar(30) DEFAULT NULL,
  `id_historial` int(11) NOT NULL,
  `id_mascota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_medico`
--

INSERT INTO `historial_medico` (`observaciones`, `id_enfermedad`, `id_historial`, `id_mascota`) VALUES
('NINGUNA', '1', 1, 1),
('NINGUNA', '2', 2, 2),
('NINGUNA', '5', 3, 3),
('NINGUNA', '5', 4, 4),
('NINGUNA', '4', 5, 5),
('NINGUNA', '4', 6, 6),
('NINGUNA', '6', 7, 7),
('NINGUNA', '9', 8, 8),
('NINGUNA', '10', 9, 9),
('NINGUNA', '9', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `nombre_mascota` varchar(30) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `rut_cliente` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` float NOT NULL,
  `id_mascota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`nombre_mascota`, `especie`, `raza`, `rut_cliente`, `edad`, `peso`, `id_mascota`) VALUES
('nami', 'gato', 'bengala', 17800300, 1, 3.5, 1),
('raya', 'gato', 'gato esfinge', 17800301, 2, 3, 2),
('panda', 'gato', 'toyger', 17800302, 6, 4, 3),
('dinky', 'perro', 'pastor aleman', 17800303, 2, 40.3, 4),
('firulais', 'perro', 'pitbull', 17800304, 2, 32.9, 5),
('lulu', 'perro', 'poodle', 17800305, 4, 4.5, 6),
('puky', 'perro', 'labrador', 17800306, 1, 30.5, 7),
('luffy', 'hamster', 'hamster dorado', 17800307, 7, 0.4, 8),
('dongo', 'hamster', 'hamster ruso', 17800308, 4, 0.5, 9),
('spirit', 'caballo', 'caballo arabe', 17800309, 20, 600, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `enfermedad_mascota`
--
ALTER TABLE `enfermedad_mascota`
  ADD PRIMARY KEY (`id_enfermedad`);

--
-- Indices de la tabla `ficha_consulta`
--
ALTER TABLE `ficha_consulta`
  ADD PRIMARY KEY (`id_consulta`);

--
-- Indices de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_mascota` (`id_mascota`),
  ADD KEY `id_enfermedad` (`id_enfermedad`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `rut_cliente` (`rut_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enfermedad_mascota`
--
ALTER TABLE `enfermedad_mascota`
  MODIFY `id_enfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ficha_consulta`
--
ALTER TABLE `ficha_consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `id_mascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedad_mascota`
--
ALTER TABLE `enfermedad_mascota`
  ADD CONSTRAINT `enfermedad_mascota_ibfk_1` FOREIGN KEY (`id_historial`) REFERENCES `historial_medico` (`id_historial`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ficha_consulta`
--
ALTER TABLE `ficha_consulta`
  ADD CONSTRAINT `ficha_consulta_ibfk_1` FOREIGN KEY (`id_historial`) REFERENCES `historial_medico` (`id_historial`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD CONSTRAINT `historial_medico_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`) ON UPDATE CASCADE,
  ADD CONSTRAINT `historial_medico_ibfk_2` FOREIGN KEY (`id_enfermedad`) REFERENCES `enfermedad_mascota` (`id_enfermedad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`rut`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
