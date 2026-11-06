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
(2, 'Fuggler 2', 'Monstruos Inadaptados', 'llavero', 'fuggler2.jpg', 'Llavero de colección con expresión feamente divertida.', '184', 'Multicolor', 'Silencioso', 'Pegajosa'),
(3, 'Mr Screech', 'Monstruos Inadaptados', 'peluche', 'fuggler3.jpg', 'Una mezcla de colores drásticos de un Fuggler, vive para crear caos.', '186', 'Rosa / Azul', 'Huevo Revuelto', 'Pulverizador'),
(4, 'Fuggler 4', 'Monstruos Inadaptados', 'peluche', 'fuggler4.jpg', 'Edición especial con dentadura realista.', '183', 'Verde', 'Tornado', 'Húmeda'),
(5, 'Fuggler 5', 'Monstruos Inadaptados', 'peluche', 'fuggler5.jpg', 'Peluche afelpado suave listo para travesuras.', '182', 'Rosa', 'Ráfaga', 'Gruesa'),
(6, 'Fuggler 6', 'Monstruos Inadaptados', 'llavero', 'fuggler6.jpg', 'Llavero compacto de la serie inadaptados.', '181', 'Gris', 'Sigiloso', 'Espesa'),
(7, 'Fuggler 7', 'Monstruos Inadaptados', 'peluche', 'fuggler7.jpg', 'Monstruo inquietante con mirada desorbitada.', '180', 'Marrón', 'Atronador', 'Lodosa'),
(8, 'Fuggler 8', 'Monstruos Inadaptados', 'peluche', 'fuggler8.jpg', 'Peluche con ojos desparejados y textura suave.', '194', 'Amarillo', 'El Diablo', 'Líquida'),
(9, 'Munch Tooth', 'Monstruos Inadaptados', 'peluche', 'fuggler9.jpg', 'Está listo, dispuesto y capaz de hacer un gran desastre.', '193', 'Neon Green / Multi', 'Atronador', 'Pegajosa'),
(10, 'Wide Eyed Boogah', 'Monstruos Inadaptados', 'peluche', 'fuggler10.jpg', 'Mezcla de dos Fugglers salvajes sacando la lengua.', '184', 'Blanco / Negro', 'Silencioso pero violento', 'Dentada'),
(11, 'Grinneroo McGoo', 'Monstruos Inadaptados', 'peluche', 'fuggler11.jpg', 'Fuggler verde enfermizo mezclado con desastre multicolor.', '191', 'Multi / Verde', 'Ráfaga', 'Grueso'),
(12, 'Cheeky Chonky', 'Mascotas Feas', 'peluche', 'fuggler12.jpg', 'Criatura regordeta que causa estragos traviesos.', '173', 'Remolino Multicolor', 'Mojado', 'Gruesa'),
(13, 'Reek-O', 'Mascotas Feas', 'peluche', 'fuggler13.jpg', 'Trae caos y malestar dondequiera que va.', '175', 'Multicolor', 'Tornado', 'Húmeda'),
(14, 'Cheezee', 'Mascotas Feas', 'peluche', 'fuggler14.jpg', 'Felino demoníaco listo para rascar tus cortinas.', '179', 'Multicolor', 'Sobresagrado', 'Lodosa'),
(15, 'Fuggler 15', 'Mascotas Feas', 'llavero', 'fuggler15.jpg', 'Mascota fea en formato llavero compacto.', '176', 'Naranja', 'Ráfaga', 'Burbujeante'),
(16, 'Patricio', 'Bob Esponja', 'peluche', 'fuggler16.jpg', 'Ingenua estrella de mar rosa con apetito de travesuras.', '104', 'Tornado', 'Burbujeante', 'Espesa'),
(17, 'Joker', 'DC', 'peluche', 'fuggler17.jpg', 'Príncipe payaso del crimen en versión Fuggler.', '123', 'Vellón Blanco', 'Trombón', 'Líquida'),
(18, 'Raya', 'Gremlins', 'peluche', 'fuggler18.jpg', 'Monstruo de los Gremlins que se mantiene alejado de la luz.', '140', 'Escamas Verdes', 'Tornado', 'Espumoso'),
(19, 'Gollum', 'El Señor De Los Anillos', 'peluche', 'fuggler19.jpg', 'Guía perfecto para llevarte extraviado en la oscuridad.', '170', 'Beige', 'Sigiloso', 'Gruesa'),
(20, 'Fuggler 20', 'Mascotas Feas', 'peluche', 'fuggler20.jpg', 'Criatura de la serie mascotas feas.', '174', 'Crema', 'Mojado', 'Húmedo'),
(21, 'Squidgetooth McGoo', 'Monstruos Inadaptados', 'peluche', 'fuggler21.jpg', 'Ojos desparejados y una ridícula sonrisa.', '189', 'Amarillo / Multi', 'Desorden Accidental', 'Espesa'),
(22, 'Captain Undergrin', 'Monstruos Inadaptados', 'peluche', 'fuggler22.jpg', 'Fuggler verde y lila que te mirará al alma.', '192', 'Verde / Lila', 'Aullador', 'Pegajosa'),
(23, 'Reekalien', 'Monstruos Inadaptados', 'peluche', 'fuggler23.jpg', 'Morado y negro esperando desatar el caos.', '187', 'Púrpura / Negro', 'Ninja del Pantano', 'Espesa'),
(24, 'Annoyed-O', 'Monstruos Inadaptados', 'peluche', 'fuggler24.jpg', 'Visión grotesca que se desquita con todos.', '190', 'Leopardo / Borgoña', 'El Diablo', 'Pulverizadora'),
(25, 'Rabid Tooth', 'Monstruos Inadaptados', 'peluche', 'fuggler25.jpg', 'Viven para el caos y hacer un desastre en tu día.', '188', 'Marrón / Crema', 'Sigiloso', 'Grueso'),
(26, 'Cod Father', 'Mascotas Feas', 'peluche', 'fuggler26.jpg', 'Pez asqueroso que huele bastante mal.', '181', 'Naranja', 'Mojado', 'Húmedo'),
(27, 'Mr Buttons', 'Mascotas Feas', 'peluche', 'fuggler27.jpg', 'Energía de golden retriever canalizada en caos.', '178', 'Beige / Crema', 'Húmedo', 'Pulverizadora'),
(28, 'Rabid Rabbit', 'Mascotas Feas', 'peluche', 'fuggler28.jpg', 'Conejo de orejas grandes y dientes torcidos.', '177', 'Rosa', 'Disparo Rápido', 'Líquida'),
(29, 'Gandalf', 'El Señor De Los Anillos', 'peluche', 'fuggler29.jpg', 'Fuggler mago con barba postiza listo para aventuras.', '171', 'Gris Oscuro', 'El Diablo', 'Espumoso'),
(30, 'Frodo', 'El Señor De Los Anillos', 'peluche', 'fuggler30.jpg', 'Pequeño hobbit portador del caos.', '169', 'Vellón Beige', 'Silencioso pero Violento', 'Espesa'),
(31, 'Superman', 'DC', 'peluche', 'fuggler31.jpg', 'Superhéroe travieso en versión Fuggler.', '121', 'Azul Peludo', 'Ninja del Pantano', 'Espumoso'),
(32, 'Batman', 'DC', 'peluche', 'fuggler32.jpg', 'El caballero oscuro en versión feamente divertida.', '122', 'Arpillera Gris y Negro', 'Tornado', 'Burbujeante'),
(33, 'Harley Quinn', 'DC', 'peluche', 'fuggler33.jpg', 'Princesa payasa haciendo bromas por la ciudad.', '120', 'Vellón Rojo y Negro', 'Sigilo', 'Gomita'),
(34, 'Bob Esponja', 'Bob Esponja', 'peluche', 'fuggler34.jpg', 'Esponja amarilla optimista con aptitud para el caos.', '103', 'Amarillo Peludo', 'Ráfaga', 'Pulverizadora'),
(35, 'Gizmo', 'Gremlins', 'peluche', 'fuggler35.jpg', 'Mogwai descarado que causará problemas.', '141', 'Marrón y Blanco', 'Silencioso pero Violento', 'Gomita');

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
(1, 'MIA MARINA ARZAPALA GUERRERO', 'a.24308051280795@cbtis128.edu.mx', 'XXX', 'Chihuahua', 'Juarez', '2026-11-06 03:22:23');

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
