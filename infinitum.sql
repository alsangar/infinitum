-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2017 a las 11:20:45
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: infinitum
--
CREATE DATABASE IF NOT EXISTS infinitum DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE infinitum;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla premios_hugo
--

DROP TABLE IF EXISTS premios_hugo;
CREATE TABLE IF NOT EXISTS premios_hugo (
  id_premio int(11) NOT NULL AUTO_INCREMENT,
  año year(4) NOT NULL,
  titulo varchar(255) CHARACTER SET latin1 NOT NULL,
  autor varchar(255) CHARACTER SET latin1 NOT NULL,
  enlace_titulo varchar(255) CHARACTER SET latin1 NOT NULL,
  enlace_autor varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (id_premio)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla premios_hugo
--

INSERT INTO premios_hugo (id_premio, año, titulo, autor, enlace_titulo, enlace_autor) VALUES
(1, 1953, 'El hombre demolido', 'Alfred Bester', 'https://es.wikipedia.org/wiki/El_hombre_demolido', 'https://es.wikipedia.org/wiki/Alfred_Bester'),
(2, 1955, 'La máquina de la eternidad', 'Frank Riley y Mark Clifton', 'https://es.wikipedia.org/w/index.php?title=La_m%C3%A1quina_de_la_eternidad&action=edit&redlink=1', ''),
(3, 1956, 'Estrella doble', 'Robert A. Heinlein', 'https://es.wikipedia.org/wiki/Estrella_doble_%28novela%29', 'https://es.wikipedia.org/wiki/Robert_A._Heinlein'),
(4, 1958, 'El gran tiempo', 'Fritz Leiber', 'https://es.wikipedia.org/w/index.php?title=El_gran_tiempo&action=edit&redlink=1', 'https://es.wikipedia.org/wiki/Fritz_Leiber'),
(5, 1959, 'Un caso de conciencia', 'James Blish', 'https://es.wikipedia.org/wiki/Un_caso_de_conciencia', 'https://es.wikipedia.org/wiki/James_Blish'),
(6, 1960, 'Starship Troopers', 'Robert A. Heinlein', 'https://es.wikipedia.org/wiki/Starship_Troopers_%28novela%29', 'https://es.wikipedia.org/wiki/Robert_A._Heinlein'),
(7, 1961, 'Cántico por Leibowitz', 'Walter M. Miller', 'https://es.wikipedia.org/wiki/C%C3%A1ntico_por_Leibowitz', 'https://es.wikipedia.org/wiki/Walter_M._Miller,_Jr.'),
(8, 1962, 'Forastero en tierra extraña', 'Robert A. Heinlein', 'https://es.wikipedia.org/wiki/Forastero_en_tierra_extra%C3%B1a', 'https://es.wikipedia.org/wiki/Robert_A._Heinlein'),
(9, 1963, 'El hombre en el castillo', 'Philip K. Dick', 'https://es.wikipedia.org/wiki/El_hombre_en_el_castillo', 'https://es.wikipedia.org/wiki/Philip_K._Dick'),
(10, 1964, 'Estación de tránsito', 'Clifford D. Simak', 'https://es.wikipedia.org/wiki/Estaci%C3%B3n_de_tr%C3%A1nsito', 'https://es.wikipedia.org/wiki/Clifford_D._Simak'),
(11, 1965, 'El planeta errante', 'Fritz Leiber', 'https://es.wikipedia.org/wiki/El_planeta_errante', ''),
(12, 1966, 'Tú, el inmortal', 'Roger Zelazny', 'https://es.wikipedia.org/wiki/T%C3%BA,_el_inmortal', 'https://es.wikipedia.org/wiki/Roger_Zelazny'),
(13, 1966, 'Dune', 'Frank Herbert', 'https://es.wikipedia.org/wiki/Dune', 'https://es.wikipedia.org/wiki/Frank_Herbert'),
(14, 1967, 'La Luna es una cruel amante', 'Robert A. Heinlein', 'https://es.wikipedia.org/wiki/La_Luna_es_una_cruel_amante', 'https://es.wikipedia.org/wiki/Robert_A._Heinlein'),
(15, 1968, 'El señor de la luz', 'Roger Zelazny', 'https://es.wikipedia.org/wiki/El_se%C3%B1or_de_la_luz', ''),
(16, 1969, 'Todos sobre Zanzíbar', 'John Brunner', 'https://es.wikipedia.org/wiki/Todos_sobre_Zanz%C3%ADbar', 'https://es.wikipedia.org/wiki/John_Brunner'),
(17, 1970, 'La mano izquierda de la oscuridad', 'Ursula K. Le Guin', 'https://es.wikipedia.org/wiki/La_mano_izquierda_de_la_oscuridad', 'https://es.wikipedia.org/wiki/Ursula_K._Le_Guin'),
(18, 1971, 'Mundo Anillo', 'Larry Niven', 'https://es.wikipedia.org/wiki/Mundo_Anillo', 'https://es.wikipedia.org/wiki/Larry_Niven'),
(19, 1972, 'A vuestros cuerpos dispersos', 'Philip José Farmer', 'https://es.wikipedia.org/wiki/A_vuestros_cuerpos_dispersos', 'https://es.wikipedia.org/wiki/Philip_Jos%C3%A9_Farmer'),
(20, 1973, 'Los propios dioses', 'Isaac Asimov', 'https://es.wikipedia.org/wiki/Los_propios_dioses', 'https://es.wikipedia.org/wiki/Isaac_Asimov'),
(21, 1974, 'Cita con Rama', 'Arthur C. Clarke', 'https://es.wikipedia.org/wiki/Cita_con_Rama', 'https://es.wikipedia.org/wiki/Arthur_C._Clarke'),
(22, 1975, 'Los desposeídos', 'Ursula K. Le Guin', 'https://es.wikipedia.org/wiki/Los_despose%C3%ADdos', ''),
(23, 1976, 'La guerra interminable', 'Joe Haldeman', 'https://es.wikipedia.org/wiki/La_guerra_interminable', 'https://es.wikipedia.org/wiki/Joe_Haldeman'),
(24, 1977, 'Donde solían cantar los dulces pájaros', 'Kate Wilhelm', 'https://es.wikipedia.org/w/index.php?title=Donde_sol%C3%ADan_cantar_los_dulces_p%C3%A1jaros&action=edit&redlink=1', 'https://es.wikipedia.org/wiki/Kate_Wilhelm'),
(25, 1978, 'Pórtico', 'Frederik Pohl', 'https://es.wikipedia.org/wiki/P%C3%B3rtico_%28novela%29', 'https://es.wikipedia.org/wiki/Frederik_Pohl'),
(26, 1979, 'Serpiente del sueño', 'Vonda McIntyre', 'https://es.wikipedia.org/w/index.php?title=Serpiente_del_sue%C3%B1o&action=edit&redlink=1', 'https://es.wikipedia.org/wiki/Vonda_McIntyre'),
(27, 1980, 'Las fuentes del paraíso', 'Arthur C. Clarke', 'https://es.wikipedia.org/wiki/Las_fuentes_del_para%C3%ADso', ''),
(28, 1981, 'La reina de la nieve', 'Joan D. Vinge', 'https://es.wikipedia.org/w/index.php?title=La_reina_de_la_nieve&action=edit&redlink=1', 'https://es.wikipedia.org/wiki/Joan_D._Vinge'),
(29, 1982, 'La estación Downbelow', 'C. J. Cherryh', 'https://es.wikipedia.org/w/index.php?title=La_estaci%C3%B3n_Downbelow&action=edit&redlink=1', 'https://es.wikipedia.org/wiki/C._J._Cherryh'),
(30, 1983, 'Los límites de la Fundación', 'Isaac Asimov', 'https://es.wikipedia.org/wiki/Los_l%C3%ADmites_de_la_Fundaci%C3%B3n', ''),
(31, 1984, 'Marea estelar', 'David Brin', 'https://es.wikipedia.org/wiki/Marea_estelar', 'https://es.wikipedia.org/wiki/David_Brin'),
(32, 1985, 'Neuromante', 'William Gibson', 'https://es.wikipedia.org/wiki/Neuromante', 'https://es.wikipedia.org/wiki/William_Gibson'),
(33, 1986, 'El juego de Ender', 'Orson Scott Card', 'https://es.wikipedia.org/wiki/El_juego_de_Ender', 'https://es.wikipedia.org/wiki/Orson_Scott_Card'),
(34, 1987, 'La voz de los muertos', 'Orson Scott Card', 'https://es.wikipedia.org/wiki/La_voz_de_los_muertos', ''),
(35, 1988, 'La rebelión de los pupilos', 'David Brin', 'https://es.wikipedia.org/wiki/La_rebeli%C3%B3n_de_los_pupilos', ''),
(36, 1989, 'Cyteen', 'C. J. Cherryh', 'https://es.wikipedia.org/w/index.php?title=Cyteen&action=edit&redlink=1', ''),
(37, 1990, 'Hyperion', 'Dan Simmons', 'https://es.wikipedia.org/wiki/Hyperion_%28novela%29', 'https://es.wikipedia.org/wiki/Dan_Simmons'),
(38, 1991, 'El juego de los Vor', 'Lois McMaster Bujold', 'https://es.wikipedia.org/wiki/El_juego_de_los_Vor', 'https://es.wikipedia.org/wiki/Lois_McMaster_Bujold'),
(39, 1992, 'Barrayar', 'Lois McMaster Bujold', 'https://es.wikipedia.org/wiki/Barrayar_%28novela%29', ''),
(40, 1993, 'Un fuego sobre el abismo', 'Vernor Vinge', 'https://es.wikipedia.org/wiki/Un_fuego_sobre_el_abismo', 'https://es.wikipedia.org/wiki/Vernor_Vinge'),
(41, 1993, 'El libro del día del Juicio Final', 'Connie Willis', 'https://es.wikipedia.org/wiki/El_libro_del_d%C3%ADa_del_Juicio_Final', 'https://es.wikipedia.org/wiki/Connie_Willis'),
(42, 1994, 'Marte verde', 'Kim Stanley Robinson', 'https://es.wikipedia.org/wiki/Marte_verde', 'https://es.wikipedia.org/wiki/Kim_Stanley_Robinson'),
(43, 1995, 'Danza de espejos', 'Lois McMaster Bujold', 'https://es.wikipedia.org/wiki/Danza_de_espejos', ''),
(44, 1996, 'La era del diamante', 'Neal Stephenson', 'https://es.wikipedia.org/wiki/La_era_del_diamante', 'https://es.wikipedia.org/wiki/Neal_Stephenson'),
(45, 1997, 'Marte azul', 'Kim Stanley Robinson', 'https://es.wikipedia.org/wiki/Marte_azul', ''),
(46, 1998, 'Paz interminable', 'Joe Haldeman', 'https://es.wikipedia.org/wiki/Paz_interminable', ''),
(47, 1999, 'Por no mencionar al perro', 'Connie Willis', 'https://es.wikipedia.org/w/index.php?title=Por_no_mencionar_al_perro&action=edit&redlink=1', ''),
(48, 2000, 'Un abismo en el cielo', 'Vernor Vinge', 'https://es.wikipedia.org/wiki/Un_abismo_en_el_cielo', ''),
(49, 2001, 'Harry Potter y el cáliz de fuego', 'J. K. Rowling', 'https://es.wikipedia.org/wiki/Harry_Potter_y_el_c%C3%A1liz_de_fuego', 'https://es.wikipedia.org/wiki/J._K._Rowling'),
(50, 2002, 'American Gods', 'Neil Gaiman', 'https://es.wikipedia.org/wiki/American_Gods', 'https://es.wikipedia.org/wiki/Neil_Gaiman'),
(51, 2003, 'Homínidos', 'Robert J. Sawyer', '', 'https://es.wikipedia.org/wiki/Robert_J._Sawyer'),
(52, 2004, 'Paladín de almas', 'Lois McMaster Bujold', 'https://es.wikipedia.org/wiki/Palad%C3%ADn_de_almas', ''),
(53, 2005, 'Jonathan Strange y el señor Norrell', 'Susanna Clarke', 'https://es.wikipedia.org/wiki/Jonathan_Strange_y_el_se%C3%B1or_Norrell', 'https://es.wikipedia.org/wiki/Susanna_Clarke'),
(54, 2006, 'Spin', 'Robert C. Wilson', '', 'https://es.wikipedia.org/wiki/Robert_C._Wilson'),
(55, 2007, 'Al final del arco iris', 'Vernor Vinge', 'https://es.wikipedia.org/wiki/Al_final_del_arco_iris_%28novela%29', ''),
(56, 2008, 'El sindicato de policía yiddish', 'Michael Chabon', 'https://es.wikipedia.org/wiki/El_sindicato_de_polic%C3%ADa_yiddish', 'https://es.wikipedia.org/wiki/Michael_Chabon'),
(57, 2009, 'El libro del cementerio', 'Neil Gaiman', 'https://es.wikipedia.org/wiki/El_libro_del_cementerio', ''),
(58, 2010, 'La ciudad y la ciudad', 'China Miéville', 'https://es.wikipedia.org/wiki/La_ciudad_y_la_ciudad', 'https://es.wikipedia.org/wiki/China_Mi%C3%A9ville'),
(59, 2010, 'La chica mecánica', 'Paolo Bacigalupi', 'https://es.wikipedia.org/wiki/La_chica_mec%C3%A1nica', 'https://es.wikipedia.org/wiki/Paolo_Bacigalupi'),
(60, 2011, 'El apagón / Cese de alerta', 'Connie Willis', 'https://es.wikipedia.org/w/index.php?title=El_apag%C3%B3n_/_Cese_de_alerta&action=edit&redlink=1', ''),
(61, 2012, 'Entre extraños', 'Jo Walton', 'https://es.wikipedia.org/w/index.php?title=Entre_extra%C3%B1os&action=edit&redlink=1', 'https://es.wikipedia.org/wiki/Jo_Walton'),
(62, 2013, 'Redshirts', 'John Scalzi', 'https://es.wikipedia.org/wiki/Redshirts', 'https://es.wikipedia.org/wiki/John_Scalzi'),
(63, 2014, 'Justicia auxiliar', 'Ann Leckie', 'https://es.wikipedia.org/wiki/Justicia_auxiliar', 'https://es.wikipedia.org/w/index.php?title=Ann_Leckie&action=edit&redlink=1'),
(64, 2015, 'El problema de los tres cuerpos', 'Liu Cixin', 'https://es.wikipedia.org/wiki/El_problema_de_los_tres_cuerpos', 'https://es.wikipedia.org/wiki/Liu_Cixin'),
(65, 2016, 'La quinta estación', 'N. K. Jemisin', 'https://es.wikipedia.org/wiki/La_quinta_estaci%C3%B3n_%28novela%29', 'https://es.wikipedia.org/wiki/N._K._Jemisin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
