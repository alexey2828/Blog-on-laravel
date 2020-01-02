-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 28 2019 г., 19:16
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
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `categorie_id`, `title`, `text`, `img`, `image`, `created_at`, `updated_at`, `image_2`) VALUES
(71, 2, 'qq282002@gmail.com', 'awdad', 'Моsfsef', '', NULL, NULL, 0),
(72, 4, 'dawdawda', 'wdawdawdwad', 'dada', '', NULL, NULL, 0),
(73, 1, 'qq282002@gmail.cпom', 'awdad', 'Мо', '', NULL, NULL, 0),
(75, 1, 'qq282002@gmail.com', 'awdad', 'alexey', '', NULL, NULL, 0),
(76, 4, 'dawdad', 'Ss', 'Мо', '', NULL, NULL, 0),
(77, 2, 'qq282002@gmail.com', 'adda', 'alexey', '', NULL, NULL, 0),
(78, 5, 'fomin', 'laravel', 'alexey', '', NULL, NULL, 0),
(79, 6, 'qq282002@gmail.com', 'adwad', 'Мо', '', NULL, NULL, 0),
(80, 6, 'dawdad', 'adda', 'alexey', '', NULL, NULL, 0),
(81, 6, 'dawdad', 'adda', 'alexey', '', NULL, NULL, 0),
(82, 1, 'qq282002@gmail.com', 'awdadawd', 'alexey', '', NULL, NULL, 0),
(83, 4, 'dadawd@gmail.com', 'adwad', 'alexey', '', NULL, NULL, 0),
(84, 5, 'awdada', 'dadwawd', 'awadad', '', NULL, NULL, 0),
(86, 1, 'qq282002@gmail.com', 'awdad', 'alexey', '', NULL, NULL, 0),
(87, 6, 'awdawdaw', 'dawdawdawd', 'wadawd', '', NULL, NULL, 0),
(88, 5, '435eteg', 'awdad', 'alexey', '', NULL, NULL, 0),
(89, 1, 'no', 'awdad', 'Мо', '', NULL, NULL, 0),
(90, 6, '2r2rawvraw3', 'adad', 'dawdadad3rr2r2', '', NULL, NULL, 0),
(91, 1, 'qq282002@gmail.com', 'awdad', 'alexey', '', NULL, NULL, 0),
(92, 1, 'dwadad4334', 'awdawda', 'alexey', '', NULL, NULL, 0),
(93, 3, 'qq282002@gmail.com', 'awdad', 'alexey', NULL, NULL, NULL, 0),
(94, 3, 'qq282002@gmail.com', 'awdad', 'alexey', NULL, NULL, NULL, 0),
(95, 1, 'qq282002@gmail.com', 'awdad', 'Мо', NULL, NULL, NULL, 0),
(96, NULL, NULL, NULL, NULL, 'SWTOR-Crisis-on-Umbara-Wildlife.jpg', NULL, NULL, 0),
(97, NULL, NULL, NULL, NULL, 'SWTOR-Crisis-on-Umbara-Wildlife.jpg', NULL, NULL, 0),
(98, NULL, NULL, NULL, NULL, 'C:\\Users\\Alexey\\AppData\\Local\\Temp\\php325D.tmp', NULL, NULL, 0),
(99, NULL, NULL, NULL, NULL, 'POST /upload HTTP/1.1\r\nAccept:                    text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\r\nAccept-Encoding:           gzip, deflate, br\r\nAccept-Language:           ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7\r\nCache-Control:             max-age=0\r\nConnection:                keep-alive\r\nContent-Length:            40945\r\nContent-Type:              multipart/form-data; boundary=----WebKitFormBoundaryHiHJoFQw0TxX4Xod\r\nCookie:                    XSRF-TOKEN=eyJpdiI6ImFKSGFqcTZwVXQyN2pTNm82d0lDd1E9PSIsInZhbHVlIjoiV3ZDYUYxbTByRVZFV0M1RVJza0ZoNnVtN1NWNjg1RVBNWDF0SWxCWlVoZ3ppb0twcHVGR3V4STBnaVI4aENGaSIsIm1hYyI6IjBlNThlMTE1NzI0MGU4ZDM3MmFmZjFjN2ZmM2Y4NTNkMDdiZDVhMjE5NzIwNTIzNTcyNDgzZWE0ZTVjM2U1NWMifQ%3D%3D; laravel_session=eyJpdiI6Ik1uK0c2M1NPMGR4UmEyTDF0c2F1MlE9PSIsInZhbHVlIjoiaW12RkRGZzl5N1dSaEZsM3BDaHVaS3BFdXVwRjdpbmQ0MUxwc0FtR3Zzek1MSnluMk96ZytQek8xWkQ3UjRDYiIsIm1hYyI6IjUyN2FkNmY0MGIwODg1MzkwNTk5MDM5MGI5YTM4Y2QzYWUzYmU1YjdlZDE5MTUxZTAxNzQ5NmY4MzQ1ZTVkNjgifQ%3D%3D\r\nHost:                      127.0.0.1:8000\r\nOrigin:                    http://127.0.0.1:8000\r\nReferer:                   http://127.0.0.1:8000/home\r\nSec-Fetch-Mode:            navigate\r\nSec-Fetch-Site:            same-origin\r\nSec-Fetch-User:            ?1\r\nUpgrade-Insecure-Requests: 1\r\nUser-Agent:                Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\r\nCookie: XSRF-TOKEN=oejK9ICSRvifmhyIc7Oc6ro1yAK2bxUTVKBVXkYK; laravel_session=HlRGwTdllwCfTJJedTaep4bRE1LqKkWeXykcPN3u\r\n\r\n', NULL, NULL, 0),
(100, NULL, NULL, NULL, NULL, '\\1577030938_ikxpqlwidu441.jpg', NULL, NULL, 0),
(101, NULL, NULL, NULL, NULL, 'C:\\Users\\Alexey\\AppData\\Local\\Temp\\php8FA0.tmp', NULL, NULL, 0),
(102, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\/images\\1577107184_bt2nxqtdif541.jpg', NULL, NULL, 0),
(103, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577107283_s1200.jpg', NULL, NULL, 0),
(104, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577107355', NULL, NULL, 0),
(105, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577107412_TEST.png', NULL, NULL, 0),
(106, NULL, NULL, NULL, NULL, 'C:\\Users\\Alexey\\AppData\\Local\\Temp\\php12E2.tmp', NULL, NULL, 0),
(107, NULL, NULL, NULL, NULL, 'C:\\Users\\Alexey\\AppData\\Local\\Temp\\php47B5.tmp', NULL, NULL, 0),
(108, NULL, NULL, NULL, NULL, 'C:\\Users\\Alexey\\AppData\\Local\\Temp\\phpADD.tmp', NULL, NULL, 0),
(109, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577108097_maxresdefault.jpg', NULL, NULL, 0),
(110, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577175907_66215.jpg', NULL, NULL, 0),
(111, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images_5486dbcdb9343.jpeg\\php3E6A.tmp', NULL, NULL, 0),
(112, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images_5486dbcdb9343.jpeg\\php6992.tmp', NULL, NULL, 0),
(113, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577176167_5486dbcdb9343.jpeg', NULL, NULL, 0),
(114, NULL, NULL, NULL, NULL, 'E:\\open server\\OSPanel\\domains\\blog\\public\\images\\1577176311_69-eyes_thumb.jpg', NULL, NULL, 0),
(115, NULL, NULL, NULL, NULL, '1577176535_maxresdefault.jpg', NULL, NULL, 0),
(116, NULL, NULL, NULL, NULL, '1577177213_logoeye.png', NULL, NULL, 0),
(117, NULL, NULL, NULL, NULL, '1577177570_66215.jpg', NULL, NULL, 0),
(118, NULL, NULL, NULL, NULL, '1577178066_wp1814941.jpg', NULL, NULL, 0),
(119, NULL, NULL, NULL, NULL, '1577178077_wp1814941.jpg', NULL, NULL, 0),
(120, NULL, NULL, NULL, NULL, '1577178125_marvel-guardians-of-the-galaxy-artwork-tf.jpg', NULL, NULL, 0),
(121, 6, 'qq282002@gmail.com', 'adda', 'alexey', NULL, NULL, NULL, 0),
(122, 6, 'qq282002@gmail.com', 'adda', 'alexey', NULL, NULL, NULL, 0),
(123, 6, 'qq282002@gmail.com', 'adwad', 'alexey', NULL, NULL, NULL, 0),
(124, NULL, NULL, NULL, NULL, '1577179637_thumb-1920-759351.jpg', NULL, NULL, 0),
(125, 4, 'qq282002@gmail.com', 'awdad', 'alexey', NULL, NULL, NULL, 0),
(126, 4, 'qq282002@gmail.com', 'awdad', 'alexey', NULL, NULL, NULL, 0),
(127, NULL, NULL, NULL, NULL, '1577201997_wp1814935.jpg', NULL, NULL, 0),
(128, 3, 'qq282002@gmail.com', 'adad', 'alexey', NULL, NULL, NULL, 0),
(129, 2, 'qq282002@gmail.com', 'awdad', 'alexey', NULL, NULL, NULL, 0),
(130, 2, 'qq282002@gmail.com', 'awdad', 'alexey', NULL, NULL, NULL, 0),
(131, 2, 'dadawd@gmail.com', 'awdad', 'Мо', '1577202331_guardians-of-the-galaxy-vol-2-3840x2160-2017-movies-4k-marvel-comics-1603.jpg', NULL, NULL, 0),
(134, 2, 'qq282002@gmail.com', 'awdad', 'alexey', '1577202726_Helmet_bascinet_with__Wolf_ribs__visor1.jpg', NULL, NULL, 0),
(135, 5, 'вввввввввв', 'аааааааааааааааа', 'alexey', '1577202759_1319838433_1.jpg', NULL, NULL, 0),
(136, 3, 'qq282002@gmail.com', 'awdad', 'Мо', '1577203151_2664.jpg', NULL, NULL, 0),
(137, 2, 'qq282002@gmail.com', 'awdad', 'Мо', '1577204311_2664.jpg', NULL, NULL, 0),
(138, 2, 'Что такое Lorem Ipsum?', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.  Почему он используется? Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', 'sdfsfsd', '1577204928_cybertruck-carscoops-5.jpg', NULL, NULL, 0),
(139, 1, 'dadawd@gmail.com', 'awdad', 'alexey', '1577205229_Png.png', NULL, NULL, 0),
(140, 1, 'qq282002@gmail.com', 'awdad', 'alexey', '1577213924_1319838433_1.jpg', NULL, NULL, 0),
(141, 3, 'yiuyiyuadada345iyikyu', 'awdad', 'Мо', '1577213999_marvel-guardians-of-the-galaxy-artwork-tf.jpg', NULL, NULL, 0),
(142, 5, 'новая статья', 'новая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статьяновая статья', 'новая', '1577214192_purple-textured-wallpaper-9.jpg', NULL, NULL, 0),
(143, 4, 'test article', 'text', 'test article', '1577214656_1kbx.gif', NULL, NULL, 0),
(144, 1, 'dadawd@gmail.com', 'awdad', 'alexey', '1577216708_cybertruck-carscoops-5.jpg', NULL, NULL, 0),
(145, 3, 'sdasdadassdasdadassdasdadassdas', 'dasssdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasdadassdasda', 'alexey', '1577353831_dims-10.jpg', NULL, NULL, 0),
(146, 2, 'qq282002@gmail.com', 'awdad', 'alexey', '1577354010_thumb-1920-759351.jpg', NULL, NULL, 0),
(147, 2, 'qq282002@gmail.com', 'awdad', 'alexey', '1577354445_thumb-1920-759351.jpg', NULL, NULL, NULL),
(148, 4, 'qq282002@gmail.com', 'awdad', 'alexey', '1577354638_Png.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'alexey', 'qq282002@gmail.com', NULL, '$2y$10$0spMPTvgT6JXwntCEBjvUOoGLMd3vrlcnFF4LS8RNXJg94p.9JZAi', NULL, '2019-08-23 17:43:33', '2019-08-23 17:43:33', 1),
(2, 'alexey', 'qq28dawd@gmail.com', NULL, '$2y$10$sJDmUOQMQ7kDmVkuwu6gnet1.aqG8r1xIULHdOMQCSQlH7w/gdKpq', NULL, '2019-10-23 14:52:28', '2019-10-23 14:52:28', 0),
(3, 'fsefsfsfsfsf', 'dadawd@gmail.com', NULL, '$2y$10$tmV6ZbJY.I6Mz7wseOaEgeZz9sgnpYlyG.uEyIGyLeTC1IH6CrJRa', NULL, '2019-10-23 14:57:38', '2019-10-23 14:57:38', 0),
(4, 'alexey', 'qq28200fs2@gmail.com', NULL, '$2y$10$.AHA4e7ken.uDly8EZUtL.r730aRrY9.K5p7WeuJgbwt2rEoeQHvS', NULL, '2019-10-24 15:17:37', '2019-10-24 15:17:37', 0),
(5, 'czsczscsz', '', NULL, '', NULL, NULL, NULL, 0),
(6, NULL, 'john@example.com', NULL, NULL, NULL, NULL, NULL, 0),
(7, NULL, 'john@edgdgxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(9, NULL, 'john@ryrxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(11, NULL, 'joASDhn@ryrxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(13, NULL, 'joASDhawdawdayrxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(15, NULL, 'joASDhadawdayrxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(17, NULL, 'joASDhaddadawdayrxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(20, NULL, 'joASDhaddawqSdadawdayrxample.com', NULL, NULL, NULL, NULL, NULL, 0),
(22, NULL, 'SU3lThSwv4Fr3T4', NULL, NULL, NULL, NULL, NULL, 0),
(23, NULL, '0SgfVZR2WA8XZE9', NULL, NULL, NULL, NULL, NULL, 0),
(24, 'ytsXJ7irIzUYAeb', '4tcwgFHZUmgWo9g', NULL, 'bMLfNsidbYYjZTs', NULL, NULL, NULL, 0),
(25, 'Wi7ciTqjrLPS1xR', 'Pq5uTvnrQj7tSWl', NULL, 'OGtu3OpRLzezYEd', NULL, NULL, NULL, 0),
(26, 'GnIsb2CUSSvpD7y', 'bPcw1v1HOFKnlMF', NULL, 'f5xAno1kGMLqM9k', NULL, NULL, NULL, 0),
(27, 'cFSHq5oMHwc2C2Z', '84UId6WP2NHK0ui', NULL, 'WSJMmYtvRC6KfJJ', NULL, NULL, NULL, 0),
(28, 'dY07cmvA0qJXNDR', 'tZjglEfV7m1gz3Z', NULL, 'CyXSMM0DuFcjKvv', NULL, NULL, NULL, 0),
(29, 'Y0vyBKAkxmObKOW', 'fiBOttxYZNjZZla', NULL, '6UGbPEOCAlxvPJl', NULL, NULL, NULL, 0),
(30, '0sHGIQWwx12sqUP', 'z87MD3GPlghYNyH', NULL, 'DVroG36bRRbh2pI', NULL, NULL, NULL, 0),
(31, 'P6GqgoFApnF14A1', 'odSofdQfMOL59Bl', NULL, 'W6Ooepvti7olCWK', NULL, NULL, NULL, 0),
(32, 'BMfsAx8wYxNpban', 'ctAs8OhSAaikW7A', NULL, 'QESuvcmwtktYnnw', NULL, NULL, NULL, 0),
(33, 'eEsQKeDOdiNpcyx', '2KnrXlsDMmo7ZTS', NULL, 'YCRo04lbwytHIll', NULL, NULL, NULL, 0),
(34, 'yUcUahiYwQCZfaM', '9prNBb36krWN7nH', NULL, 'M1W0ZvXfWhFlX1p', NULL, NULL, NULL, 0),
(35, 'rm9bdE32N6nE1Ap', 'sxWSsEsqxYdO4SP', NULL, 'RVthBf073W3bzqr', NULL, NULL, NULL, 0),
(36, 'wFNAvtVb9gexQJH', 'CGVCrnua5o3KzTq', NULL, 'vq8GJ2wlC3DRN3R', NULL, NULL, NULL, 0),
(37, '3ek18ABiE6P1HFe', '5Qa86XmKfQawNrf', NULL, 'FbXFET9Dvg3VDiA', NULL, NULL, NULL, 0),
(38, 'AMy1DMdbIoR5vU8', 'S5YPCVQsHJ760Li', NULL, 'houE2kQitftl5ti', NULL, NULL, NULL, 0),
(39, 'gYRoBUBfwg6Zndy', 'BxD4F8iKnDXZm37', NULL, 'MkmqgW969N4bg8j', NULL, NULL, NULL, 0),
(40, 'HKJuPzc7SMT3Xbp', 'zc47rdD6C4ldqex', NULL, 'OJDtZvjLB6L3Y1i', NULL, NULL, NULL, 0),
(41, 'ToesogVZ0YU4iBt', 'BuUvGYMUKNjfw0j', NULL, 'xkWGNgDJUOan7PI', NULL, NULL, NULL, 0),
(42, 'jqxi9oCtlOq6NAs', 'stQmKcABO18LEjx', NULL, 'u2mwgrlfRWfOo5n', NULL, NULL, NULL, 0),
(43, '4VvWzOKcRfJICuC', 'nt5Whuxb77nLudR', NULL, 'Vea057vz3O3Q0Wz', NULL, NULL, NULL, 0),
(44, 'rsUeJXc6BKPJSrm', 'SwbGWPDWAu21qMn', NULL, 'p1wd0LlcUX0pEcW', NULL, NULL, NULL, 0),
(45, 'Q1JjC7GvFSN8TYx', 'aX3U1vcVotKpu8h', NULL, '8NA4JO5q7rwXI54', NULL, NULL, NULL, 0),
(46, 'TklKhlHtEcO1shJ', 'TVXx35SlbUnaXcr', NULL, '92YsntMGPVvjVkE', NULL, NULL, NULL, 0),
(47, 'p8Jw7arZdBwrkpt', 'Tr8T9bUAeqRHLLr', NULL, 'cGW9rqDT6ELtoZv', NULL, NULL, NULL, 0),
(48, '23t4KQLw7kiBMVd', 'KGBQ8bTXy3IQgNj', NULL, '5tTGJ59XgjhxRlI', NULL, NULL, NULL, 0),
(49, 'UnYhjo69bWeakfD', 'Zfw4owNz2iiIRSY', NULL, 'WvRAc6BYNLYC5PK', NULL, NULL, NULL, 0),
(50, 'W5Z2nn1zUArsizA', 'WE6KCfaZ2GJUPXT', NULL, '8Z12dvW3FwRUwKt', NULL, NULL, NULL, 0),
(51, 'MBAkVfXm3i5MfCt', '7DI4B2t9RIEmveM', NULL, 'D1y0lPBnQ4Jt9GZ', NULL, NULL, NULL, 0),
(52, 'qUsjUrzYO4M0tIN', 'QdOn3b5JZCcpqrj', NULL, 'JbwY3xvRHJOMz4E', NULL, NULL, NULL, 0),
(53, '2GH9lLwgCQ45JGp', 'AYSHsBs1VBnSuML', NULL, 'qlEI8179qnvvmg2', NULL, NULL, NULL, 0),
(54, 'TlaelUGNuVdI2nV', 'LLqD1UR5ApXosbh', NULL, 'jxl3unG8Sp7Iii8', NULL, NULL, NULL, 0),
(55, 'fHetP1uEN3Hvljo', 'YZcCbYn9bpWUNzr', NULL, 'wGzabgQIyZTQSGh', NULL, NULL, NULL, 0),
(56, NULL, 'awda', NULL, NULL, NULL, NULL, NULL, 0),
(57, NULL, 'xdf', NULL, NULL, NULL, NULL, NULL, 0),
(58, 'adwd', 'aX', NULL, 'adwd', NULL, NULL, NULL, 0),
(59, 'фцвфв', 'вфцфв', NULL, 'вфцвфв', NULL, NULL, NULL, 0),
(60, 'ыаыуа', 'ыауаы', NULL, 'ываыпыуиолпиоцыо утотоыутоыо ыу ы гшщаышщуатдддддддддддддддддддолооооооооооооо оооооооооооооо', NULL, NULL, NULL, 0),
(61, 'testNoAdmin', 'testNoAdmin@gmail.com', NULL, '$2y$10$PImUtWUGA08hM0TZtdSKye/hDJxxJkqZyeNN6GDbWDAmU/Sxhfi3m', NULL, '2019-12-08 07:38:11', '2019-12-08 07:38:11', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
