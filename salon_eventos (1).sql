-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2025 at 06:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salon_eventos`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Servicio', 7, 'add_servicio'),
(26, 'Can change Servicio', 7, 'change_servicio'),
(27, 'Can delete Servicio', 7, 'delete_servicio'),
(28, 'Can view Servicio', 7, 'view_servicio'),
(29, 'Can add salon', 8, 'add_salon'),
(30, 'Can change salon', 8, 'change_salon'),
(31, 'Can delete salon', 8, 'delete_salon'),
(32, 'Can view salon', 8, 'view_salon'),
(33, 'Can add imagen salon', 9, 'add_imagensalon'),
(34, 'Can change imagen salon', 9, 'change_imagensalon'),
(35, 'Can delete imagen salon', 9, 'delete_imagensalon'),
(36, 'Can view imagen salon', 9, 'view_imagensalon'),
(37, 'Can add Fecha bloqueada', 10, 'add_fechabloqueada'),
(38, 'Can change Fecha bloqueada', 10, 'change_fechabloqueada'),
(39, 'Can delete Fecha bloqueada', 10, 'delete_fechabloqueada'),
(40, 'Can view Fecha bloqueada', 10, 'view_fechabloqueada'),
(41, 'Can add cliente', 11, 'add_cliente'),
(42, 'Can change cliente', 11, 'change_cliente'),
(43, 'Can delete cliente', 11, 'delete_cliente'),
(44, 'Can view cliente', 11, 'view_cliente'),
(45, 'Can add Reserva', 12, 'add_reserva'),
(46, 'Can change Reserva', 12, 'change_reserva'),
(47, 'Can delete Reserva', 12, 'delete_reserva'),
(48, 'Can view Reserva', 12, 'view_reserva'),
(49, 'Can add Servicio en reserva', 13, 'add_reservaservicio'),
(50, 'Can change Servicio en reserva', 13, 'change_reservaservicio'),
(51, 'Can delete Servicio en reserva', 13, 'delete_reservaservicio'),
(52, 'Can view Servicio en reserva', 13, 'view_reservaservicio'),
(53, 'Can add Servicio agregado', 14, 'add_lineaservicio'),
(54, 'Can change Servicio agregado', 14, 'change_lineaservicio'),
(55, 'Can delete Servicio agregado', 14, 'delete_lineaservicio'),
(56, 'Can view Servicio agregado', 14, 'view_lineaservicio'),
(57, 'Can add Pago', 15, 'add_pago'),
(58, 'Can change Pago', 15, 'change_pago'),
(59, 'Can delete Pago', 15, 'delete_pago'),
(60, 'Can view Pago', 15, 'view_pago');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$KiWVZqOAGYdYZiQsGsFbur$cdkAPKxKhHpBtsJyFpYU+42awwc45yosQjNyDsJ/fEw=', '2025-09-30 23:43:23.589128', 1, 'admin', '', '', '', 1, 1, '2025-09-30 23:42:28.841446');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(120) NOT NULL,
  `apellidos` varchar(120) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `email` varchar(160) DEFAULT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientes_cliente`
--

CREATE TABLE `clientes_cliente` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(120) NOT NULL,
  `apellidos` varchar(120) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `nit` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientes_cliente`
--

INSERT INTO `clientes_cliente` (`id`, `nombres`, `apellidos`, `telefono`, `email`, `nit`) VALUES
(1, 'Jose', 'Morales Lopez', '4875951', 'josemorales@gamil.com', '558524'),
(3, 'Amilcar', 'Calel Saquic', '46163551', 'amilcarcalel24@gmail.com', '6454546'),
(4, 'Henry', 'Tuy', '45877985', 'henry@gmail.com', '4578741'),
(5, 'Gustavo', 'Morales Lopez', '58253545', 'gustavo@gmail.com', 'cf'),
(6, 'Diego Armando', 'Pérez Suy', '58529825', 'diego@gmail.com', '558524'),
(7, 'Henry Riquelme', 'Ajiatas Ramirez', '35254785', 'henry34@gmail.com', '58248');

-- --------------------------------------------------------

--
-- Table structure for table `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id` bigint(20) NOT NULL,
  `reserva_id` bigint(20) NOT NULL,
  `tipo` enum('recibo','factura') NOT NULL DEFAULT 'recibo',
  `numero` varchar(60) NOT NULL,
  `pdf_url` varchar(255) DEFAULT NULL,
  `generado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-10-03 02:13:09.318797', '1', 'Salon 1 (Capacidad: 50)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'clientes', 'cliente'),
