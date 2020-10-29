-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:33065
-- Tiempo de generación: 29-10-2020 a las 04:00:27
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `qrcodegen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pref_event`
--

CREATE TABLE `pref_event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_venue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pref_event`
--

INSERT INTO `pref_event` (`event_id`, `event_title`, `event_date`, `event_venue`) VALUES
(1, 'EDC MEXICO 2020', '2020-10-07', 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pref_seat`
--

CREATE TABLE `pref_seat` (
  `prefSeat_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `area_prefix` varchar(15) NOT NULL,
  `max_seat` varchar(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `ticket_price` varchar(11) NOT NULL,
  `currentNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pref_seat`
--

INSERT INTO `pref_seat` (`prefSeat_id`, `event_id`, `area_prefix`, `max_seat`, `desc`, `ticket_price`, `currentNum`) VALUES
(1, 1, 'VP', '100', 'Entradas Vip', '500', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sold_tickets`
--

CREATE TABLE `sold_tickets` (
  `trans_id` int(11) NOT NULL,
  `qr_img` varchar(255) NOT NULL,
  `qr_code` varchar(55) NOT NULL,
  `clientLName` varchar(255) NOT NULL,
  `clientFName` varchar(255) NOT NULL,
  `clientContNum` varchar(13) NOT NULL,
  `event_id` int(11) NOT NULL,
  `prefSeat_id` int(11) NOT NULL,
  `trans_date` varchar(10) NOT NULL,
  `trans_time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sold_tickets`
--

INSERT INTO `sold_tickets` (`trans_id`, `qr_img`, `qr_code`, `clientLName`, `clientFName`, `clientContNum`, `event_id`, `prefSeat_id`, `trans_date`, `trans_time`) VALUES
(1, 'temp/VP-1_3aad61fa90eff2c28d3e3c6462b0bd46.png', 'VP-1', 'Magtolis', 'Emilio', '09303546547', 1, 1, '11/27/2019', '09:32:17 AM'),
(2, 'temp/VP-2_28031f43c8becd213b473657a5c6e8ec.png', 'VP-2', 'Test', 'Test', '0930xxxxxxx', 1, 1, '09/03/2020', '10:59:19 PM'),
(3, 'temp/VP-3_33c0bb842560ca3d41175a2943ee5134.png', 'VP-3', 'John', 'Doe', '09091234567', 1, 1, '09/03/2020', '11:12:49 PM'),
(4, 'temp/VP-4_d439c0cf1b859005cadef15ca1f7e038.png', 'VP-4', 'Andrade Cocepcion', 'Marc', '56879564', 1, 1, '10/29/2020', '08:12:54 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `useraccounts`
--

CREATE TABLE `useraccounts` (
  `user_id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `lname` varchar(55) NOT NULL,
  `fname` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `access` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `useraccounts`
--

INSERT INTO `useraccounts` (`user_id`, `reg_id`, `lname`, `fname`, `username`, `password`, `access`, `status`) VALUES
(1, 0, 'Magtolis', 'Emiloi', 'emiloi', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Active');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pref_event`
--
ALTER TABLE `pref_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indices de la tabla `pref_seat`
--
ALTER TABLE `pref_seat`
  ADD PRIMARY KEY (`prefSeat_id`);

--
-- Indices de la tabla `sold_tickets`
--
ALTER TABLE `sold_tickets`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indices de la tabla `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pref_event`
--
ALTER TABLE `pref_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pref_seat`
--
ALTER TABLE `pref_seat`
  MODIFY `prefSeat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sold_tickets`
--
ALTER TABLE `sold_tickets`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
