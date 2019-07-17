-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-07-2019 a las 20:22:32
-- Versión del servidor: 5.7.19
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciromari_2016`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` text COLLATE utf8mb4_unicode_ci,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `username_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `email`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `username_canonical`, `email_canonical`) VALUES
(1, 'admin', 'admin@example.com', 1, 'qg8sjnavsmoogo80w0ck0ooow0k8s04', '$2y$13$vYeEqbWVD4ZQG8JjLzjv/OjedUyn9n.g/eOK0WmyZDWQDrX0h45dO', '2019-02-01 07:47:47', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 0, NULL, 'admin', 'admin@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

DROP TABLE IF EXISTS `galeria`;
CREATE TABLE IF NOT EXISTS `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeria` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `nombre`, `galeria`) VALUES
(1, 'Galería Home', 'a:12:{i:0;s:52:\"cropped/7d27f60f2e89d49f2899dcc92b2c56e199c95359.jpg\";i:1;s:52:\"cropped/5f55cdd66e2a3f793f15054790662e0211ac18ce.jpg\";i:2;s:52:\"cropped/ac77f117301d4da931dabe0710cf2b4c237b5279.jpg\";i:3;s:52:\"cropped/28540b4c2e0f28b59bffb37785596fd9e792e9cb.jpg\";i:4;s:52:\"cropped/4357df1394f6d03f03753638e8071531acfc5dc4.jpg\";i:5;s:52:\"cropped/422014fc34fd19fe2f1f294fe0663655d719a9ea.jpg\";i:6;s:52:\"cropped/9d7a439f9ea96d3ece8a44704b9bb418387396b4.jpg\";i:7;s:52:\"cropped/d8b986b7b52801c4c04f0f38676b99d573d9a4b0.jpg\";i:8;s:52:\"cropped/4bcb96bcd7dcf37b69a1c9d8d262ca8936c269cb.jpg\";i:9;s:52:\"cropped/593cc6a6ea3bdca593f782cc37c003a6e08e6c84.jpg\";i:10;s:52:\"cropped/7acbb5b9865fee8ec756b0305129524b37861174.jpg\";i:11;s:52:\"cropped/fc655b69e620f2f88e7eb997829c0ec9ef9a250a.jpg\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

DROP TABLE IF EXISTS `promocion`;
CREATE TABLE IF NOT EXISTS `promocion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `generica` tinyint(1) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