(5, 'contenttypes', 'contenttype'),
(14, 'pagos', 'lineaservicio'),
(15, 'pagos', 'pago'),
(12, 'reservas', 'reserva'),
(13, 'reservas', 'reservaservicio'),
(10, 'salones', 'fechabloqueada'),
(9, 'salones', 'imagensalon'),
(8, 'salones', 'salon'),
(7, 'servicios', 'servicio'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-30 23:41:34.948414'),
(2, 'auth', '0001_initial', '2025-09-30 23:41:35.430734'),
(3, 'admin', '0001_initial', '2025-09-30 23:41:35.532367'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-09-30 23:41:35.542127'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-30 23:41:35.550878'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-09-30 23:41:35.608871'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-09-30 23:41:35.659640'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-09-30 23:41:35.676728'),
(9, 'auth', '0004_alter_user_username_opts', '2025-09-30 23:41:35.686772'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-09-30 23:41:35.722539'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-09-30 23:41:35.729394'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-09-30 23:41:35.742081'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-09-30 23:41:35.754892'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-09-30 23:41:35.770246'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-09-30 23:41:35.786950'),
(16, 'auth', '0011_update_proxy_permissions', '2025-09-30 23:41:35.795979'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-09-30 23:41:35.812537'),
(18, 'sessions', '0001_initial', '2025-09-30 23:41:35.843624'),
(19, 'servicios', '0001_initial', '2025-10-03 00:47:34.302539'),
(20, 'clientes', '0001_initial', '2025-10-03 00:59:55.652411'),
(21, 'salones', '0001_initial', '2025-10-03 00:59:55.923184'),
(22, 'reservas', '0001_initial', '2025-10-03 00:59:56.221288'),
(23, 'pagos', '0001_initial', '2025-11-03 18:52:50.626756');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6tfwu7eb6aiegt9foqaqtbu2sng5a8lx', '.eJxVjMEOwiAQRP-FsyGAXaAevfsNZFkWqRpISnsy_rtt0oOeJpn3Zt4i4LqUsHaew5TERWhx-u0i0pPrDtID671JanWZpyh3RR60y1tL_Loe7t9BwV62tUmKjHWgOGvvozqDcoNlUg4BQXsD0ZMdgSgy4xgJtNki64HJOZXF5wvRRTf5:1v3k0B:_9MFnWNut27VmRr07duogrdnUt0gJx_MdYWujsdqKbc', '2025-10-14 23:43:23.593384');

-- --------------------------------------------------------

--
-- Table structure for table `fechas_bloqueadas`
--

CREATE TABLE `fechas_bloqueadas` (
  `id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `motivo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagenes_salon`
--

CREATE TABLE `imagenes_salon` (
  `id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `alt_text` varchar(200) DEFAULT NULL,
  `orden` int(11) NOT NULL DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metodos_pago`
--

CREATE TABLE `metodos_pago` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `id` bigint(20) NOT NULL,
  `reserva_id` bigint(20) NOT NULL,
  `metodo_id` bigint(20) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `moneda` varchar(10) NOT NULL DEFAULT 'GTQ',
  `referencia_txn` varchar(120) DEFAULT NULL,
  `estado` enum('aprobado','pendiente','rechazado') NOT NULL DEFAULT 'aprobado',
  `fecha_pago` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagos_lineaservicio`
--

CREATE TABLE `pagos_lineaservicio` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `precio_unitario` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `reserva_id` bigint(20) NOT NULL,
  `servicio_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagos_pago`
--

CREATE TABLE `pagos_pago` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `metodo` varchar(20) NOT NULL,
  `referencia` varchar(120) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `observaciones` longtext NOT NULL,
  `reserva_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagos_pago`
--

INSERT INTO `pagos_pago` (`id`, `fecha`, `metodo`, `referencia`, `monto`, `observaciones`, `reserva_id`) VALUES
(2, '2025-11-03', 'efectivo', '', 5.00, '', 2),
(4, '2025-11-04', 'efectivo', '', 550.00, '', 3),
(6, '2025-11-05', 'efectivo', '', 100.00, '', 10),
(7, '2025-11-05', 'efectivo', '', 800.00, '', 11),
(8, '2025-11-05', 'efectivo', '', 11150.00, '', 12),
(9, '2025-11-05', 'efectivo', '', 45.00, '', 11),
(10, '2025-11-05', 'efectivo', '', 3300.00, 'Se pago el total en efectivo', 13);

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `estado` enum('pendiente','confirmada','pagada','cancelada') NOT NULL DEFAULT 'pendiente',
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `creado_por` bigint(20) DEFAULT NULL,
  `notas` varchar(300) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ;

-- --------------------------------------------------------

--
-- Table structure for table `reservas_reserva`
--

CREATE TABLE `reservas_reserva` (
  `id` bigint(20) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_inicio` time(6) NOT NULL,
  `hora_fin` time(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `notas` varchar(300) NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `actualizado_en` datetime(6) NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservas_reserva`
--

INSERT INTO `reservas_reserva` (`id`, `fecha_evento`, `hora_inicio`, `hora_fin`, `estado`, `total`, `notas`, `creado_en`, `actualizado_en`, `cliente_id`, `salon_id`) VALUES
(2, '2025-10-25', '05:00:00.000000', '06:00:00.000000', 'pagada', 50.00, 'ninguna', '2025-10-17 06:08:58.961668', '2025-10-17 06:09:11.887118', 4, 1),
(3, '2025-11-04', '06:00:00.000000', '07:00:00.000000', 'pagada', 550.00, '', '2025-11-04 07:10:55.695013', '2025-11-04 07:10:55.695034', 3, 1),
(4, '2025-11-04', '08:00:00.000000', '10:00:00.000000', 'pendiente', 2050.00, '', '2025-11-05 03:07:57.303527', '2025-11-05 03:07:57.303549', 1, 2),
(5, '2025-10-04', '06:00:00.000000', '07:00:00.000000', 'confirmada', 3000.00, '', '2025-11-05 06:21:25.274727', '2025-11-05 06:21:25.274748', 1, 2),
(9, '2025-11-05', '08:00:00.000000', '10:00:00.000000', 'pendiente', 600.00, '', '2025-11-05 07:22:32.728775', '2025-11-05 07:22:32.728802', 3, 1),
(10, '2025-11-05', '08:00:00.000000', '10:00:00.000000', 'pagada', 100.00, '', '2025-11-05 07:24:06.979273', '2025-11-05 07:24:06.979310', 1, 2),
(11, '2025-11-05', '03:00:00.000000', '04:00:00.000000', 'confirmada', 850.00, '', '2025-11-05 07:31:30.508815', '2025-11-05 07:31:30.508857', 4, 1),
(12, '2025-11-05', '06:00:00.000000', '09:00:00.000000', 'pagada', 11150.00, '', '2025-11-06 04:17:34.645599', '2025-11-06 04:17:34.646282', 5, 1),
(13, '2025-11-05', '03:00:00.000000', '06:00:00.000000', 'pagada', 3300.00, 'Pendiente de confirmación', '2025-11-06 04:49:46.024627', '2025-11-06 04:49:46.024680', 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reservas_reservaservicio`
--

CREATE TABLE `reservas_reservaservicio` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `precio_unitario` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `reserva_id` bigint(20) NOT NULL,
  `servicio_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservas_reservaservicio`
--

INSERT INTO `reservas_reservaservicio` (`id`, `cantidad`, `precio_unitario`, `subtotal`, `reserva_id`, `servicio_id`) VALUES
(1, 1, 500.00, 500.00, 3, 3),
(2, 1, 2000.00, 2000.00, 4, 7),
(3, 1, 3000.00, 3000.00, 5, 4),
(6, 1, 500.00, 500.00, 9, 3),
(7, 1, 800.00, 800.00, 11, 6),
(8, 1, 3000.00, 3000.00, 12, 4),
(9, 1, 8000.00, 8000.00, 12, 5),
(10, 1, 3000.00, 3000.00, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `id` bigint(20) NOT NULL,
  `reserva_id` bigint(20) NOT NULL,
  `servicio_id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `precio_unitario` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salones`
--

CREATE TABLE `salones` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `precio_base` decimal(12,2) NOT NULL DEFAULT 0.00,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salones_fechabloqueada`
--

CREATE TABLE `salones_fechabloqueada` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `salon_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salones_imagensalon`
--

CREATE TABLE `salones_imagensalon` (
  `id` bigint(20) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `alt_text` varchar(200) NOT NULL,
  `orden` int(10) UNSIGNED NOT NULL CHECK (`orden` >= 0),
  `creado_en` datetime(6) NOT NULL,
  `salon_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salones_salon`
--

CREATE TABLE `salones_salon` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `capacidad` int(10) UNSIGNED NOT NULL CHECK (`capacidad` >= 0),
  `descripcion` longtext DEFAULT NULL,
  `precio_hora` decimal(10,2) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `actualizado_en` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salones_salon`
--

INSERT INTO `salones_salon` (`id`, `nombre`, `capacidad`, `descripcion`, `precio_hora`, `disponible`, `creado_en`, `actualizado_en`) VALUES
(1, 'Salon 1', 50, 'Salon de eventos', 50.00, 1, '2025-10-03 02:13:09.316423', '2025-10-03 02:13:09.316458'),
(2, 'Salon 2', 100, 'Salón de eventos para 100 personas', 50.00, 1, '2025-10-03 02:58:40.662578', '2025-10-03 02:58:40.662623'),
(3, 'Salon 3', 300, 'Salon grande para eventos grandes', 100.00, 1, '2025-11-06 04:45:54.916398', '2025-11-06 04:46:29.342182');

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo` enum('silla','mesa','sonido','adorno','combo','otro') NOT NULL DEFAULT 'otro',
  `precio_unitario` decimal(12,2) NOT NULL DEFAULT 0.00,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicios_servicio`
--

CREATE TABLE `servicios_servicio` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `tipo` varchar(20) NOT NULL,
  `precio_unitario` decimal(12,2) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `creado_en` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicios_servicio`
--

INSERT INTO `servicios_servicio` (`id`, `nombre`, `descripcion`, `tipo`, `precio_unitario`, `activo`, `creado_en`) VALUES
(1, 'Combo 200 sillas de plastico', 'Alquiler de 200 sillas de plastico para cualquier tipo de evento', 'silla', 200.00, 1, '2025-10-21 07:30:15.900963'),
(2, 'Adorno para escenarios', 'Diseño y arreglo de telas para adorno del escenario principal del salon', 'adorno', 1300.00, 1, '2025-11-04 06:59:13.766466'),
(3, 'Mesas para eventos', 'Juego de 12 mesas para capacidad de 10 personas por mesa', 'mesa', 500.00, 1, '2025-11-04 07:01:08.607116'),
(4, 'Adorno completo', 'Diseño y adorno completo para el salon, se incluye escenario y demás áreas del salón', 'adorno', 3000.00, 1, '2025-11-04 07:02:32.736058'),
(5, 'Combo completo', 'Incluye adorno de salon en su totalidad, juego de mesas y sillas, y sonido para su evento', 'combo', 8000.00, 1, '2025-11-04 07:05:05.350610'),
(6, 'Sonido pequeño', '2 bocinas pequeñas, ideales para eventos de poca concurrencia', 'sonido', 800.00, 1, '2025-11-04 07:06:21.848724'),
(7, 'Sonido mediano', '4 Bocinas medianas, y juego de luces para el escenario, ideal para eventos grandes', 'sonido', 2000.00, 1, '2025-11-04 07:07:37.688644'),
(8, 'Sonido Profesional', '4 bocinas aéreas, 4 monitores, juego de luces y reflectores, 4 micrófonos de alta calidad, ideal para eventos profesionales y de gran concurrencia', 'otro', 4000.00, 1, '2025-11-04 07:09:15.797491'),
(9, 'Sillas reclinables', 'Sillas reclinables color cafes', 'silla', 200.00, 1, '2025-11-06 04:51:31.353322');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `email` varchar(160) NOT NULL,
  `password_hash` varchar(200) NOT NULL,
  `rol` enum('admin','operador') NOT NULL DEFAULT 'admin',
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `clientes_cliente`
--
ALTER TABLE `clientes_cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_comp` (`tipo`,`numero`),
  ADD KEY `fk_comp_reserva` (`reserva_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `fechas_bloqueadas`
--
ALTER TABLE `fechas_bloqueadas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_fb` (`salon_id`,`fecha`);

--
-- Indexes for table `imagenes_salon`
--
ALTER TABLE `imagenes_salon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_img_orden` (`salon_id`,`orden`);

--
-- Indexes for table `metodos_pago`
--
ALTER TABLE `metodos_pago`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pago_reserva` (`reserva_id`),
  ADD KEY `fk_pago_metodo` (`metodo_id`);

--
-- Indexes for table `pagos_lineaservicio`
--
ALTER TABLE `pagos_lineaservicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_lineaservicio_reserva_id_d63e8456_fk_reservas_reserva_id` (`reserva_id`),
  ADD KEY `pagos_lineaservicio_servicio_id_6ef031df_fk_servicios` (`servicio_id`);

--
-- Indexes for table `pagos_pago`
--
ALTER TABLE `pagos_pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_pago_reserva_id_809e453f_fk_reservas_reserva_id` (`reserva_id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reserva_salon` (`salon_id`),
  ADD KEY `fk_reserva_cliente` (`cliente_id`),
  ADD KEY `fk_reserva_usuario` (`creado_por`);

--
-- Indexes for table `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_re_fecha_e_70573d_idx` (`fecha_evento`),
  ADD KEY `reservas_re_estado_7c17e1_idx` (`estado`),
  ADD KEY `reservas_reserva_cliente_id_78618bc5_fk_clientes_cliente_id` (`cliente_id`),
  ADD KEY `reservas_reserva_salon_id_4f8b9905_fk_salones_salon_id` (`salon_id`),
  ADD KEY `reservas_reserva_estado_1e615244` (`estado`);

--
-- Indexes for table `reservas_reservaservicio`
--
ALTER TABLE `reservas_reservaservicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservas_reservaservicio_reserva_id_servicio_id_fb5243af_uniq` (`reserva_id`,`servicio_id`),
  ADD KEY `reservas_reservaserv_servicio_id_835d3558_fk_servicios` (`servicio_id`);

--
-- Indexes for table `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_rs` (`reserva_id`,`servicio_id`),
  ADD KEY `fk_rs_servicio` (`servicio_id`);

--
-- Indexes for table `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salones_fechabloqueada`
--
ALTER TABLE `salones_fechabloqueada`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salones_fechabloqueada_salon_id_fecha_b62f07d3_uniq` (`salon_id`,`fecha`);

--
-- Indexes for table `salones_imagensalon`
--
ALTER TABLE `salones_imagensalon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salones_imagensalon_salon_id_orden_35281255_uniq` (`salon_id`,`orden`);

--
-- Indexes for table `salones_salon`
--
ALTER TABLE `salones_salon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salones_salon_nombre_382819dd` (`nombre`),
  ADD KEY `salones_salon_disponible_b5d7c35b` (`disponible`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicios_servicio`
--
ALTER TABLE `servicios_servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicios_servicio_nombre_0e738931` (`nombre`),
  ADD KEY `servicios_servicio_activo_9a4bbbff` (`activo`),
  ADD KEY `servicios_s_nombre_b6403b_idx` (`nombre`),
  ADD KEY `servicios_s_tipo_deaf72_idx` (`tipo`),
  ADD KEY `servicios_s_activo_340e8b_idx` (`activo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clientes_cliente`
--
ALTER TABLE `clientes_cliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `fechas_bloqueadas`
--
ALTER TABLE `fechas_bloqueadas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagenes_salon`
--
ALTER TABLE `imagenes_salon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metodos_pago`
--
ALTER TABLE `metodos_pago`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagos_lineaservicio`
--
ALTER TABLE `pagos_lineaservicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagos_pago`
--
ALTER TABLE `pagos_pago`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reservas_reservaservicio`
--
ALTER TABLE `reservas_reservaservicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salones`
--
ALTER TABLE `salones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salones_fechabloqueada`
--
ALTER TABLE `salones_fechabloqueada`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salones_imagensalon`
--
ALTER TABLE `salones_imagensalon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salones_salon`
--
ALTER TABLE `salones_salon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicios_servicio`
--
ALTER TABLE `servicios_servicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD CONSTRAINT `fk_comp_reserva` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `fechas_bloqueadas`
--
ALTER TABLE `fechas_bloqueadas`
  ADD CONSTRAINT `fk_fb_salon` FOREIGN KEY (`salon_id`) REFERENCES `salones` (`id`);

--
-- Constraints for table `imagenes_salon`
--
ALTER TABLE `imagenes_salon`
  ADD CONSTRAINT `fk_img_salon` FOREIGN KEY (`salon_id`) REFERENCES `salones` (`id`);

--
-- Constraints for table `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pago_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `metodos_pago` (`id`),
  ADD CONSTRAINT `fk_pago_reserva` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pagos_lineaservicio`
--
ALTER TABLE `pagos_lineaservicio`
  ADD CONSTRAINT `pagos_lineaservicio_reserva_id_d63e8456_fk_reservas_reserva_id` FOREIGN KEY (`reserva_id`) REFERENCES `reservas_reserva` (`id`),
  ADD CONSTRAINT `pagos_lineaservicio_servicio_id_6ef031df_fk_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios_servicio` (`id`);

--
-- Constraints for table `pagos_pago`
--
ALTER TABLE `pagos_pago`
  ADD CONSTRAINT `pagos_pago_reserva_id_809e453f_fk_reservas_reserva_id` FOREIGN KEY (`reserva_id`) REFERENCES `reservas_reserva` (`id`);

--
-- Constraints for table `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_reserva_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `fk_reserva_salon` FOREIGN KEY (`salon_id`) REFERENCES `salones` (`id`),
  ADD CONSTRAINT `fk_reserva_usuario` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  ADD CONSTRAINT `reservas_reserva_cliente_id_78618bc5_fk_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `clientes_cliente` (`id`),
  ADD CONSTRAINT `reservas_reserva_salon_id_4f8b9905_fk_salones_salon_id` FOREIGN KEY (`salon_id`) REFERENCES `salones_salon` (`id`);

--
-- Constraints for table `reservas_reservaservicio`
--
ALTER TABLE `reservas_reservaservicio`
  ADD CONSTRAINT `reservas_reservaserv_reserva_id_38c8dd43_fk_reservas_` FOREIGN KEY (`reserva_id`) REFERENCES `reservas_reserva` (`id`),
  ADD CONSTRAINT `reservas_reservaserv_servicio_id_835d3558_fk_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios_servicio` (`id`);

--
-- Constraints for table `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `fk_rs_reserva` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rs_servicio` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

--
-- Constraints for table `salones_fechabloqueada`
--
ALTER TABLE `salones_fechabloqueada`
  ADD CONSTRAINT `salones_fechabloqueada_salon_id_bd40bf7a_fk_salones_salon_id` FOREIGN KEY (`salon_id`) REFERENCES `salones_salon` (`id`);

--
-- Constraints for table `salones_imagensalon`
--
ALTER TABLE `salones_imagensalon`
  ADD CONSTRAINT `salones_imagensalon_salon_id_bb580ba5_fk_salones_salon_id` FOREIGN KEY (`salon_id`) REFERENCES `salones_salon` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
