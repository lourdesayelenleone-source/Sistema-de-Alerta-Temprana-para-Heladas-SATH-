-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2025 a las 14:45:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alertas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dht_readings`
--

CREATE TABLE `dht_readings` (
  `id` bigint(20) NOT NULL,
  `node_id` varchar(64) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `temperature` decimal(5,2) NOT NULL,
  `humidity` decimal(5,2) NOT NULL,
  `state` enum('SAFE','ALERTED') NOT NULL,
  `rssi` tinyint(4) DEFAULT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra`)),
  `numero_producto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dht_readings`
--

INSERT INTO `dht_readings` (`id`, `node_id`, `ts`, `temperature`, `humidity`, `state`, `rssi`, `extra`, `numero_producto`) VALUES
(1, 'campo_nodo_1', '2025-10-09 00:08:46', 26.10, 54.00, 'SAFE', -20, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.10,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-20}', '123456'),
(2, 'campo_nodo_1', '2025-10-09 00:09:07', 26.00, 51.00, 'SAFE', -20, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":51.00,\"state\":\"SAFE\",\"rssi\":-20}', '123456'),
(3, 'campo_nodo_1', '2025-10-09 00:09:28', 26.00, 50.00, 'SAFE', -20, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":50.00,\"state\":\"SAFE\",\"rssi\":-20}', '123456'),
(4, 'campo_nodo_1', '2025-10-09 00:09:49', 26.00, 50.00, 'SAFE', -19, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":50.00,\"state\":\"SAFE\",\"rssi\":-19}', '123456'),
(5, 'campo_nodo_1', '2025-10-09 00:10:11', 25.90, 49.00, 'SAFE', -21, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.90,\"humidity\":49.00,\"state\":\"SAFE\",\"rssi\":-21}', '123456'),
(6, 'campo_nodo_1', '2025-10-09 00:10:33', 25.90, 50.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.90,\"humidity\":50.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(7, 'campo_nodo_1', '2025-10-09 00:10:55', 25.60, 49.00, 'SAFE', -23, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.60,\"humidity\":49.00,\"state\":\"SAFE\",\"rssi\":-23}', '123456'),
(8, 'campo_nodo_1', '2025-10-09 00:11:16', 25.60, 50.00, 'SAFE', -34, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.60,\"humidity\":50.00,\"state\":\"SAFE\",\"rssi\":-34}', '123456'),
(9, 'campo_nodo_1', '2025-10-09 00:11:37', 25.60, 50.00, 'SAFE', -28, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.60,\"humidity\":50.00,\"state\":\"SAFE\",\"rssi\":-28}', '123456'),
(10, 'campo_nodo_1', '2025-10-09 00:11:58', 25.60, 50.00, 'SAFE', -30, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.60,\"humidity\":50.00,\"state\":\"SAFE\",\"rssi\":-30}', '123456'),
(11, 'campo_nodo_1', '2025-10-09 00:12:19', 25.50, 53.00, 'SAFE', -33, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.50,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-33}', '123456'),
(12, 'campo_nodo_1', '2025-10-09 00:12:40', 25.80, 53.00, 'SAFE', -20, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.80,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-20}', '123456'),
(13, 'campo_nodo_1', '2025-10-09 00:13:01', 25.50, 53.00, 'SAFE', -21, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.50,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-21}', '123456'),
(14, 'campo_nodo_1', '2025-10-09 00:13:22', 25.50, 53.00, 'SAFE', -21, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.50,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-21}', '123456'),
(15, 'campo_nodo_1', '2025-10-09 00:13:43', 25.80, 53.00, 'SAFE', -23, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.80,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-23}', '123456'),
(16, 'campo_nodo_1', '2025-10-09 00:14:04', 25.60, 53.00, 'SAFE', -30, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.60,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-30}', '123456'),
(17, 'campo_nodo_1', '2025-10-09 00:14:25', 25.60, 53.00, 'SAFE', -33, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.60,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-33}', '123456'),
(18, 'campo_nodo_1', '2025-10-09 00:16:03', 26.00, 51.00, 'SAFE', -28, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":51.00,\"state\":\"SAFE\",\"rssi\":-28}', '123456'),
(19, 'campo_nodo_1', '2025-10-09 00:16:24', 25.70, 53.00, 'SAFE', -31, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.70,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-31}', '123456'),
(20, 'campo_nodo_1', '2025-10-09 00:17:46', 25.80, 53.00, 'ALERTED', -32, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.80,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-32}', '123456'),
(21, 'campo_nodo_1', '2025-10-09 00:18:07', 25.70, 53.00, 'ALERTED', -22, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.70,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-22}', '123456'),
(22, 'campo_nodo_1', '2025-10-09 00:18:29', 26.00, 56.00, 'ALERTED', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-45}', '123456'),
(23, 'campo_nodo_1', '2025-10-09 00:19:14', 26.20, 52.00, 'ALERTED', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":52.00,\"state\":\"ALERTED\",\"rssi\":-39}', '123456'),
(24, 'campo_nodo_1', '2025-10-09 00:19:35', 26.30, 56.00, 'ALERTED', -21, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-21}', '123456'),
(25, 'campo_nodo_1', '2025-10-09 00:19:56', 26.30, 56.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(26, 'campo_nodo_1', '2025-10-09 00:20:17', 26.40, 55.00, 'ALERTED', -53, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-53}', '123456'),
(27, 'campo_nodo_1', '2025-10-09 00:20:38', 26.40, 55.00, 'ALERTED', -22, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-22}', '123456'),
(28, 'campo_nodo_1', '2025-10-09 00:21:45', 26.40, 55.00, 'SAFE', -27, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-27}', '123456'),
(29, 'campo_nodo_1', '2025-10-09 00:22:06', 26.40, 54.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(30, 'campo_nodo_1', '2025-10-09 00:22:27', 26.30, 53.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(31, 'campo_nodo_1', '2025-10-09 00:23:34', 26.10, 53.00, 'ALERTED', -24, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.10,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-24}', '123456'),
(32, 'campo_nodo_1', '2025-10-09 00:23:55', 26.10, 53.00, 'ALERTED', -23, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.10,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-23}', '123456'),
(33, 'campo_nodo_1', '2025-10-09 00:24:16', 26.00, 53.00, 'ALERTED', -28, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-28}', '123456'),
(34, 'campo_nodo_1', '2025-10-09 00:25:23', 25.80, 52.00, 'SAFE', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":25.80,\"humidity\":52.00,\"state\":\"SAFE\",\"rssi\":-44}', '123456'),
(35, 'campo_nodo_1', '2025-10-09 22:31:57', 27.10, 56.00, 'SAFE', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-35}', '123456'),
(36, 'campo_nodo_1', '2025-10-09 22:33:20', 26.90, 56.00, 'ALERTED', -49, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-49}', '123456'),
(37, 'campo_nodo_1', '2025-10-09 22:33:41', 27.10, 56.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(38, 'campo_nodo_1', '2025-10-09 22:34:03', 26.90, 56.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(39, 'campo_nodo_1', '2025-10-09 22:34:24', 27.00, 56.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(40, 'campo_nodo_1', '2025-10-09 22:34:45', 27.10, 56.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(41, 'campo_nodo_1', '2025-10-09 22:35:06', 26.90, 56.00, 'ALERTED', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-45}', '123456'),
(42, 'campo_nodo_1', '2025-10-09 22:35:27', 26.90, 56.00, 'ALERTED', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-46}', '123456'),
(43, 'campo_nodo_1', '2025-10-09 22:35:48', 27.40, 56.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.40,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(44, 'campo_nodo_1', '2025-10-09 22:36:09', 27.10, 56.00, 'ALERTED', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-40}', '123456'),
(45, 'campo_nodo_1', '2025-10-09 22:37:00', 27.00, 56.00, 'SAFE', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-45}', '123456'),
(46, 'campo_nodo_1', '2025-10-09 22:37:21', 27.00, 56.00, 'SAFE', -64, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-64}', '123456'),
(47, 'campo_nodo_1', '2025-10-09 22:37:42', 26.90, 56.00, 'SAFE', -55, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-55}', '123456'),
(48, 'campo_nodo_1', '2025-10-09 22:39:10', 27.00, 56.00, 'ALERTED', -50, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-50}', '123456'),
(49, 'campo_nodo_1', '2025-10-09 22:39:31', 27.10, 56.00, 'ALERTED', -54, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-54}', '123456'),
(50, 'campo_nodo_1', '2025-10-09 22:39:52', 27.20, 55.00, 'ALERTED', -43, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.20,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-43}', '123456'),
(51, 'campo_nodo_1', '2025-10-09 22:40:43', 27.10, 56.00, 'SAFE', -49, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-49}', '123456'),
(52, 'campo_nodo_1', '2025-10-09 22:41:04', 27.00, 56.00, 'SAFE', -48, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-48}', '123456'),
(53, 'campo_nodo_1', '2025-10-09 22:41:25', 27.00, 56.00, 'SAFE', -43, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":56.00,\"state\":\"SAFE\",\"rssi\":-43}', '123456'),
(54, 'campo_nodo_1', '2025-10-09 22:42:48', 27.10, 55.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(55, 'campo_nodo_1', '2025-10-09 22:43:09', 26.90, 56.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":56.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(56, 'campo_nodo_1', '2025-10-09 22:43:30', 26.90, 55.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(57, 'campo_nodo_1', '2025-10-09 22:43:51', 26.90, 55.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(58, 'campo_nodo_1', '2025-10-09 22:44:42', 26.90, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(59, 'campo_nodo_1', '2025-10-09 22:45:04', 27.00, 55.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(60, 'campo_nodo_1', '2025-10-09 22:45:25', 27.00, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.00,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(61, 'campo_nodo_1', '2025-10-09 22:46:47', 26.80, 55.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(62, 'campo_nodo_1', '2025-10-09 22:47:08', 26.80, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(63, 'campo_nodo_1', '2025-10-09 22:47:29', 26.80, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(64, 'campo_nodo_1', '2025-10-09 22:48:21', 26.60, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(65, 'campo_nodo_1', '2025-10-09 22:48:42', 26.60, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(66, 'campo_nodo_1', '2025-10-09 22:49:03', 26.40, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(67, 'campo_nodo_1', '2025-10-09 22:50:26', 26.60, 55.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(68, 'campo_nodo_1', '2025-10-09 22:50:47', 26.50, 55.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(69, 'campo_nodo_1', '2025-10-09 22:51:08', 26.30, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(70, 'campo_nodo_1', '2025-10-09 22:51:59', 26.50, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(71, 'campo_nodo_1', '2025-10-09 22:52:20', 26.30, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(72, 'campo_nodo_1', '2025-10-09 22:52:42', 26.50, 55.00, 'SAFE', -31, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-31}', '123456'),
(73, 'campo_nodo_1', '2025-10-09 22:54:04', 26.40, 55.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(74, 'campo_nodo_1', '2025-10-09 22:54:25', 26.50, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(75, 'campo_nodo_1', '2025-10-09 22:54:46', 26.50, 54.00, 'ALERTED', -30, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-30}', '123456'),
(76, 'campo_nodo_1', '2025-10-09 22:55:37', 26.60, 54.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(77, 'campo_nodo_1', '2025-10-09 22:55:59', 26.60, 55.00, 'SAFE', -33, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-33}', '123456'),
(78, 'campo_nodo_1', '2025-10-09 22:56:20', 26.40, 54.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(79, 'campo_nodo_1', '2025-10-09 22:57:42', 26.50, 54.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(80, 'campo_nodo_1', '2025-10-09 22:58:03', 26.40, 55.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(81, 'campo_nodo_1', '2025-10-09 22:58:24', 26.30, 55.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(82, 'campo_nodo_1', '2025-10-09 22:59:15', 26.40, 54.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(83, 'campo_nodo_1', '2025-10-09 22:59:37', 26.30, 54.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(84, 'campo_nodo_1', '2025-10-09 22:59:58', 26.20, 55.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(85, 'campo_nodo_1', '2025-10-09 23:01:20', 26.20, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(86, 'campo_nodo_1', '2025-10-09 23:01:41', 26.00, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(87, 'campo_nodo_1', '2025-10-09 23:02:02', 26.00, 54.00, 'ALERTED', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-39}', '123456'),
(88, 'campo_nodo_1', '2025-10-09 23:02:54', 26.20, 54.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(89, 'campo_nodo_1', '2025-10-09 23:03:15', 26.50, 54.00, 'SAFE', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-40}', '123456'),
(90, 'campo_nodo_1', '2025-10-09 23:03:36', 26.30, 54.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(91, 'campo_nodo_1', '2025-10-09 23:04:58', 26.20, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(92, 'campo_nodo_1', '2025-10-09 23:05:19', 26.40, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(93, 'campo_nodo_1', '2025-10-09 23:05:40', 26.10, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.10,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(94, 'campo_nodo_1', '2025-10-09 23:06:32', 26.30, 54.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(95, 'campo_nodo_1', '2025-10-09 23:06:53', 26.30, 54.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(96, 'campo_nodo_1', '2025-10-09 23:07:14', 26.20, 54.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(97, 'campo_nodo_1', '2025-10-09 23:08:36', 26.30, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(98, 'campo_nodo_1', '2025-10-09 23:08:57', 26.40, 54.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(99, 'campo_nodo_1', '2025-10-09 23:09:18', 26.30, 54.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(100, 'campo_nodo_1', '2025-10-09 23:10:10', 26.30, 54.00, 'SAFE', -52, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-52}', '123456'),
(101, 'campo_nodo_1', '2025-10-09 23:10:31', 26.50, 54.00, 'SAFE', -51, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-51}', '123456'),
(102, 'campo_nodo_1', '2025-10-09 23:10:52', 26.50, 54.00, 'SAFE', -47, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-47}', '123456'),
(103, 'campo_nodo_1', '2025-10-09 23:12:14', 26.50, 54.00, 'ALERTED', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-44}', '123456'),
(104, 'campo_nodo_1', '2025-10-09 23:12:35', 26.30, 55.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(105, 'campo_nodo_1', '2025-10-09 23:12:56', 26.60, 54.00, 'ALERTED', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-45}', '123456'),
(106, 'campo_nodo_1', '2025-10-09 23:13:48', 26.50, 54.00, 'SAFE', -48, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-48}', '123456'),
(107, 'campo_nodo_1', '2025-10-09 23:14:09', 26.70, 54.00, 'SAFE', -48, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-48}', '123456'),
(108, 'campo_nodo_1', '2025-10-09 23:14:30', 26.60, 54.00, 'SAFE', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-46}', '123456'),
(109, 'campo_nodo_1', '2025-10-09 23:15:52', 26.80, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(110, 'campo_nodo_1', '2025-10-09 23:16:13', 26.50, 54.00, 'ALERTED', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-39}', '123456'),
(111, 'campo_nodo_1', '2025-10-09 23:16:34', 26.60, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(112, 'campo_nodo_1', '2025-10-09 23:17:26', 26.50, 54.00, 'SAFE', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-46}', '123456'),
(113, 'campo_nodo_1', '2025-10-09 23:17:47', 26.60, 54.00, 'SAFE', -51, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-51}', '123456'),
(114, 'campo_nodo_1', '2025-10-09 23:18:08', 26.70, 55.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(115, 'campo_nodo_1', '2025-10-09 23:19:30', 26.60, 54.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(116, 'campo_nodo_1', '2025-10-09 23:19:51', 26.80, 55.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(117, 'campo_nodo_1', '2025-10-09 23:20:13', 26.50, 55.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(118, 'campo_nodo_1', '2025-10-09 23:21:04', 26.50, 54.00, 'SAFE', -41, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-41}', '123456'),
(119, 'campo_nodo_1', '2025-10-09 23:21:25', 26.90, 55.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(120, 'campo_nodo_1', '2025-10-09 23:21:46', 26.60, 54.00, 'SAFE', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-44}', '123456'),
(121, 'campo_nodo_1', '2025-10-09 23:23:08', 26.80, 54.00, 'ALERTED', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-40}', '123456'),
(122, 'campo_nodo_1', '2025-10-09 23:23:29', 26.70, 54.00, 'ALERTED', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-40}', '123456'),
(123, 'campo_nodo_1', '2025-10-09 23:23:51', 26.90, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(124, 'campo_nodo_1', '2025-10-09 23:24:42', 27.10, 54.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":27.10,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(125, 'campo_nodo_1', '2025-10-09 23:25:03', 26.90, 54.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(126, 'campo_nodo_1', '2025-10-09 23:25:24', 26.80, 54.00, 'SAFE', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-35}', '123456'),
(127, 'campo_nodo_1', '2025-10-09 23:26:46', 26.70, 54.00, 'ALERTED', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-46}', '123456'),
(128, 'campo_nodo_1', '2025-10-09 23:27:07', 26.90, 54.00, 'ALERTED', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-46}', '123456'),
(129, 'campo_nodo_1', '2025-10-09 23:27:29', 26.70, 54.00, 'ALERTED', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-45}', '123456'),
(130, 'campo_nodo_1', '2025-10-09 23:28:20', 26.70, 54.00, 'SAFE', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-44}', '123456'),
(131, 'campo_nodo_1', '2025-10-09 23:28:41', 26.50, 54.00, 'SAFE', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-44}', '123456'),
(132, 'campo_nodo_1', '2025-10-09 23:29:02', 26.60, 54.00, 'SAFE', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-44}', '123456'),
(133, 'campo_nodo_1', '2025-10-09 23:30:24', 26.70, 54.00, 'ALERTED', -47, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-47}', '123456'),
(134, 'campo_nodo_1', '2025-10-09 23:30:46', 26.60, 54.00, 'ALERTED', -48, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-48}', '123456'),
(135, 'campo_nodo_1', '2025-10-09 23:31:12', 26.60, 54.00, 'ALERTED', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-46}', '123456'),
(136, 'campo_nodo_1', '2025-10-09 23:32:03', 26.00, 54.00, 'SAFE', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-35}', '123456'),
(137, 'campo_nodo_1', '2025-10-09 23:32:24', 26.50, 54.00, 'SAFE', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-42}', '123456'),
(138, 'campo_nodo_1', '2025-10-09 23:32:45', 26.20, 55.00, 'SAFE', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-46}', '123456'),
(139, 'campo_nodo_1', '2025-10-09 23:34:08', 26.50, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(140, 'campo_nodo_1', '2025-10-09 23:35:28', 26.70, 55.00, 'SAFE', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-45}', '123456'),
(141, 'campo_nodo_1', '2025-10-09 23:35:49', 26.80, 54.00, 'SAFE', -48, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-48}', '123456'),
(142, 'campo_nodo_1', '2025-10-09 23:37:11', 26.50, 54.00, 'ALERTED', -52, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-52}', '123456'),
(143, 'campo_nodo_1', '2025-10-09 23:37:32', 26.80, 54.00, 'ALERTED', -54, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-54}', '123456'),
(144, 'campo_nodo_1', '2025-10-09 23:37:53', 26.60, 54.00, 'ALERTED', -47, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-47}', '123456'),
(145, 'campo_nodo_1', '2025-10-09 23:38:45', 26.70, 55.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(146, 'campo_nodo_1', '2025-10-09 23:39:06', 26.60, 54.00, 'SAFE', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-35}', '123456'),
(147, 'campo_nodo_1', '2025-10-09 23:39:27', 26.90, 54.00, 'SAFE', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.90,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-35}', '123456'),
(148, 'campo_nodo_1', '2025-10-09 23:40:49', 26.80, 54.00, 'ALERTED', -47, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.80,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-47}', '123456'),
(149, 'campo_nodo_1', '2025-10-09 23:41:10', 26.50, 54.00, 'ALERTED', -47, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-47}', '123456'),
(150, 'campo_nodo_1', '2025-10-09 23:41:31', 26.50, 54.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(151, 'campo_nodo_1', '2025-10-09 23:42:23', 26.50, 54.00, 'SAFE', -34, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-34}', '123456'),
(152, 'campo_nodo_1', '2025-10-09 23:42:44', 26.30, 54.00, 'SAFE', -47, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-47}', '123456'),
(153, 'campo_nodo_1', '2025-10-09 23:43:05', 26.40, 54.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(154, 'campo_nodo_1', '2025-10-09 23:44:27', 26.50, 54.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(155, 'campo_nodo_1', '2025-10-09 23:44:49', 26.30, 55.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(156, 'campo_nodo_1', '2025-10-09 23:45:10', 26.50, 55.00, 'ALERTED', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-44}', '123456'),
(157, 'campo_nodo_1', '2025-10-09 23:46:01', 26.60, 54.00, 'SAFE', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-35}', '123456'),
(158, 'campo_nodo_1', '2025-10-09 23:46:22', 26.30, 54.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(159, 'campo_nodo_1', '2025-10-09 23:46:44', 26.20, 55.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(160, 'campo_nodo_1', '2025-10-09 23:48:06', 26.50, 54.00, 'ALERTED', -51, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-51}', '123456'),
(161, 'campo_nodo_1', '2025-10-09 23:48:27', 26.50, 55.00, 'ALERTED', -52, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-52}', '123456'),
(162, 'campo_nodo_1', '2025-10-09 23:48:49', 26.30, 55.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(163, 'campo_nodo_1', '2025-10-09 23:49:40', 26.50, 55.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(164, 'campo_nodo_1', '2025-10-09 23:50:01', 26.50, 55.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(165, 'campo_nodo_1', '2025-10-09 23:50:22', 26.30, 55.00, 'SAFE', -41, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-41}', '123456'),
(166, 'campo_nodo_1', '2025-10-09 23:51:50', 26.10, 55.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.10,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(167, 'campo_nodo_1', '2025-10-09 23:52:11', 26.60, 55.00, 'ALERTED', -50, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-50}', '123456'),
(168, 'campo_nodo_1', '2025-10-09 23:52:32', 26.40, 55.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(169, 'campo_nodo_1', '2025-10-09 23:53:23', 26.30, 55.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(170, 'campo_nodo_1', '2025-10-09 23:53:44', 26.50, 55.00, 'SAFE', -53, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-53}', '123456'),
(171, 'campo_nodo_1', '2025-10-09 23:54:06', 26.50, 55.00, 'SAFE', -51, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-51}', '123456'),
(172, 'campo_nodo_1', '2025-10-09 23:55:28', 26.30, 54.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(173, 'campo_nodo_1', '2025-10-09 23:55:49', 26.60, 55.00, 'ALERTED', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-44}', '123456'),
(174, 'campo_nodo_1', '2025-10-09 23:56:10', 26.30, 55.00, 'ALERTED', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-40}', '123456'),
(175, 'campo_nodo_1', '2025-10-09 23:57:01', 26.30, 55.00, 'SAFE', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-40}', '123456'),
(176, 'campo_nodo_1', '2025-10-09 23:57:23', 26.50, 55.00, 'SAFE', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-40}', '123456'),
(177, 'campo_nodo_1', '2025-10-09 23:57:44', 26.20, 54.00, 'SAFE', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-46}', '123456'),
(178, 'campo_nodo_1', '2025-10-09 23:59:06', 26.50, 54.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(179, 'campo_nodo_1', '2025-10-09 23:59:27', 26.20, 55.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(180, 'campo_nodo_1', '2025-10-09 23:59:48', 26.30, 54.00, 'ALERTED', -41, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-41}', '123456'),
(181, 'campo_nodo_1', '2025-10-10 00:00:40', 26.40, 55.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(182, 'campo_nodo_1', '2025-10-10 00:01:01', 26.30, 55.00, 'SAFE', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"SAFE\",\"rssi\":-36}', '123456'),
(183, 'campo_nodo_1', '2025-10-10 00:02:51', 26.30, 54.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(184, 'campo_nodo_1', '2025-10-10 00:03:12', 26.30, 55.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":55.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(185, 'campo_nodo_1', '2025-10-10 00:03:33', 26.30, 54.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(186, 'campo_nodo_1', '2025-10-10 00:04:25', 26.20, 54.00, 'SAFE', -41, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-41}', '123456'),
(187, 'campo_nodo_1', '2025-10-10 00:04:46', 26.30, 54.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(188, 'campo_nodo_1', '2025-10-10 00:05:07', 26.60, 54.00, 'SAFE', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-46}', '123456'),
(189, 'campo_nodo_1', '2025-10-10 00:06:33', 26.00, 54.00, 'ALERTED', -42, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.00,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-42}', '123456'),
(190, 'campo_nodo_1', '2025-10-10 00:06:54', 26.30, 54.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(191, 'campo_nodo_1', '2025-10-10 00:07:15', 26.40, 54.00, 'ALERTED', -35, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-35}', '123456'),
(192, 'campo_nodo_1', '2025-10-10 00:08:07', 26.50, 54.00, 'SAFE', -41, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-41}', '123456'),
(193, 'campo_nodo_1', '2025-10-10 00:08:54', 26.50, 54.00, 'SAFE', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-40}', '123456'),
(194, 'campo_nodo_1', '2025-10-10 00:10:17', 26.40, 54.00, 'ALERTED', -41, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-41}', '123456'),
(195, 'campo_nodo_1', '2025-10-10 00:10:38', 26.60, 54.00, 'ALERTED', -44, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.60,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-44}', '123456'),
(196, 'campo_nodo_1', '2025-10-10 00:10:59', 26.20, 54.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(197, 'campo_nodo_1', '2025-10-10 00:11:50', 26.40, 54.00, 'SAFE', -48, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-48}', '123456'),
(198, 'campo_nodo_1', '2025-10-10 00:12:11', 26.30, 54.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(199, 'campo_nodo_1', '2025-10-10 00:12:32', 26.50, 54.00, 'SAFE', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-40}', '123456'),
(200, 'campo_nodo_1', '2025-10-10 00:14:00', 26.40, 54.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(201, 'campo_nodo_1', '2025-10-10 00:14:49', 26.30, 54.00, 'ALERTED', -43, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-43}', '123456'),
(202, 'campo_nodo_1', '2025-10-10 00:15:40', 26.40, 54.00, 'SAFE', -46, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-46}', '123456'),
(203, 'campo_nodo_1', '2025-10-10 00:16:01', 26.40, 54.00, 'SAFE', -63, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-63}', '123456'),
(204, 'campo_nodo_1', '2025-10-10 00:16:22', 26.30, 53.00, 'SAFE', -61, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-61}', '123456'),
(205, 'campo_nodo_1', '2025-10-10 00:17:45', 26.50, 54.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(206, 'campo_nodo_1', '2025-10-10 00:18:06', 26.70, 54.00, 'ALERTED', -36, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.70,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-36}', '123456'),
(207, 'campo_nodo_1', '2025-10-10 00:18:32', 26.40, 54.00, 'ALERTED', -34, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"ALERTED\",\"rssi\":-34}', '123456'),
(208, 'campo_nodo_1', '2025-10-10 00:19:23', 26.30, 54.00, 'SAFE', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-38}', '123456'),
(209, 'campo_nodo_1', '2025-10-10 00:19:44', 26.30, 54.00, 'SAFE', -39, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.30,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-39}', '123456'),
(210, 'campo_nodo_1', '2025-10-10 00:20:06', 26.40, 54.00, 'SAFE', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":54.00,\"state\":\"SAFE\",\"rssi\":-37}', '123456'),
(211, 'campo_nodo_1', '2025-10-10 00:21:28', 26.50, 53.00, 'ALERTED', -40, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-40}', '123456'),
(212, 'campo_nodo_1', '2025-10-10 00:21:49', 26.40, 53.00, 'ALERTED', -37, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.40,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-37}', '123456'),
(213, 'campo_nodo_1', '2025-10-10 00:22:10', 26.50, 53.00, 'ALERTED', -38, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":53.00,\"state\":\"ALERTED\",\"rssi\":-38}', '123456'),
(214, 'campo_nodo_1', '2025-10-10 00:23:01', 26.50, 53.00, 'SAFE', -52, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.50,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-52}', '123456'),
(215, 'campo_nodo_1', '2025-10-10 00:23:22', 26.20, 53.00, 'SAFE', -45, '{\"node_id\":\"campo_nodo_1\",\"temperature\":26.20,\"humidity\":53.00,\"state\":\"SAFE\",\"rssi\":-45}', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_comprados`
--

CREATE TABLE `productos_comprados` (
  `id` int(11) NOT NULL,
  `numero_producto` varchar(50) NOT NULL,
  `correo_asociado` varchar(100) DEFAULT NULL,
  `registrado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_comprados`
--

INSERT INTO `productos_comprados` (`id`, `numero_producto`, `correo_asociado`, `registrado`) VALUES
(13, '123456', 'yazminzivic@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registronuevo`
--

CREATE TABLE `registronuevo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `pass_length` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registronuevo`
--

INSERT INTO `registronuevo` (`id`, `nombre`, `apellido`, `correo`, `usuario`, `pass`, `fecha`, `pass_length`) VALUES
(18, 'yazmin', 'zivic', 'yazminzivic@gmail.com', 'yaz', '$2y$10$PNtYv6BnOeohS9TThY/0yel3mN51Y..vvEhFeCP32mT71yykxvO8.', '2025-10-08 10:00:00', 6);

--
-- Disparadores `registronuevo`
--
DELIMITER $$
CREATE TRIGGER `borrar_usuario_cascada` BEFORE DELETE ON `registronuevo` FOR EACH ROW BEGIN
    -- Eliminar lecturas relacionadas a sus productos
    DELETE FROM dht_readings
    WHERE numero_producto IN (
        SELECT numero_producto FROM productos_comprados
        WHERE correo_asociado = OLD.correo
    );

    -- Eliminar productos del usuario
    DELETE FROM productos_comprados
    WHERE correo_asociado = OLD.correo;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dht_readings`
--
ALTER TABLE `dht_readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lectura_producto` (`numero_producto`);

--
-- Indices de la tabla `productos_comprados`
--
ALTER TABLE `productos_comprados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_producto` (`numero_producto`),
  ADD KEY `correo_asociado` (`correo_asociado`);

--
-- Indices de la tabla `registronuevo`
--
ALTER TABLE `registronuevo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dht_readings`
--
ALTER TABLE `dht_readings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `productos_comprados`
--
ALTER TABLE `productos_comprados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `registronuevo`
--
ALTER TABLE `registronuevo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dht_readings`
--
ALTER TABLE `dht_readings`
  ADD CONSTRAINT `fk_lectura_producto` FOREIGN KEY (`numero_producto`) REFERENCES `productos_comprados` (`numero_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_comprados`
--
ALTER TABLE `productos_comprados`
  ADD CONSTRAINT `fk_producto_usuario` FOREIGN KEY (`correo_asociado`) REFERENCES `registronuevo` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_comprados_ibfk_1` FOREIGN KEY (`correo_asociado`) REFERENCES `registronuevo` (`correo`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
