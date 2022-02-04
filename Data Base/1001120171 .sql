-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 07-08-2021 a las 02:56:54
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `1001120171`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `email` varchar(50) NOT NULL,
  `id` text NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `article` text NOT NULL,
  `title` varchar(500) NOT NULL,
  `star` tinyint(1) NOT NULL,
  `share` tinyint(1) NOT NULL,
  `nick` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`email`, `id`, `date`, `time`, `article`, `title`, `star`, `share`, `nick`) VALUES
('bry1878@gmail.com', '60e6cc2d4b319', '2021-07-08', '04:58:05am', 'zzzzzzzzzzxzxzxzzzzzz', '(Finita e infinita)', 0, 0, ''),
('bry1878@gmail.com', '60eaef27633e3', '2021-07-11', '08:16:23am', 'La ceniza aún bajaba desde las Cumbres de Arak. Lo haría durante días. Semanas, quizás.\r\n\r\nReshad decidió que no le importaba. Podía soportar el humo y la ceniza, pero no el genocidio.\r\n\r\nLo rodeaba un bosque calcinado sembrado de árboles caídos y los cuerpos ennegrecidos de los otros desterrados arakkoa como él. Por encima se alzaban las escarpadas cumbres del Trecho Celestial, hogar de los altos arakkoa que habían tratado de exterminar a los compañeros de Reshad. Las torres de piedra de origen natural se hincaban en el vientre del cielo como garras. Encima de la más alta descansaba una gigantesca bola dorada, el arma de los altos arakkoa que había traído la muerte y la destrucción sobre los desterrados y su boscoso hogar.\r\n\r\nSi Reshad cerraba los ojos, podía recordarlo todo de nuevo: el rayo de fuego incandescente que aprovechaba el poder del sol brotando del cristal e incendiando su mundo. Podía oír los chasquidos de la madera al partirse, los chillidos de los desterrados envueltos en llamas.\r\n\r\nPero se dijo a sí mismo que todo eso ya formaba parte del pasado.\r\n\r\nLos adeptos de Rukhmar, la orden que había regido las vidas de los altos arakkoa con férreo fanatismo, estaban sumidos en el caos. Su arma había sido destruida. Algo nuevo emergía de las cenizas que habían dejado a su paso. Emergía de forma lenta, pero certera.\r\n\r\nReshad lo vio justo delante de sus ojos. La Orden de los Despiertos, una nueva sociedad arakkoa que luchaba por desterrar el odio y las rivalidades que habían atenazado a los suyos durante generaciones. En el bosque calcinado, los antiguos enemigos caminaban juntos como amigos: a un lado, los desterrados sin alas, producto de la maldición de Sethe; al otro, sus primos, los elegantes y poderosos altos arakkoa alados, quienes antaño despreciaban a todos los que habitaban por debajo de sus cumbres.\r\n\r\n«Ya era hora», pensó Reshad. «Los viejos huesos se cansan...».\r\n\r\nUn graznido familiar atrajo la atención de Reshad. Una masa indistinta de plumas rojas volaba en círculos por encima. Percy, su kaliri, descendió en picado con una bolsa rebosante de pergaminos entre sus negras garras.\r\n\r\n—¡Ah, los encontraste! —Reshad aplaudió con sus nudosas manos. Había enviado a Percy a por uno de sus alijos de pergaminos. El astuto erudito había escondido muchos por todo el bosque a lo largo de los años. —Tráelos aquí.\r\n\r\nPercy lanzó la bolsa junto a Reshad y los pergaminos se esparcieron por el suelo cubierto de hollín. —¡Raaak! —graznó el viejo desterrado—.¡Cuidado, Percival! ¡Sabes que son muy frágiles!\r\n\r\nEl kaliri se posó sobre un retorcido tocón y emitió un chillido de réplica.\r\n\r\n—Sí, sí... —suspiró Reshad mientras rebuscaba en una bolsa de tela que llevaba sobre su toga violeta con ribetes de oro. Sacó un puñado de semillas y frutos—. No me he olvidado de tu recompensa...\r\n\r\nArrojó el puñado a sus pies y se limpió las manos en la toga. Percy saltó del tocón y se abalanzó de forma frenética sobre las semillas en un frenesí de picotazos.\r\n\r\n—No olvides tus modales. Hay extraños en las inmediaciones —lo reprendió Reshad mientras empezaba a ojear los pergaminos esparcidos por el suelo. Rebuscó entre ellos con delicadeza, como si fueran huevos de kaliri. Contaban viejas historias que mostraban la sociedad arakkoa antes de su división en individuos alados y desterrados. Eran textos apócrifos, leyendas censuradas por los adeptos de Rukhmar en un intento de manipular y lavar el cerebro a los suyos.\r\n\r\nReshad depositó con cuidado los pergaminos en la bolsa mientras examinaba cada ejemplar en busca de daños producidos por el fuego. Se fijó en uno que hablaba de Terokk, el antiguo rey que había gobernado sobre los arakkoa, y cuyo título era Antes de la caída. Reshad lo sopesó con la mano.\r\n\r\nLe pareció tan pequeño… solo tinta y pergamino. Pero al mismo tiempo tan poderoso que podía rivalizar con el falso sol que los altos arakkoa habían utilizado.\r\n\r\n—¡Reshad! —Un desterrado apareció cojeando, sus plumas teñidas de hollín del color de una borrasca. Un alto arakkoa ataviado con una túnica de cuero añil sobre el plumaje de color verde turquesa caminaba a su lado.\r\n\r\n—No hemos sido capaces de encontrar a Iskar —continuó el desterrado—. Los exploradores han ido en su búsqueda, pero tardarán un tiempo en regresar.\r\n\r\n—Que así sea —dijo Reshad mientras una sensación de frío se apoderaba de él. El sabio de las Sombras Iskar era el líder de los desterrados. Su ausencia resultaba desconcertante. Su comportamiento durante las últimas semanas había sido distante e irritable, y Reshad se preguntaba sobre sus intenciones. Iskar siempre había estado obsesionado en cierto modo con el poder como resultado de su historia personal.\r\n\r\n¿Pero qué es lo que busca? ¿Esta nueva sociedad de los arakkoa no es suficiente para él?\r\n\r\n—¿Deberíamos preocuparnos? —preguntaron los altos arakkoa.\r\n\r\n—Eso está por ver —respondió Reshad—. Sentaos. Los dos. Descansad.\r\n\r\nLos altos arakkoa asintieron mientras Reshad se subía encima de un árbol caído. El desterrado se sentó sobre un pequeño tocón cercano mientras se limpiaba el hollín de la cara.\r\n\r\nReshad desenrolló el pergamino en su mano. El pergamino seco se parecía a él, desgastado y frágil, pero lleno de secretos. Había dedicado su vida a reunir estos conocimientos y a transmitirlos a una nueva generación de arakkoa. Arakkoa que se regirían por la sabiduría en lugar de por los prejuicios y el fanatismo ciego del pasado.\r\n\r\nPensó que este era tan buen momento como cualquier otro para empezar.\r\n\r\n—¿Qué sabéis de Iskar? —preguntó mientras se giraba hacia los altos arakkoa.\r\n\r\n—Únicamente que él dirige a los desterrados.\r\n\r\n—¿Y qué sabéis de la soberana de los Adeptos, la suma sabia Viryx? —preguntó Reshad al desterrado.\r\n\r\n«Por suerte, la difunta suma sabia», pensó para sí mismo. Ella fue la culpable de que los altos arakkoa utilizaran su arma para tratar de exterminar a los desterrados.\r\n\r\n—Ella hizo todo esto... ¡Grrrk! —El desterrado observó el bosque arrasado mientras lanzaba un áspero graznido.\r\n\r\n—Sí —prosiguió Reshad—. A primera vista parecen muy diferentes, y lo mismo podría decirse de vosotros dos, pero hubo una época en que eran lo mismo...\r\n\r\n***', 'BFA', 0, 0, '0'),
('flyx1878@outlook.com', '60ebf2536e24f', '2021-07-12', '02:42:11am', 'ñlokijuynhtbgvl8kijuyhtbgrvfsssssssssss', '       Finita e infinita', 0, 0, '0'),
('bry1878@gmail.com', '60ec0ae7d8fa6', '2021-07-12', '04:27:03am', '0066hfghdfbvbcvbcvbcvbcvbcvnhtbgvfcd', 'Gato', 0, 0, '0'),
('bry1878@gmail.com', '60ec64a1dc377', '2021-07-12', '10:49:53am', 'j6hygrtfedwsl8ki7juh6ygt5rfedwsz8kj7uhytgrfedwsdsdsdsz1111111111111111111111111', ' Ghost', 0, 0, '0'),
('flyx1878@outlook.com', '60ec68b6f31ba', '2021-07-12', '11:07:18am', 'vycsdhnjmvcbhnjmk', '  Indie', 0, 0, '0'),
('flyx1878@outlook.com', '60ec7b0851a5b', '2021-07-12', '12:25:28pm', 'kjuyhtbgrvfecdmjunthbgrvfecd7munjhsybrgtvefcdwmnhtbgrvdddddddddfc111111111111', '     The Stand', 0, 0, '0'),
('bry1878@gmail.com', '6104599364d9e', '2021-07-30', '14:57:07pm', 'mujnhbgvfc', 'LOL', 0, 0, '0'),
('bry1878@gmail.com', '6104895d490b8', '2021-07-30', '18:21:01pm', 'asdafamaoisjdaiod\r\nasdads', 'MV', 0, 0, '0'),
('bry1878@gmail.com', '6104bcced55ba', '2021-07-30', '22:00:30pm', '<p>El vac&iacute;o del alma...</p>\r\n\r\n<p><a href=\"https://www.masscience.com/wp-content/uploads/2018/05/6584072d12d52e06afb9cf0beddce775-1080x675.jpg\"><img alt=\"\" src=\"https://www.masscience.com/wp-content/uploads/2018/05/6584072d12d52e06afb9cf0beddce775-1080x675.jpg\" style=\"border-style:solid; border-width:2px; height:263px; width:420px\" /></a></p>\r\n', 'Contemplación', 0, 0, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(25) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Comentario` text NOT NULL,
  `Imagen` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`email`, `date`, `time`, `ip`) VALUES
('bry1878@gmail.com', '2021-07-11', '02:12:57am', '::1'),
('bry1878@gmail.com', '2021-07-11', '05:04:53am', '::1'),
('bry1878@gmail.com', '2021-07-11', '05:36:14am', '::1'),
('bry1878@gmail.com', '2021-07-11', '05:46:29am', '::1'),
('bry1878@gmail.com', '2021-07-11', '06:58:11am', '::1'),
('bry1878@gmail.com', '2021-07-11', '06:59:19am', '::1'),
('flyx1878@outlook.com', '2021-07-11', '08:27:57am', '::1'),
('flyx1878@outlook.com', '2021-07-11', '08:57:47am', '::1'),
('bry1878@gmail.com', '2021-07-11', '09:49:03am', '::1'),
('flyx1878@outlook.com', '2021-07-11', '09:56:33am', '::1'),
('flyx1878@outlook.com', '2021-07-12', '03:07:25am', '::1'),
('flyx1878@outlook.com', '2021-07-12', '03:17:08am', '::1'),
('bry1878@gmail.com', '2021-07-12', '04:17:46am', '::1'),
('bry1878@gmail.com', '2021-07-12', '05:34:18am', '::1'),
('bry1878@gmail.com', '2021-07-12', '05:56:50am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:24:46am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:27:23am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:31:09am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:33:12am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:33:17am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:36:47am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:40:35am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:40:38am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:58:19am', '::1'),
('bry1878@gmail.com', '2021-07-12', '06:59:00am', '::1'),
('bry1878@gmail.com', '2021-07-12', '10:46:23am', '::1'),
('flyx1878@outlook.com', '2021-07-12', '10:53:59am', '::1'),
('flyx1878@outlook.com', '2021-07-12', '10:54:17am', '::1'),
('bry1878@gmail.com', '2021-07-12', '11:15:14am', '::1'),
('leito@gmail.com', '2021-07-12', '11:17:26am', '::1'),
('leito@gmail.com', '2021-07-12', '11:17:30am', '::1'),
('bry1878@gmail.com', '2021-07-12', '11:25:02am', '::1'),
('bry1878@gmail.com', '2021-07-12', '11:36:37am', '::1'),
('flyx1878@outlook.com', '2021-07-12', '11:47:05am', '::1'),
('flyx1878@outlook.com', '2021-07-12', '12:32:06pm', '::1'),
('bry1878@gmail.com', '2021-07-12', '02:55:59pm', '::1'),
('bry1878@gmail.com', '2021-07-25', '06:50:15pm', '::1'),
('bry1878@gmail.com', '2021-07-28', '02:19:48pm', '::1'),
('bry1878@gmail.com', '2021-07-28', '04:47:59pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '02:33:55pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '06:20:44pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '08:16:32pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '09:18:10pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '09:36:18pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '09:56:31pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '10:24:02pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '10:43:56pm', '::1'),
('bry1878@gmail.com', '2021-07-30', '11:04:03pm', '::1'),
('bry1878@gmail.com', '2021-08-05', '08:29:18pm', '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(5, 10, 'post three', 'this is good', '2019-08-13 15:46:43'),
(6, 10, 'Post Three', 'this is good', '2019-08-13 15:51:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `age`, `gender`, `email`, `password`, `created_at`) VALUES
(1, 'Bryan Flores', 24, 'M', '', 'a2ed614e1dc5702b8cff5a3a7856f0bb', '2021-08-05 22:27:26'),
(2, 'Carlos Flores Arce', 20, 'M', '', 'a2ed614e1dc5702b8cff5a3a7856f0bb', '2021-08-05 22:27:26'),
(3, 'Leito', 11, 'M', '', '25d55ad283aa400af464c76d713c07ad', '2021-08-05 22:27:26'),
(4, 'Leito', 0, '', 'leito@mail.com', '$2y$10$3FlIUNL0xsyzlxrG8FZMWe4TEOII9VCeSw2Oc6m0DXYpZWhUO36lK', '2021-08-06 16:24:51'),
(5, 'James', 0, '', 'bry1878@zmail.com', '$2y$10$d67m6eGPw2Eo7tDn/swq5urd.9CdtgB2DhPeTzpcn5O8pr9bw0rru', '2021-08-06 17:52:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `username`, `password`) VALUES
(1, 'Bryan', 'Flores', 'bry1878', '$2y$10$szCPxg/vqJTCD93At6.ZIOW62a3hO/ck3iZeRS8.k34WsA5zOyUQa'),
(4, 'James', 'Flores', 'flyx1878', '$2y$10$TR/Y9Luc5IVp4eyTUnFFqu81rS.3/0gHFhmdhcTpKao0e.pEPCuDa'),
(10, 'nombre', 'apellido', 'username', 'password');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD CONSTRAINT `Only_one` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
