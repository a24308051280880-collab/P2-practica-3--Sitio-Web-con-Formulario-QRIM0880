-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2026 at 05:49 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuggler_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `coleccion` varchar(100) NOT NULL,
  `tipo` enum('peluche','llavero') DEFAULT 'peluche',
  `imagen` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `numero` varchar(50) NOT NULL,
  `pelaje` varchar(100) NOT NULL,
  `pedo` varchar(100) NOT NULL,
  `flema` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `coleccion`, `tipo`, `imagen`, `descripcion`, `numero`, `pelaje`, `pedo`, `flema`) VALUES
(1, 'Gaptooth Weirdo', 'Monstruos Inadaptados', 'peluche', 'fuggler1.jpg', 'Es un terrible duende del caos que vive para las travesuras.', '185', 'Lila / Borgoña', 'Ráfaga', 'Húmedo'),
(2, 'Mr Screech', 'Monstruos Inadaptados', 'peluche', 'fuggler3.jpg', 'Una mezcla de colores drásticos de un Fuggler, vive para crear caos.', '186', 'Rosa / Azul', 'Huevo Revuelto', 'Pulverizador'),
(3, 'Munch Tooth', 'Monstruos Inadaptados', 'peluche', 'fuggler9.jpg', 'Está listo, dispuesto y capaz de hacer un gran desastre.', '193', 'Neon Green / Multi', 'Atronador', 'Pegajosa'),
(4, 'Wide Eyed Boogah', 'Monstruos Inadaptados', 'peluche', 'fuggler10.jpg', 'Mezcla de dos Fugglers salvajes sacando la lengua.', '184', 'Blanco / Negro', 'Silencioso pero violento', 'Dentada'),
(5, 'Grinneroo McGoo', 'Monstruos Inadaptados', 'peluche', 'fuggler11.jpg', 'Fuggler verde enfermizo mezclado con desastre multicolor.', '191', 'Multi / Verde', 'Ráfaga', 'Grueso'),
(6, 'Squidgetooth McGoo', 'Monstruos Inadaptados', 'peluche', 'fuggler21.jpg', 'Ojos desparejados y una ridícula sonrisa.', '189', 'Amarillo / Multi', 'Desorden Accidental', 'Espesa'),
(7, 'Captain Undergrin', 'Monstruos Inadaptados', 'peluche', 'fuggler22.jpg', 'Fuggler verde y lila que te mirará al alma.', '192', 'Verde / Lila', 'Aullador', 'Pegajosa'), 
(8, 'Reekalien', 'Monstruos Inadaptados', 'peluche', 'fuggler23.jpg', 'Morado y negro esperando desatar el caos.', '187', 'Púrpura / Negro', 'Ninja del Pantano', 'Espesa'),
(9, 'Annoyed-O', 'Monstruos Inadaptados', 'peluche', 'fuggler24.jpg', 'Visión grotesca que se desquita con todos.', '190', 'Leopardo / Borgoña', 'El Diablo', 'Pulverizadora'),
(10, 'Rabid Tooth', 'Monstruos Inadaptados', 'peluche', 'fuggler25.jpg', 'Viven para el caos y hacer un desastre en tu día.', '188', 'Marrón / Crema', 'Sigiloso', 'Grueso'),
(11, 'Cheeky Chonky', 'Mascotas Feas', 'peluche', 'fuggler12.jpg', 'Criatura regordeta que causa estragos traviesos.', '173', 'Remolino Multicolor', 'Mojado', 'Gruesa'),
(12, 'Reek-O', 'Mascotas Feas', 'peluche', 'fuggler13.jpg', 'Trae caos y malestar dondequiera que va.', '175', 'Multicolor', 'Tornado', 'Húmeda'),
(13, 'Cheezee', 'Mascotas Feas', 'peluche', 'fuggler14.jpg', 'Felino demoníaco listo para rascar tus cortinas.', '179', 'Multicolor', 'Sobresagrado', 'Lodosa'),
(14, 'Cod Father', 'Mascotas Feas', 'peluche', 'fuggler26.jpg', 'Pez asqueroso que huele bastante mal.', '181', 'Naranja', 'Mojado', 'Húmedo'),
(15, 'Mr Buttons', 'Mascotas Feas', 'peluche', 'fuggler27.jpg', 'Energía de golden retriever canalizada en caos.', '178', 'Beige / Crema', 'Húmedo', 'Pulverizadora'),
(16, 'Rabid Rabbit', 'Mascotas Feas', 'peluche', 'fuggler28.jpg', 'Conejo de orejas grandes y dientes torcidos.', '177', 'Rosa', 'Disparo Rápido', 'Líquida'),
(17, 'Gollum', 'El Señor De Los Anillos', 'peluche', 'fuggler19.jpg', 'Guía perfecto para llevarte extraviado en la oscuridad.', '170', 'Beige', 'Sigiloso', 'Gruesa'),
(18, 'Gandalf', 'El Señor De Los Anillos', 'peluche', 'fuggler29.jpg', 'Fuggler mago con barba postiza listo para aventuras.', '171', 'Gris Oscuro', 'El Diablo', 'Espumoso'),
(19, 'Frodo', 'El Señor De Los Anillos', 'peluche', 'fuggler30.jpg', 'Pequeño hobbit portador del caos.', '169', 'Vellón Beige', 'Silencioso pero Violento', 'Espesa'),  
(17, 'Raya', 'Gremlins', 'peluche', 'fuggler18.jpg', 'Monstruo de los Gremlins que se mantiene alejado de la luz.', '140', 'Escamas Verdes', 'Tornado', 'Espumoso'),
(18, 'Gizmo', 'Gremlins', 'peluche', 'fuggler35.jpg', 'Mogwai descarado que causará problemas.', '141', 'Marrón y Blanco', 'Silencioso pero Violento', 'Gomita');
(19, 'Joker', 'DC', 'peluche', 'fuggler17.jpg', 'Príncipe payaso del crimen en versión Fuggler.', '123', 'Vellón Blanco', 'Trombón', 'Líquida'),
(20, 'Superman', 'DC', 'peluche', 'fuggler31.jpg', 'Superhéroe travieso en versión Fuggler.', '121', 'Azul Peludo', 'Ninja del Pantano', 'Espumoso'),
(21, 'Batman', 'DC', 'peluche', 'fuggler32.jpg', 'El caballero oscuro en versión feamente divertida.', '122', 'Arpillera Gris y Negro', 'Tornado', 'Burbujeante'),
(22, 'Harley Quinn', 'DC', 'peluche', 'fuggler33.jpg', 'Princesa payasa haciendo bromas por la ciudad.', '120', 'Vellón Rojo y Negro', 'Sigilo', 'Gomita'),
(23, 'Patricio', 'Bob Esponja', 'peluche', 'fuggler16.jpg', 'Ingenua estrella de mar rosa con apetito de travesuras.', '104', 'Tornado', 'Burbujeante', 'Espesa'),
(24, 'Bob Esponja', 'Bob Esponja', 'peluche', 'fuggler34.jpg', 'Esponja amarilla optimista con aptitud para el caos.', '103', 'Amarillo Peludo', 'Ráfaga', 'Pulverizadora'),

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `direccion`, `estado`, `ciudad`, `fecha_registro`) VALUES


--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
