-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 13 2019 г., 18:29
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_23_203647_create_tasks_table', 2),
(4, '2019_08_27_102753_add_collumn_slug_posts', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `text`, `img`, `created_at`, `updated_at`) VALUES
(1, 'img no 1 ', 'fff', 'default.jpg', '2019-08-01 21:00:00', '2019-08-12 21:00:00'),
(2, 'Что такое Lorem Ipsum?', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', '', '2019-08-20 21:00:00', '2019-08-24 21:35:00'),
(3, 'Почему он используется?', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.', '', '2019-08-24 21:00:00', '2019-08-24 21:00:00'),
(4, 'Являясь всего лишь частью общей ', 'Являясь всего лишь частью общей картины, акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть представлены в исключительно положительном свете. Следует отметить, что выбранный нами инновационный путь, в своём классическом представлении, допускает внедрение как самодостаточных, так и внешне зависимых концептуальных решений. В своём стремлении повысить качество жизни, они забывают, что курс на социально-ориентированный национальный проект, а также свежий взгляд на привычные вещи - безусловно открывает новые горизонты для приоритизации разума над эмоциями.', '123', '2019-08-28 21:00:00', '2019-08-28 21:00:00'),
(5, ' компаний представляют собой не что ', 'Являясь всего лишь частью общей картины, акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть представлены в исключительно положительном свете. Следует отметить, что выбранный нами инновационный путь, в своём классическом представлении, допускает внедрение как самодостаточных, так и внешне зависимых концептуальных решений. В своём стремлении повысить качество жизни, они забывают, что курс на социально-ориентированный национальный проект, а также свежий взгляд на привычные вещи - безусловно открывает новые горизонты для приоритизации разума над эмоциями.', '123', '2019-08-21 09:17:16', '2019-08-24 21:00:00'),
(6, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '', '2019-10-25 21:00:00', '2019-10-26 15:35:38'),
(7, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,', '', '2019-10-25 21:00:00', '2019-10-25 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alexey', 'qq282002@gmail.com', NULL, '$2y$10$0spMPTvgT6JXwntCEBjvUOoGLMd3vrlcnFF4LS8RNXJg94p.9JZAi', NULL, '2019-08-23 17:43:33', '2019-08-23 17:43:33'),
(2, 'alexey', 'qq28dawd@gmail.com', NULL, '$2y$10$sJDmUOQMQ7kDmVkuwu6gnet1.aqG8r1xIULHdOMQCSQlH7w/gdKpq', NULL, '2019-10-23 14:52:28', '2019-10-23 14:52:28'),
(3, 'fsefsfsfsfsf', 'dadawd@gmail.com', NULL, '$2y$10$tmV6ZbJY.I6Mz7wseOaEgeZz9sgnpYlyG.uEyIGyLeTC1IH6CrJRa', NULL, '2019-10-23 14:57:38', '2019-10-23 14:57:38'),
(4, 'alexey', 'qq28200fs2@gmail.com', NULL, '$2y$10$.AHA4e7ken.uDly8EZUtL.r730aRrY9.K5p7WeuJgbwt2rEoeQHvS', NULL, '2019-10-24 15:17:37', '2019-10-24 15:17:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
