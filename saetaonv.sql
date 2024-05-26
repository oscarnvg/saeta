-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2024 a las 19:01:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `saeta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add listing', 1, 'add_listing'),
(2, 'Can change listing', 1, 'change_listing'),
(3, 'Can delete listing', 1, 'delete_listing'),
(4, 'Can view listing', 1, 'view_listing'),
(5, 'Can add realtor', 2, 'add_realtor'),
(6, 'Can change realtor', 2, 'change_realtor'),
(7, 'Can delete realtor', 2, 'delete_realtor'),
(8, 'Can view realtor', 2, 'view_realtor'),
(9, 'Can add contact', 3, 'add_contact'),
(10, 'Can change contact', 3, 'change_contact'),
(11, 'Can delete contact', 3, 'delete_contact'),
(12, 'Can view contact', 3, 'view_contact'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$180000$RawRCdKOkJq9$OCdvf29N/DjUu2qYmlyG5xE2MRZIV+jhb2vEqrz4Mj0=', '2024-05-03 22:22:45.981101', 1, 'oscarnvg@gmail.com', 'Oscar Nelson', 'Velasquez Gomez', 'oscarnvg@gmail.com', 1, 1, '2023-12-12 00:14:15.000000'),
(3, 'pbkdf2_sha256$180000$mDmukFcWXKxE$hD8GRS0SDWVTJee0hB31uS4I/zH4jyMH1XpQ5IcP58U=', '2024-04-18 03:27:34.211429', 0, 'smi', 'San', 'Inmobiliaria', 'gerencia@inmobiliariasanmarcos.com', 0, 1, '2024-04-18 03:25:19.459332');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL,
  `listing` varchar(200) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `contact_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `listing`, `listing_id`, `name`, `email`, `phone`, `message`, `contact_date`, `user_id`) VALUES
