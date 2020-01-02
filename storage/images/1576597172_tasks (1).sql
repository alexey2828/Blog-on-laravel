-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2019 г., 19:00
-- Версия сервера: 8.0.15
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `app2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `categorie_id`, `title`, `text`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 'img no 1 ', 'fff', 'default.jpg', '2019-08-01 21:00:00', '2019-08-12 21:00:00'),
(2, 1, 'Что такое Lorem Ipsum?', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', '', '2019-08-20 21:00:00', '2019-08-24 21:35:00'),
(3, 1, 'Почему он используется?', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.', '', '2019-08-24 21:00:00', '2019-08-24 21:00:00'),
(4, 1, 'Являясь всего лишь частью общей ', 'Являясь всего лишь частью общей картины, акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть представлены в исключительно положительном свете. Следует отметить, что выбранный нами инновационный путь, в своём классическом представлении, допускает внедрение как самодостаточных, так и внешне зависимых концептуальных решений. В своём стремлении повысить качество жизни, они забывают, что курс на социально-ориентированный национальный проект, а также свежий взгляд на привычные вещи - безусловно открывает новые горизонты для приоритизации разума над эмоциями.', '123', '2019-08-28 21:00:00', '2019-08-28 21:00:00'),
(5, 1, ' компаний представляют собой не что ', 'Являясь всего лишь частью общей картины, акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть представлены в исключительно положительном свете. Следует отметить, что выбранный нами инновационный путь, в своём классическом представлении, допускает внедрение как самодостаточных, так и внешне зависимых концептуальных решений. В своём стремлении повысить качество жизни, они забывают, что курс на социально-ориентированный национальный проект, а также свежий взгляд на привычные вещи - безусловно открывает новые горизонты для приоритизации разума над эмоциями.', '123', '2019-08-21 09:17:16', '2019-08-24 21:00:00'),
(6, 2, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '', '2019-10-25 21:00:00', '2019-10-26 15:35:38'),
(10, 2, 'xczxc', 'zxczxc', 'zczxc', NULL, NULL),
(11, 2, 'daad', 'dadadw', 'adawdadda', NULL, NULL),
(13, 2, 'ADADAWD', 'awdadawd', 'adadad', NULL, NULL),
(14, 3, 'ADADAWD', 'awdadawd', 'adadad', NULL, NULL),
(15, 3, 'casfas', 'fssf', 'efsfs', NULL, NULL),
(16, 3, 'casfas', 'fssf', 'efsfs', NULL, NULL),
(17, 4, 'casfas', 'fssf', 'efsfs', NULL, NULL),
(18, 4, 'casfas', 'fssf', 'efsfs', NULL, NULL),
(19, 4, '', '', '', NULL, NULL),
(20, 5, 'sdfsdf', 'sfsdfs', 'sdfsdf', NULL, NULL),
(21, 5, 'dawdad111', 'awdad', 'awdawd', NULL, NULL),
(22, 5, 'dawdad111', 'awdad', 'awdawd', NULL, NULL),
(23, 5, 'dawdad', 'adadawdawd', 'daawdad', NULL, NULL),
(24, 5, 'dawdad', 'adadawdawd', 'daawdad', NULL, NULL),
(25, 5, 'dawdad', 'adadawdawd', 'daawdad', NULL, NULL),
(26, 6, '', '', '', NULL, NULL),
(27, 6, '', '', '0', NULL, NULL),
(28, 6, '', '', '0', NULL, NULL),
(29, 6, '', '', '', NULL, NULL),
(30, 6, '', '', '', NULL, NULL),
(31, 6, '', '', '', NULL, NULL),
(35, 5, 'qq282002@gmail.com', 'Ssre', '12wrewrwrwr', NULL, NULL),
(36, 5, 'sfsfsef', 'sfsfsefsef', 'Моsfsef', NULL, NULL),
(37, 4, 'qq282002@gmail.cпom', 'sign up - Перевод на русский - примеры английский ... https://context.reverso.net › перевод › английский-русский › sign+up Перевод контекст \"sign up\" c английский на русский от Reverso Context: sign-up, didn\'t sign up, i didn\'t sign up, sign me up. sign-up - Перевод на русский - примеры английский ... https://context.reverso.net › перевод › английский-русский › sign-up Перевод контекст \"sign-up\" c английский на русский от Reverso Context: sign up, didn\'t sign up, i didn\'t sign up, sign me up. \"sign up - Перевод на русский - примеры английский ... https://context.reverso.net › перевод › английский-русский › \"sign+up Перевод контекст \"\"sign up\" c английский на русский от Reverso Context: sign-up, didn\'t sign up, i didn\'t sign up, sign me up.', 'test', NULL, NULL),
(38, 4, 'qq282002@gmail.cпom', 'sign up - Перевод на русский - примеры английский ... https://context.reverso.net › перевод › английский-русский › sign+up Перевод контекст \"sign up\" c английский на русский от Reverso Context: sign-up, didn\'t sign up, i didn\'t sign up, sign me up. sign-up - Перевод на русский - примеры английский ... https://context.reverso.net › перевод › английский-русский › sign-up Перевод контекст \"sign-up\" c английский на русский от Reverso Context: sign up, didn\'t sign up, i didn\'t sign up, sign me up. \"sign up - Перевод на русский - примеры английский ... https://context.reverso.net › перевод › английский-русский › \"sign+up Перевод контекст \"\"sign up\" c английский на русский от Reverso Context: sign-up, didn\'t sign up, i didn\'t sign up, sign me up.', 'test', NULL, NULL),
(39, 1, 'dawdadawdadawdadaw', 'dadawdadawdad', 'dawdadad', NULL, NULL),
(40, 2, 'dadawwdad', 'awdadadawd', 'dadada', NULL, NULL),
(41, 1, 'fsfsef', 'efsfesefs', 'wefs', NULL, NULL),
(42, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(43, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(44, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(45, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(46, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(47, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(48, 2, 'adadawd', 'awdadawd', 'dadad', NULL, NULL),
(49, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(50, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(51, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(52, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(53, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(54, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(55, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(56, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL),
(57, 2, 'qq282002@gmail.com', 'adwad', 'Мо', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
