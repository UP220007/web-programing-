-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2024 at 10:43 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todoApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `idUser` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`title`, `completed`, `idUser`) VALUES
('Hacer la compra', 0, 1),
('Lavar el coche', 0, 1),
('Preparar la cena', 0, 1),
('Hacer ejercicio', 1, 1),
('Estudiar para el examen', 0, 1),
('Organizar el armario', 0, 1),
('Limpiar la casa', 0, 1),
('Pagar las facturas', 1, 1),
('Pasear al perro', 0, 1),
('Trabajar en el proyecto', 1, 1),
('Leer un libro', 1, 1),
('Resolver crucigramas', 1, 1),
('Practicar un deporte', 0, 1),
('Hacer una lista de tareas', 1, 1),
('Planificar las vacaciones', 1, 1),
('Aprender a cocinar', 1, 1),
('Organizar una fiesta', 1, 1),
('Visitar a un amigo', 0, 1),
('Hacer voluntariado', 1, 1),
('Probar un nuevo hobby', 1, 1),
('Resolver problemas matemáticos', 0, 2),
('Aprender un idioma nuevo', 1, 2),
('Hacer una caminata', 0, 2),
('Cultivar un jardín', 0, 2),
('Hacer un álbum de fotos', 1, 2),
('Aprender a tocar un instrumento', 1, 2),
('Ver una película', 1, 2),
('Visitar un museo', 0, 2),
('Hacer una manualidad', 0, 2),
('Escuchar música', 1, 2),
('Escribir en un diario', 0, 2),
('Hacer una excursión', 0, 2),
('Practicar yoga', 0, 2),
('Hacer una barbacoa', 0, 2),
('Explorar un nuevo lugar', 1, 2),
('Ir de camping', 1, 2),
('Hacer un picnic', 0, 2),
('Bailar en casa', 0, 2),
('Hacer un proyecto de arte', 0, 2),
('Hacer una sesión de fotos', 1, 2),
('Mediar en una disputa', 0, 3),
('Realizar una presentación', 0, 3),
('Resolver un problema técnico', 1, 3),
('Crear una estrategia de marketing', 1, 3),
('Organizar un evento', 0, 3),
('Crear un plan de negocios', 0, 3),
('Hacer una llamada importante', 0, 3),
('Hacer networking', 0, 3),
('Elaborar un informe', 0, 3),
('Realizar una entrevista', 1, 3),
('Crear una presentación de ventas', 0, 3),
('Resolver un problema de software', 0, 3),
('Desarrollar una nueva idea', 0, 3),
('Participar en una reunión', 1, 3),
('Hacer una llamada de seguimiento', 1, 3),
('Hacer un análisis de datos', 1, 3),
('Resolver un problema de cliente', 0, 3),
('Actualizar un documento', 0, 3),
('Hacer un plan de acción', 0, 3),
('Crear una campaña publicitaria', 1, 3),
('Diseñar un producto', 1, 4),
('Probar un prototipo', 0, 4),
('Realizar un estudio de mercado', 1, 4),
('Crear un plan de lanzamiento', 0, 4),
('Evaluar la competencia', 0, 4),
('Crear una estrategia de branding', 0, 4),
('Desarrollar un nuevo producto', 0, 4),
('Investigar nuevas tecnologías', 0, 4),
('Crear un plan de expansión', 0, 4),
('Hacer una presentación ejecutiva', 0, 4),
('Participar en una feria comercial', 0, 4),
('Hacer un análisis FODA', 0, 4),
('Escribir un plan de negocios', 1, 4),
('Hacer una evaluación de riesgos', 0, 4),
('Realizar un estudio de viabilidad', 0, 4),
('Desarrollar un plan de acción', 1, 4),
('Crear una estrategia de precios', 0, 4),
('Hacer un análisis de mercado', 0, 4),
('Elaborar un plan de marketing', 1, 4),
('Realizar una investigación de mercado', 1, 4),
('Aprender nuevas habilidades', 1, 5),
('Desarrollar la creatividad', 0, 5),
('Hacer ejercicio regularmente', 1, 5),
('Meditar para reducir el estrés', 0, 5),
('Practicar la gratitud diaria', 1, 5),
('Establecer metas personales', 1, 5),
('Crear un plan de desarrollo personal', 1, 5),
('Aprender a gestionar el tiempo', 0, 5),
('Mejorar las habilidades de comunicación', 1, 5),
('Desarrollar la empatía', 1, 5),
('Participar en actividades sociales', 1, 5),
('Hacer voluntariado', 1, 5),
('Practicar la escucha activa', 1, 5),
('Cuidar el medio ambiente', 0, 5),
('Ayudar a los demás', 1, 5),
('Fomentar la diversidad y la inclusión', 0, 5),
('Desarrollar la inteligencia emocional', 0, 5),
('Contribuir a una causa benéfica', 1, 5),
('Aprender a resolver conflictos', 0, 5),
('Practicar la autoreflexión', 0, 5),
('Crear un blog', 0, 6),
('Hacer un podcast', 0, 6),
('Empezar un canal de YouTube', 0, 6),
('Desarrollar una aplicación móvil', 0, 6),
('Escribir un libro', 1, 6),
('Participar en un concurso literario', 1, 6),
('Crear una serie de televisión', 0, 6),
('Hacer un cortometraje', 1, 6),
('Participar en una obra de teatro', 1, 6),
('Hacer un documental', 1, 6),
('Crear una campaña publicitaria', 0, 6),
('Hacer un curso de escritura creativa', 0, 6),
('Participar en un taller literario', 0, 6),
('Escribir poesía', 0, 6),
('Crear un guion de cine', 0, 6),
('Desarrollar un proyecto de fotografía', 1, 6),
('Crear una novela gráfica', 0, 6),
('Hacer una exposición de arte', 0, 6),
('Participar en un festival de cine', 0, 6),
('Hacer una instalación artística', 0, 6),
('Practicar la jardinería', 1, 7),
('Crear un huerto urbano', 1, 7),
('Decorar la casa', 0, 7),
('Hacer un bricolaje', 0, 7),
('Aprender técnicas de decoración', 0, 7),
('Hacer una manualidad', 1, 7),
('Crear una obra de arte', 1, 7),
('Hacer un proyecto de reciclaje', 0, 7),
('Organizar un evento cultural', 0, 7),
('Participar en un taller de arte', 1, 7),
('Crear una escultura', 0, 7),
('Hacer una exposición de arte', 1, 7),
('Participar en una feria de artesanía', 1, 7),
('Restaurar un mueble', 0, 7),
('Crear una obra de arte callejero', 0, 7),
('Hacer un mural', 0, 7),
('Decorar con plantas', 0, 7),
('Hacer un terrario', 1, 7),
('Crear una pieza de joyería', 0, 7),
('Tejer o hacer punto', 1, 7),
('Hacer una sesión de fotos', 1, 8),
('Realizar un video musical', 1, 8),
('Crear una campaña publicitaria', 0, 8),
('Diseñar un logotipo', 0, 8),
('Hacer un folleto', 0, 8),
('Crear una página web', 1, 8),
('Hacer una presentación', 1, 8),
('Realizar un video tutorial', 0, 8),
('Editar un video', 0, 8),
('Hacer un storyboard', 0, 8),
('Crear una aplicación móvil', 1, 8),
('Desarrollar un juego', 0, 8),
('Diseñar un cartel', 0, 8),
('Hacer una infografía', 1, 8),
('Crear una animación', 1, 8),
('Participar en una sesión fotográfica', 1, 8),
('Realizar una entrevista en video', 1, 8),
('Hacer un cortometraje', 1, 8),
('Crear una presentación de diapositivas', 1, 8),
('Editar una fotografía', 0, 8),
('Hacer un crucigrama', 1, 9),
('Resolver un acertijo', 1, 9),
('Crear un rompecabezas', 0, 9),
('Jugar a un juego de mesa', 0, 9),
('Hacer una actividad al aire libre', 0, 9),
('Practicar un deporte', 0, 9),
('Hacer una manualidad', 0, 9),
('Dibujar o pintar', 0, 9),
('Crear una historia', 1, 9),
('Escribir un poema', 0, 9),
('Hacer una lista de deseos', 1, 9),
('Diseñar un plan de viaje', 0, 9),
('Planificar una fiesta', 0, 9),
('Organizar una cena', 0, 9),
('Hacer un picnic', 1, 9),
('Ir a un concierto', 0, 9),
('Visitar un museo', 0, 9),
('Hacer una excursión', 1, 9),
('Explorar un lugar nuevo', 1, 9),
('Viajar a un país extranjero', 1, 9),
('Aprender un idioma nuevo', 0, 10),
('Estudiar una habilidad nueva', 1, 10),
('Tomar un curso en línea', 1, 10),
('Leer un libro', 0, 10),
('Escuchar un podcast', 0, 10),
('Ver una película', 0, 10),
('Aprender a cocinar', 0, 10),
('Practicar un instrumento musical', 0, 10),
('Aprender a bailar', 0, 10),
('Hacer una actividad de mindfulness', 1, 10),
('Practicar yoga', 1, 10),
('Meditar', 0, 10),
('Hacer una actividad de relajación', 1, 10),
('Ir a un spa', 0, 10),
('Tener una noche de juegos', 1, 10),
('Hacer una siesta', 1, 10),
('Tomar un baño relajante', 1, 10),
('Ir a un parque de atracciones', 1, 10),
('Hacer un viaje por carretera', 1, 10),
('Tener una noche de cine en casa', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` ( `firstname`, `lastname`, `email`) VALUES
('Micaela', 'Alva Beltrán', 'Micaela.AlvaBeltran@gmail.com'),
('Ester', 'Villa Barreto', 'Ester45@corpfolder.com'),
('Mercedes', 'Rojo Xenia', 'Mercedes24@nearbpo.com'),
('Francisco Javier', 'Cabrera Estrada', 'FranciscoJavier.CabreraEstrada@gmail.com'),
('Elsa', 'Ñañez Portillo', 'Elsa87@yahoo.com'),
('Agustín', 'Almaraz Serrato', 'Agustin_AlmarazSerrato@corpfolder.com'),
('Mario', 'Zambrano de Pantoja', 'Mario.ZambranodePantoja1@corpfolder.com'),
('Matías', 'Zarate Soto', 'Matias97@hotmail.com'),
('Irene', 'Correa Henríquez', 'Irene.CorreaHenriquez20@hotmail.com'),
('Kevin', 'Peres Barela', 'Kevin_PeresBarela6@gmail.com'),
('Rogelio', 'Trejo Estrada', 'test@test.com'),
('Juan Eduardo', 'Rangel Macias', 'up220007@alumnos.upa.edu.mx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