(1, 'Calle 43 1N179 Casa 121', 3, 'Oscar Nelson Velasquez Gomez', 'oscarnvg@gmail.com', '3115699805', 'Prueba', '2024-04-17 21:48:44.327696', 2),
(2, 'Calle 43 1N179', 2, 'San Marcos Inmobiliaria', 'gerencia@inmobiliariasanmarcos.com', '3115699805', 'Prueba desde la página en Python sin desplegar', '2024-04-20 15:30:13.339052', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-12-12 00:17:01.241289', '1', 'Oscar N. Velásquez Gómez', 1, '[{\"added\": {}}]', 2, 2),
(2, '2023-12-12 00:29:01.916251', '1', 'C0154 Casa La Florida', 1, '[{\"added\": {}}]', 1, 2),
(3, '2023-12-12 00:38:31.458803', '2', 'C0131 Arriendo Casa La Florida en Conjunto cerrado', 1, '[{\"added\": {}}]', 1, 2),
(4, '2023-12-12 00:39:01.940268', '1', 'C0154 VENTA Casa La Florida', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 1, 2),
(5, '2023-12-12 00:39:18.217775', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 1, 2),
(6, '2023-12-12 01:05:21.541182', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(7, '2023-12-12 01:10:41.021269', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(8, '2023-12-12 01:12:18.148887', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(9, '2023-12-12 01:16:17.345219', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(10, '2023-12-12 01:16:55.242127', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(11, '2023-12-12 01:19:39.873258', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(12, '2023-12-12 01:20:59.409844', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(13, '2023-12-12 01:21:19.723034', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(14, '2023-12-12 01:21:42.549093', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(15, '2023-12-12 15:56:17.010521', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(16, '2023-12-12 15:56:26.532796', '1', 'C0154 VENTA Casa La Florida', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(17, '2024-02-03 18:53:12.587787', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(18, '2024-02-03 18:53:46.943560', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(19, '2024-02-03 18:54:26.583818', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(20, '2024-02-03 18:55:36.180496', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(21, '2024-02-03 18:58:09.290211', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(22, '2024-02-03 18:58:24.732613', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(23, '2024-04-18 01:26:14.598612', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 1, '[{\"added\": {}}]', 1, 2),
(24, '2024-04-18 01:26:45.678478', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(25, '2024-04-18 01:28:26.696157', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Zipcode\"]}}]', 1, 2),
(26, '2024-04-18 01:29:22.168295', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(27, '2024-04-18 01:32:48.741000', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 1, 2),
(28, '2024-04-18 01:36:53.036394', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Photo 6\"]}}]', 1, 2),
(29, '2024-04-18 01:37:01.895101', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Photo 6\"]}}]', 1, 2),
(30, '2024-04-18 01:37:18.427408', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Photo 6\"]}}]', 1, 2),
(31, '2024-04-18 01:37:28.754305', '3', 'A0307 Alquiler Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Photo 6\"]}}]', 1, 2),
(32, '2024-04-18 02:50:22.427454', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 1, 2),
(33, '2024-04-18 02:50:33.055888', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 1, 2),
(34, '2024-04-18 02:56:14.796356', '2', 'oscarnvg@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"User permissions\"]}}]', 7, 2),
(35, '2024-04-20 01:13:04.003054', '4', 'C0162 Venta casa La Castellana', 1, '[{\"added\": {}}]', 1, 2),
(36, '2024-04-20 01:13:54.520253', '4', 'C0162 Venta casa La Castellana', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(37, '2024-04-20 01:18:04.027551', '4', 'C0162 Venta casa La Castellana', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(38, '2024-04-20 03:17:24.132992', '5', 'Venta Casa La Florida para estrenar!!', 1, '[{\"added\": {}}]', 1, 2),
(39, '2024-04-20 03:18:05.684069', '5', 'Venta Casa La Florida para estrenar!!', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(40, '2024-04-20 03:18:21.344195', '5', 'Venta Casa La Florida para estrenar!!', 2, '[]', 1, 2),
(41, '2024-04-20 03:20:46.305152', '6', 'Alquiler de Apartamento 3 Alcobas La Francia', 1, '[{\"added\": {}}]', 1, 2),
(42, '2024-04-20 03:21:21.800192', '6', 'Alquiler de Apartamento 3 Alcobas La Francia', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(43, '2024-04-20 03:24:20.469007', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 1, '[{\"added\": {}}]', 1, 2),
(44, '2024-04-20 03:24:57.107197', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(45, '2024-04-21 02:41:21.998760', '3', 'A0307 ARRIENDO Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(46, '2024-04-21 02:41:47.966315', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(47, '2024-04-21 02:42:00.137745', '1', 'C0154 VENTA Casa La Florida', 2, '[]', 1, 2),
(48, '2024-04-21 02:42:20.056860', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(49, '2024-04-21 02:43:56.036227', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[]', 1, 2),
(50, '2024-04-21 02:44:12.735154', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(51, '2024-04-21 02:44:26.666624', '1', 'C0154 VENTA Casa La Florida', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(52, '2024-04-21 03:09:00.630427', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[]', 1, 2),
(53, '2024-04-22 01:43:48.930179', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[]', 1, 2),
(54, '2024-04-22 02:46:57.749434', '8', 'Venta Casa La Florida para estrenar!!', 1, '[{\"added\": {}}]', 1, 2),
(55, '2024-04-22 02:47:49.447918', '8', 'Venta Casa La Florida para estrenar!!', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(56, '2024-04-22 02:52:14.624551', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[{\"changed\": {\"fields\": [\"Codigo\", \"Title\", \"Address\", \"City\", \"Zipcode\", \"Description\", \"Price\", \"Bedrooms\", \"Bathrooms\", \"Garage\", \"Sqft\", \"Lot size\", \"Photo main\", \"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(57, '2024-04-22 02:54:15.578471', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 1, 2),
(58, '2024-04-22 02:55:14.596175', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 1, 2),
(59, '2024-04-24 19:34:37.352479', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(60, '2024-04-24 19:34:44.053938', '5', 'Venta Casa La Florida para estrenar!!', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(61, '2024-04-24 19:34:49.925894', '4', 'C0162 Venta casa La Castellana', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(62, '2024-04-24 19:34:58.686464', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(63, '2024-04-24 19:35:06.934593', '1', 'C0154 VENTA Casa La Florida', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(64, '2024-04-24 19:52:45.282645', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(65, '2024-04-24 19:52:53.461734', '5', 'Venta Casa La Florida para estrenar!!', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(66, '2024-04-24 19:53:01.684192', '4', 'C0162 Venta casa La Castellana', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(67, '2024-04-24 19:53:12.798263', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(68, '2024-04-24 19:53:23.449601', '1', 'C0154 VENTA Casa La Florida', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(69, '2024-04-24 19:59:03.648129', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(70, '2024-04-24 20:44:16.320922', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[]', 1, 2),
(71, '2024-04-24 20:48:53.675017', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(72, '2024-04-24 20:49:44.088098', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(73, '2024-04-24 20:51:56.033940', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 1, 2),
(74, '2024-05-04 06:20:45.230067', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[]', 1, 2),
(75, '2024-05-04 06:20:53.851215', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[]', 1, 2),
(76, '2024-05-04 06:31:34.687087', '9', 'CEDO Casa Esquinera en Condominio Campestre El Retiro', 1, '[{\"added\": {}}]', 1, 2),
(77, '2024-05-04 06:32:19.198417', '9', 'CEDO Casa Esquinera en Condominio Campestre El Retiro', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(78, '2024-05-04 06:37:34.424535', '10', 'Alquiler de Casa Comercial 18 ambientes Palermo', 1, '[{\"added\": {}}]', 1, 2),
(79, '2024-05-04 06:38:49.586235', '10', 'Alquiler de Casa Comercial 18 ambientes Palermo', 2, '[{\"changed\": {\"fields\": [\"Photo 1\", \"Photo 2\", \"Photo 3\", \"Photo 4\", \"Photo 5\", \"Photo 6\"]}}]', 1, 2),
(80, '2024-05-05 02:17:56.849487', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[{\"changed\": {\"fields\": [\"City\", \"Price\"]}}]', 1, 2),
(81, '2024-05-05 02:18:41.364472', '1', 'C0154 VENTA Casa La Florida', 2, '[]', 1, 2),
(82, '2024-05-05 02:19:00.779876', '2', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 2, '[]', 1, 2),
(83, '2024-05-05 02:19:18.724966', '3', 'A0307 ARRIENDO Apartamento 2 Alcobas Campohermoso', 2, '[{\"changed\": {\"fields\": [\"City\"]}}]', 1, 2),
(84, '2024-05-05 02:19:31.618017', '4', 'C0162 Venta casa La Castellana', 2, '[{\"changed\": {\"fields\": [\"City\"]}}]', 1, 2),
(85, '2024-05-05 02:19:45.260781', '5', 'Venta Casa La Florida para estrenar!!', 2, '[]', 1, 2),
(86, '2024-05-05 02:19:55.534634', '6', 'Alquiler de Apartamento 3 Alcobas La Francia', 2, '[{\"changed\": {\"fields\": [\"City\"]}}]', 1, 2),
(87, '2024-05-05 02:20:06.876197', '7', 'Arriendo Apartamento El Trebol 3 Alcobas', 2, '[{\"changed\": {\"fields\": [\"City\"]}}]', 1, 2),
(88, '2024-05-05 02:20:16.996306', '8', 'Venta Casa Lote Bajo Tablazo', 2, '[]', 1, 2),
(89, '2024-05-05 02:20:28.698913', '9', 'CEDO Casa Esquinera en Condominio Campestre El Retiro', 2, '[]', 1, 2),
(90, '2024-05-05 02:20:39.348001', '10', 'Alquiler de Casa Comercial 18 ambientes Palermo', 2, '[]', 1, 2),
(91, '2024-05-05 02:38:12.645195', '10', 'Alquiler de Casa Comercial 18 ambientes Palermo', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2),
(92, '2024-05-05 02:39:51.925648', '10', 'Alquiler de Casa Comercial 18 ambientes Palermo', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(3, 'contacts', 'contact'),
(8, 'contenttypes', 'contenttype'),
(1, 'listings', 'listing'),
(2, 'realtors', 'realtor'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-12 00:05:10.054234'),
(2, 'auth', '0001_initial', '2023-12-12 00:05:10.503403'),
(3, 'admin', '0001_initial', '2023-12-12 00:05:10.602808'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-12 00:05:10.607877'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-12 00:05:10.613949'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-12 00:05:10.660035'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-12 00:05:10.706045'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-12 00:05:10.717737'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-12 00:05:10.722696'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-12 00:05:10.802100'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-12 00:05:10.806079'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-12 00:05:10.814059'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-12 00:05:10.825470'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-12 00:05:10.837704'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-12 00:05:10.848582'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-12 00:05:10.858079'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-12 00:05:10.869557'),
(18, 'contacts', '0001_initial', '2023-12-12 00:05:10.886861'),
(19, 'realtors', '0001_initial', '2023-12-12 00:05:10.902454'),
(20, 'listings', '0001_initial', '2023-12-12 00:05:10.975581'),
(21, 'listings', '0002_auto_20230924_1929', '2023-12-12 00:05:10.985789'),
(22, 'sessions', '0001_initial', '2023-12-12 00:05:11.017391');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1duo65zklgd1f14c4b1wyc1mhtuwqyl9', '.eJxVjEEOwiAQRe_C2hAKDBaX7j0DGYZBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwJXERWpx-t4j05LqD9MB6b5JaXeYpyl2RB-3y1hK_rof7d1Cwl60GMmTJnI1VbB3bNJK3aBCiZaVzJqfzoPwIFJMzMCTYVKMzAkT2PovPF-B2N9c:1rD4vo:c0wNons1O2b0-C3_B07ebcC5qGI3PbTw91hyz-s_a9w', '2023-12-26 15:44:24.759163'),
('r45hr4hn6yu56kl9ovlsogn27xl5eb0w', '.eJxVjEEOwiAQRe_C2hAKDBaX7j0DGYZBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwJXERWpx-t4j05LqD9MB6b5JaXeYpyl2RB-3y1hK_rof7d1Cwl60GMmTJnI1VbB3bNJK3aBCiZaVzJqfzoPwIFJMzMCTYVKMzAkT2PovPF-B2N9c:1rWL7c:P2GMJxZiVy_bRPRcp4wKoW0anZTDEzB1BrfxKHAws0M', '2024-02-17 18:52:12.344088'),
('xdp8o8gz2l6xkwophylsjcoc94qm6qe9', 'YTU4M2M2NGUyMmIyMmRkYjVlNzk0N2VjZjgzNDE4NWY2ZWY2MjZjMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGY3YmE5NGM3YmZiMjBkYjFhNTQ2OGQxYjI1ZWEzMzJlMGE4MGE4In0=', '2024-05-17 22:22:45.982188');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listings_listing`
--

CREATE TABLE `listings_listing` (
  `id` int(11) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `title` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` decimal(2,1) NOT NULL,
  `garage` int(11) NOT NULL,
  `sqft` int(11) NOT NULL,
  `lot_size` decimal(5,1) NOT NULL,
  `photo_main` varchar(100) NOT NULL,
  `photo_1` varchar(100) NOT NULL,
  `photo_2` varchar(100) NOT NULL,
  `photo_3` varchar(100) NOT NULL,
  `photo_4` varchar(100) NOT NULL,
  `photo_5` varchar(100) NOT NULL,
  `photo_6` varchar(100) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `list_date` datetime(6) NOT NULL,
  `realtor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listings_listing`
--

INSERT INTO `listings_listing` (`id`, `codigo`, `tipo`, `title`, `address`, `city`, `province`, `zipcode`, `description`, `price`, `bedrooms`, `bathrooms`, `garage`, `sqft`, `lot_size`, `photo_main`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`, `photo_6`, `is_published`, `list_date`, `realtor_id`) VALUES
(1, 'C0154', 'Casa', 'C0154 VENTA Casa La Florida', 'Cra 1 71-191', 'Villamaria', 'Caldas', '176001', 'Nos complace presentarles esta hermosa y amplia casa, ubicada en un barrio tranquilo y residencial. Esta propiedad es ideal para aquellos que buscan un espacio amplio y cómodo, con la ventaja adicional de un apartaestudio y dos casetas de esparcimiento.\r\n\r\nLa casa principal consta de tres acogedoras alcobas familiares, cada una equipada con closet para un almacenamiento adecuado de ropa y objetos personales. La alcoba principal es un verdadero oasis con una chimenea acogedora, jacuzzi relajante y un mirador con impresionantes vistas panorámicas.\r\n\r\nLa sala y el comedor son amplios y luminosos, con una decoración moderna y elegante. El comedor tiene acceso directo a un balcón encantador que ofrece la oportunidad de disfrutar del aire fresco y de las vistas de la zona. La casa también cuenta con dos baños completos y un baño social, lo que garantiza la comodidad y privacidad de los residentes y los visitantes.\r\n\r\nLa cocina integral es moderna y funcional, con acabados de alta calidad y una amplia gama de electrodomésticos. Además, la casa cuenta con una alcoba auxiliar con baño independiente, ideal para visitantes o un residente adicional.\r\n\r\nEl apartaestudio de dos ambientes es perfecto para aquellos que buscan un espacio privado y acogedor. Incluye un cuarto, baño y cocina, y cuenta con todos los servicios necesarios para una estancia cómoda y agradable.\r\n\r\nFinalmente, las dos casetas de esparcimiento son ideales para actividades recreativas y de entretenimiento. Una cuenta con mesa de ping pong y billar, mientras que la otra cuenta con mobiliario de centro de música, perfecta para fiestas y reuniones familiares.\r\n\r\nEn cuanto a la seguridad, la propiedad cuenta con una puerta eléctrica para el ingreso, lo que garantiza la privacidad y seguridad de los residentes.\r\n\r\nEn resumen, esta propiedad es una excelente opción para aquellos que buscan un espacio amplio, acogedor y con muchas comodidades. Si está interesado en esta propiedad, no dude en ponerse en contacto conmigo para programar una visita al 311 5699805', 1000000000, 3, 3.0, 5, 220, 0.1, 'photos/2023/12/11/IMG_20230324_144752_HDR.jpg', 'photos/2023/12/11/IMG_20230324_143428_HDR.jpg', 'photos/2023/12/11/IMG_20230324_143451_HDR.jpg', 'photos/2023/12/11/IMG_20230324_143551_HDR.jpg', 'photos/2023/12/11/IMG_20230324_143558_HDR.jpg', 'photos/2023/12/11/IMG_20230324_144807_HDR.jpg', 'photos/2023/12/11/IMG_20230324_143629_HDR.jpg', 1, '2023-12-11 19:17:08.000000', 1),
(2, 'C0131', 'Casa', 'C0131 ARRIENDO Casa La Florida en Conjunto cerrado', 'Carrera 1', 'Villamaria', 'Caldas', '176001', '???? Descubre esta Encantadora Casa Muy Iluminada en Venta ????\r\n\r\nUbicada en un entorno tranquilo y acogedor, esta hermosa casa ofrece un espacio lleno de luz y comodidad para tu familia.\r\n\r\nCaracterísticas de la Casa:\r\n\r\nPrimer Piso:\r\n\r\n????️ Amplia sala comedor para reuniones familiares.\r\n???? Cocina bien iluminada para preparar deliciosas comidas.\r\n???? Patio de ropas para tus tareas domésticas.\r\n???? Patio exterior para disfrutar del aire libre.\r\n???? Baño social para mayor comodidad.\r\n\r\nSegundo Piso:\r\n\r\n???? Estudio, ideal para trabajar o estudiar.\r\n???? Baño de alcobas completo.\r\n???? Dos cuartos con closet.\r\n???? Cuarto principal con baño y closet.\r\n\r\nComodidades del Conjunto:\r\nEste hogar forma parte de un conjunto que brinda un ambiente excepcional, con:\r\n\r\n???? Avistamiento de aves para disfrutar de la naturaleza.\r\n???? Sendero ecológico para caminatas tranquilas.\r\n???? Casa de muñecas, un espacio encantador.\r\n???? Mascotario para los amantes de los animales.\r\n???? Piscina para disfrutar de momentos refrescantes.\r\n???? Salón social para eventos y reuniones.\r\n????️ Gimnasio para mantenerse en forma.\r\n???? Esta casa es perfecta para aquellos que buscan un hogar acogedor y lleno de comodidades. No pierdas la oportunidad de vivir en este maravilloso lugar.\r\n\r\n???? ¡Llama ahora al 311 569 9805 para obtener más detalles y programar una visita!', 2700000, 3, 2.5, 2, 105, 1.0, 'photos/2023/12/11/IMG_20231206_102711_MP.jpg', 'photos/2023/12/11/IMG_20231206_102721_MP.jpg', 'photos/2023/12/11/IMG_20231206_102912_MP.jpg', 'photos/2023/12/11/IMG_20231206_102742_MP.jpg', 'photos/2023/12/11/IMG_20231206_102847_MP.jpg', 'photos/2023/12/11/IMG_20231206_102905_MP.jpg', 'photos/2023/12/11/IMG_20231206_102833_MP.jpg', 1, '2023-12-11 19:29:01.000000', 1),
(3, 'A0307', 'Apartamento', 'A0307 ARRIENDO Apartamento 2 Alcobas Campohermoso', 'Carrera 11 15-78', 'Manizales', 'Caldas', '170001', '¡Esta es tu oportunidad de estrenar un acogedor apartamento en Atalaya de Campohermoso!\r\n\r\nEl apartamento cuenta con:\r\nDos alcobas para mayor comodidad.\r\nSala-Comedor para compartir momentos especiales.\r\nCocina equipada para preparar deliciosas comidas.\r\nBaño completo.\r\nBalcón con vistas encantadoras.\r\nVideo portero y cerradura inteligente para tu seguridad.\r\nParqueadero dentro del edificio.\r\n\r\nEl edificio ofrece:\r\nAscensor para facilitar tu movilidad.\r\nSalón social con cocineta y terraza para eventos.\r\nPortería con video portero para tranquilidad.\r\nParqueaderos cubiertos para la protección de tu vehículo.\r\nCámaras de vigilancia para una mayor seguridad.\r\n\r\nCon una ubicación estratégica cerca de todo lo que necesitas, desde el centro de la ciudad hasta transporte fácil, supermercados, la Universidad de Manizales, clínicas e iglesias. Todo para tu comodidad y conveniencia.\r\n\r\n¡No dejes pasar esta oportunidad! Contáctanos hoy mismo para obtener más información y agendar una visita. Info: 311 569 9805.', 1300000, 2, 1.0, 1, 45, 45.0, 'photos/2024/04/17/IMG_20240207_142854_MP.jpg', 'photos/2024/04/17/IMG_20240207_143004_MP.jpg', 'photos/2024/04/17/IMG_20240207_142903_MP.jpg', 'photos/2024/04/17/IMG_20240207_142924_MP.jpg', 'photos/2024/04/17/IMG_20240207_142945_MP.jpg', 'photos/2024/04/17/IMG_20240207_142956_MP.jpg', 'photos/2024/04/17/IMG_20240206_094849_MP.jpg', 1, '2024-04-17 20:22:54.000000', 1),
(4, 'C0162', 'Casa', 'C0162 Venta casa La Castellana', 'Plaza de Toros de Manizales, Carrera 27, Manizales, Caldas, Colombia', 'Manizales', 'Caldas', '170001', '???? ¡Excelente Oportunidad para Empresas, EPS, Ancianatos y Más en La Castellana! ????\r\n\r\nEsta espaciosa casa en venta, ubicada en el exclusivo sector de La Castellana, no solo es ideal para residencia, ¡sino también perfecta para diversos usos comerciales! Aquí tienes los detalles clave:\r\n\r\nCaracterísticas:\r\n\r\n???? 520 metros cuadrados construidos.\r\n???? Lote total de 317 metros cuadrados.\r\n???? 5 Baños completos y baño social.\r\n????️ 8 Habitaciones, ofreciendo versatilidad para distintos fines.\r\n???? Dos Patios para áreas recreativas.\r\n???? Garaje para 3 carros.\r\n????️ 2 Salas para espacios de reunión.\r\n???? Instalación de gas natural para mayor comodidad.\r\n???? Dos pisos más terraza para una distribución funcional.\r\n???? Estrato 6.\r\n\r\nIdeal para:\r\n\r\n???? Empresas que buscan un espacio amplio y versátil.\r\n???? EPS que requieren instalaciones cómodas.\r\n???? Ancianatos, aprovechando las amplias habitaciones.\r\n???? Cualquier negocio que valore una ubicación privilegiada.\r\n\r\nInversión:\r\n\r\n???? Precio de venta: $1.350.000.000 (Negociables).\r\n???? Se recibe algo de menor valor.\r\n\r\nSi esta propiedad cumple con tus necesidades comerciales, ¡no dudes en contactarnos al ???? 311 569 9805! Estamos aquí para brindarte más información y guiarte en el proceso de adquisición. ¡Haz de esta casa tu nuevo espacio para hacer crecer tu negocio! ????', 1050000000, 8, 5.0, 3, 520, 520.0, 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.33_AM_2.jpg', 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.33_AM_1.jpg', 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.36_AM_1.jpg', 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.35_AM_1.jpg', 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.35_AM.jpg', 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.35_AM_1_kY04Xux.jpg', 'photos/2024/04/19/WhatsApp_Image_2024-01-24_at_7.54.34_AM_3.jpg', 1, '2024-04-19 20:08:50.000000', 1),
(5, 'C0159', 'Casa', 'Venta Casa La Florida para estrenar!!', 'La Florida, Villamaría, Caldas, Colombia', 'Villamaria', 'Caldas', '176001', '???? Venta de Casa en Conjunto, PARA ESTRENAR!! Sector La Florida ????\r\n\r\n¿Buscas un hogar en un lugar tranquilo para disfrutar y compartir en familia? ¡Esta casa en el Conjunto Campestre es la elección perfecta! Con 3 alcobas, 3 baños y una variedad de comodidades, te ofrece un estilo de vida excepcional.\r\n\r\nCaracterísticas de la Casa:\r\n\r\n????️ 3 alcobas con closet, brindándote espacio para organizar tus pertenencias de manera eficiente.\r\n???? 3 baños funcionales para la comodidad de tu familia y visitantes.\r\n????️ Cocina abierta, un espacio moderno y funcional para preparar deliciosas comidas.\r\n???? Estudio, ideal para trabajo o estudio desde casa.\r\n???? Zona de ropas, perfecta para tus tareas domésticas.\r\n???? Patio posterior, un espacio al aire libre para relajarte y disfrutar.\r\n???? Parqueadero para estacionar dos vehículos de forma segura.\r\n\r\nComodidades del Conjunto:\r\n\r\n???? Piscina para refrescarte en los días calurosos.\r\n????️ Gimnasio para mantenerte activo y saludable.\r\n⚽ Cancha de fútbol y baloncesto para los amantes del deporte.\r\n????‍♀️ Turco, sauna y jacuzzi para momentos de relajación.\r\n???? Portería y vigilancia las 24 horas para tu seguridad.\r\n\r\nDetalles Adicionales:\r\n\r\n???? Área de la casa de 125 metros cuadrados.\r\n???? 2 balcones que ofrecen vistas encantadoras.\r\n???? Un cuarto útil amplio para almacenar tus pertenencias.\r\n???? Un patio de 24 metros cuadrados para disfrutar de actividades al aire libre.\r\n\r\nEsta casa es una oportunidad única para tener un hogar en un lugar tranquilo con comodidades excepcionales. ¿Listo para hacer de esta casa tu nuevo hogar? ¡Contáctanos ahora al 311 569 9805 para obtener más detalles y programar una visita.', 730000000, 3, 3.0, 2, 125, 125.0, 'photos/2024/04/19/IMG_20231220_155054_MP.jpg', 'photos/2024/04/19/IMG_20231220_155116_MP.jpg', 'photos/2024/04/19/IMG_20231220_155303_MP.jpg', 'photos/2024/04/19/IMG_20231220_155330_MP.jpg', 'photos/2024/04/19/IMG_20231220_155427_MP.jpg', 'photos/2024/04/19/IMG_20231220_155455_MP.jpg', 'photos/2024/04/19/IMG_20231220_155514_MP.jpg', 1, '2024-04-19 22:14:52.000000', 1),
(6, 'A0250', 'Apartamento', 'Alquiler de Apartamento 3 Alcobas La Francia', 'Cra. 15 #4b-63, Manizales, Caldas, Colombia', 'Manizales', 'Caldas', '170001', '???? ¡Hermoso Apartamento en Piso 13 con Ascensor! ????\r\n\r\nDescubre este encantador apartamento ubicado en el piso 13, que te brinda una vista excepcional. Consta de:\r\n\r\n????️ Distribución del Apartamento:\r\n\r\nTres alcobas, cada una con su respectivo closet.\r\nDos baños para mayor comodidad.\r\nSalacomedor, el espacio perfecto para tus momentos especiales.\r\nCocina bien distribuida y zona de ropas.\r\n???? Detalles del Conjunto Residencial:\r\n\r\nJuegos para niños, ideal para la diversión de los más pequeños.\r\nCancha para disfrutar de actividades deportivas.\r\nSalón social para eventos y reuniones.\r\nParqueadero para visitantes.\r\n???? ¡Comunícate al 311 569 9805 para obtener más detalles y agendar una visita! ???? ¡Vive en un lugar lleno de comodidades y con una vista inigualable! ????', 1200000, 3, 2.0, 1, 60, 60.0, 'photos/2024/04/19/Foto_8-06-22_9_14_34_a.m..jpg', 'photos/2024/04/19/Foto_8-06-22_9_03_52_a.m..jpg', 'photos/2024/04/19/Foto_8-06-22_9_04_02_a.m..jpg', 'photos/2024/04/19/Foto_8-06-22_9_04_43_a.m..jpg', 'photos/2024/04/19/Foto_8-06-22_9_05_28_a.m..jpg', 'photos/2024/04/19/Foto_8-06-22_9_08_26_a.m..jpg', 'photos/2024/04/19/Foto_8-06-22_9_13_59_a.m..jpg', 1, '2024-04-19 22:18:21.000000', 1),
(7, 'A0270', 'Apartamento', 'Arriendo Apartamento El Trebol 3 Alcobas', 'Moratto Living, Manizales, Caldas, Colombia', 'Manizales', 'Caldas', '170001', '???? Espectacular Apartamento con Vista Impresionante en Ubicación Privilegiada\r\n\r\nEste impresionante apartamento ofrece una ubicación privilegiada con vistas que harán que cada día sea más hermoso. Con tres alcobas familiares, cada una con su propio estilo y personalidad, este lugar es perfecto para familias o parejas que buscan comodidad y privacidad.\r\n\r\n????️ Tres Alcobas con Closet\r\nLas tres alcobas cuentan con closets, cada una con su propio estilo único. La alcoba principal incluye un vestier y baño privado, brindando un espacio íntimo y elegante.\r\n\r\n????️ Cocina Integral Bien Equipada\r\nLa cocina integral está diseñada para brindar todo lo necesario para cocinar y disfrutar de comidas en familia.\r\n\r\n???? Cuarto de Ropas y Cuarto Útil\r\nEl cuarto de ropas y el cuarto útil proporcionan el espacio adicional necesario para mantener sus cosas organizadas y fuera del camino.\r\n\r\n???? Instalaciones y Servicios del Edificio\r\nEl edificio ofrece una amplia gama de instalaciones y servicios para los residentes, incluyendo portería, shut de basura, ascensores, amplias zonas verdes, oficina de administración, sala de recepción, subestación eléctrica y tanque de abastecimiento de agua. Todo diseñado para brindar comodidad, seguridad y entretenimiento.\r\n\r\nContacto: 311 569 9805\r\nEn resumen, si buscas un apartamento con vista espectacular y una amplia gama de instalaciones y servicios, ¡este es el lugar perfecto para ti! ¡No lo pienses más y haz de este apartamento tu hogar! ????????', 2700000, 3, 2.0, 1, 95, 95.0, 'photos/2024/04/19/IMG_20221228_163107_HDR.jpg', 'photos/2024/04/19/IMG_20221228_163047_HDR.jpg', 'photos/2024/04/19/IMG_20221228_163213_HDR.jpg', 'photos/2024/04/19/IMG_20221228_163229_HDR.jpg', 'photos/2024/04/19/IMG_20221228_163331_HDR.jpg', 'photos/2024/04/19/IMG_20221228_163339_HDR.jpg', 'photos/2024/04/19/IMG_20221228_163258_HDR.jpg', 1, '2024-04-19 22:21:21.000000', 1),
(8, 'C0144', 'Casa', 'Venta Casa Lote Bajo Tablazo', '2FC6+WM, Manizales, Caldas, Colombia', 'Manizales', 'Caldas', '170001', '???? ¡Hermosa Casa en el Bajo Tablazo con Vistas Espectaculares! ????\r\n\r\n¡Bienvenido a esta maravillosa propiedad que te ofrece la oportunidad de tener un hogar espacioso y tranquilo en una zona privilegiada con vistas impresionantes! Ubicada a lo largo de la vía principal hacia Chinchiná y a solo 15 minutos del centro de Manizales, esta casa te brinda una ubicación conveniente y accesible.\r\n\r\nCaracterísticas de la Casa Principal:\r\n???? Casa principal con una construcción de 199 metros cuadrados.\r\n????️ 4 cuartos con excelentes acabados.\r\n???? Dormitorio principal con vestier y baño privado, brindándote comodidad y privacidad.\r\n???? Dos baños adicionales para la comodidad de tu familia.\r\n????️ Sala-comedor y comedor auxiliar para compartir momentos inolvidables.\r\n???? Cocina totalmente equipada para tus necesidades culinarias.\r\n???? Zona de ropas para tu conveniencia.\r\n???? Terraza perfecta para asados en familia o con amigos.\r\n????️ Balcón para disfrutar de las espectaculares vistas.\r\n????️ Lote con cultivo de café y flores, añadiendo un toque especial.\r\n\r\nCaracterísticas del Apartamento Adicional:\r\n???? Apartamento adicional con una superficie de 81 metros cuadrados.\r\n????️ 3 cuartos para recibir visitas o para ingresos adicionales mediante el alquiler.\r\n???? 1 baño para la comodidad de los invitados.\r\n????️ Sala-comedor y cocina en el apartamento.\r\n???? Patio interior para relajarse.\r\n\r\nComodidades Adicionales:\r\n???? Parqueadero disponible.\r\n????️ Alcantarillado y agua de Manizales.\r\n???? Tanque de aguas lluvias que suministra líquido a los baños, brindándote eficiencia y comodidad.\r\n\r\nEn resumen, esta casa en el Bajo Tablazo es una oportunidad única para disfrutar de un hogar espacioso y tranquilo en una ubicación privilegiada. No solo contarás con vistas espectaculares, sino también con excelentes acabados, un apartamento adicional y un amplio lote con cultivo de café y flores. ¡No pierdas esta oportunidad de tener tu propio paraíso en Manizales!\r\n\r\n???? ¡Contáctanos hoy mismo al 311 569 9805 para obtener más información y programar una visita!', 600000000, 7, 4.0, 1, 289, 7500.0, 'photos/2024/04/21/IMG_20220719_100135_HDR.jpg', 'photos/2024/04/21/Foto_19-07-22_10_25_49_a.m..jpg', 'photos/2024/04/21/Foto_19-07-22_10_26_32_a.m..jpg', 'photos/2024/04/21/IMG_20220719_102822_HDR.jpg', 'photos/2024/04/21/IMG_20220719_101646_HDR.jpg', 'photos/2024/04/21/IMG_20220719_102751_HDR.jpg', 'photos/2024/04/21/IMG_20220719_103400_HDR.jpg', 1, '2024-04-21 21:44:45.000000', 1),
(9, 'C0163', 'Casa', 'CEDO Casa Esquinera en Condominio Campestre El Retiro', 'El Retiro, Vía al Tronío, Villamaría, Caldas, Colombia', 'Villamaria', 'Caldas', '176001', '???? CEDO Casa Esquinera en Condominio Campestre El Retiro ????\r\n\r\nUbicación: Condominio Campestre El Retiro, Sector La Florida, Villamaría, Caldas, Etapa 1.\r\n\r\nCaracterísticas del Inmueble:\r\n\r\n???? Área Privada: 102,60 m².\r\n ???? Área Total: 110,70 m².\r\n????️ Sala Comedor.\r\n???? Estudio.\r\n????️ Depósito Bajo Escaleras.\r\n????️ Cocina.\r\n???? Patio de Ropas.\r\n???? Jardín Posterior.\r\n???? Hall de Alcobas.\r\n???? Baño Social en 1er Piso.\r\n???? Baño Social en 2do Piso.\r\n????️ Alcoba Principal con Baño.\r\n???? 2 Alcobas Auxiliares.\r\n\r\nAmenidades del Conjunto:\r\n\r\n???? Portería.\r\n????️ Oficina de Administración.\r\n???? Zona de Espera y Mensajería.\r\n????️ Parqueaderos de Visitantes.\r\n????️ Cuarto de Basuras.\r\n???? Salón Social.\r\n???? Terraza Contemplativa.\r\n???? Zona Coworking.\r\n⚽ Cancha Sintética de Fútbol.\r\n????️‍♂️ Gimnasio al Aire Libre.\r\n???? Juegos Infantiles.\r\n???? Mascotario.\r\n????‍♂️ Piscina y Zonas Húmedas.\r\n???? Sendero Paisajístico.\r\n\r\nPara obtener más información o concertar una visita, comunícate al ???? 311 569 9805. ¡Estamos aquí para ayudarte con cualquier consulta sobre esta maravillosa propiedad en el Condominio Campestre El Retiro! ????', 640000000, 3, 2.0, 2, 102, 102.0, 'photos/2024/05/04/IMG_20240419_112129_HDR.jpg', 'photos/2024/05/04/IMG_20240419_111117_HDR.jpg', 'photos/2024/05/04/IMG_20240419_111228_HDR.jpg', 'photos/2024/05/04/IMG_20240419_111329_HDR.jpg', 'photos/2024/05/04/IMG_20240419_111333_HDR.jpg', 'photos/2024/05/04/IMG_20240419_111432_HDR.jpg', 'photos/2024/05/04/IMG_20240419_112057_HDR.jpg', 1, '2024-05-04 01:23:09.000000', 1),
(10, 'C0108', 'Comercial', 'Alquiler de Casa Comercial 18 ambientes Palermo', 'Carrera 23B 67 29', 'Manizales', 'Caldas', '17001', '???? ¡Casa Comercial con Amplios Espacios y Excelente Iluminación! ????\r\n\r\nEsta impresionante casa, destinada para uso comercial, cuenta con 18 ambientes amplios y luminosos, diseñados para adaptarse a las necesidades de cualquier negocio. Con una generosa superficie de construcción, esta propiedad ofrece un amplio espacio para desarrollar su actividad de manera eficiente y cómoda.\r\n\r\nLos ambientes están distribuidos de manera equilibrada, permitiendo una organización adecuada y una buena circulación. Grandes ventanales en cada ambiente proporcionan una excelente iluminación natural, creando un ambiente acogedor y energizante. Además, las ventanas están equipadas con sistemas de seguridad y aislamiento para garantizar un entorno seguro y cómodo.\r\n\r\nLa casa cuenta con 3 baños completamente equipados, dos de ellos con duchas y sanitarios de alta calidad, y uno especialmente adaptado para personas con discapacidad. Esto facilita el acceso tanto para los trabajadores como para los clientes, garantizando un entorno higiénico y accesible.\r\n\r\nEn resumen, esta propiedad es ideal para cualquier negocio que busque un espacio amplio, bien iluminado y con excelentes características, además de contar con una ubicación privilegiada. ¡No dude más y haga de esta casa su nueva sede comercial!\r\n\r\n???? ¡Contáctenos al 311 569 9805 ahora para más detalles y agendar una visita!', 11000000, 12, 3.5, 0, 250, 250.0, 'photos/2024/05/04/IMG_20190127_085502.jpg', 'photos/2024/05/04/IMG_20190127_085235.jpg', 'photos/2024/05/04/IMG_20190127_085317.jpg', 'photos/2024/05/04/IMG_20190127_085351.jpg', 'photos/2024/05/04/IMG_20190127_085202.jpg', 'photos/2024/05/04/IMG_20190127_085242.jpg', 'photos/2024/05/04/IMG_20190127_085443.jpg', 1, '2024-05-04 01:35:02.000000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realtors_realtor`
--

CREATE TABLE `realtors_realtor` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_mvp` tinyint(1) NOT NULL,
  `hire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `realtors_realtor`
--

INSERT INTO `realtors_realtor` (`id`, `name`, `photo`, `description`, `phone`, `email`, `is_mvp`, `hire_date`) VALUES
(1, 'Oscar N. Velásquez Gómez', 'photos/2023/12/11/OscarN.jpg', 'CEO', '3115699805', 'gerencia@inmobiliariasanmarcos.com', 0, '2023-12-11 19:16:13.000000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` (`realtor_id`);

--
-- Indices de la tabla `realtors_realtor`
--
ALTER TABLE `realtors_realtor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `listings_listing`
--
ALTER TABLE `listings_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `realtors_realtor`
--
ALTER TABLE `realtors_realtor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD CONSTRAINT `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` FOREIGN KEY (`realtor_id`) REFERENCES `realtors_realtor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
