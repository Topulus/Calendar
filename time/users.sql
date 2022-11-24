-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 18 2022 г., 13:57
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newss9p4_time`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Окт 18 2022 г., 09:25
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id_wrike` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `specialization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `technology_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `avatarUrl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `account_id_wrike`, `role`, `settings`, `specialization_id`, `technology_id`, `level_id`, `avatarUrl`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'Василий Коркин', 'v.ivan.korkin@gmail.com', 'KUACJGWQ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 1, 3, 'https://www.wrike.com/avatars//82/3E/iEO2FPFU4JyY.png', '2021-06-23 04:19:13', '2022-05-13 09:25:45', '{\"platform.index\": \"1\", \"platform.systems.roles\": \"1\", \"platform.systems.users\": \"1\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"1\"}'),
(2, 'Илья Прыгунов', 'eliasejump@gmail.com', 'KUAJ4SJM', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 1, 2, 'https://www.wrike.com/avatars//0C/1E/xDHANG4ZdQeM.png', '2021-07-01 04:58:03', '2022-05-13 09:25:38', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(3, 'Алексей Петров', 'newss911@yandex.ru', 'KUABIHEW', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//CE/A3/8CaitYEL8geE.png', '2021-07-01 10:44:50', '2022-10-08 05:36:38', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(4, 'Чистяков Дмитрий', 'info@wbest.ru', 'KUABIHD4', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//B2/8B/Hym5mReidSb5.png', '2021-09-02 03:09:50', '2022-05-13 09:25:15', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(5, 'Григорий Виноградов', 'scamanderlive@gmail.com', 'KUAIIFWE', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 1, 3, 2, 'https://www.wrike.com/avatars//4C/E5/iWSK177Cv4gI.png', '2021-09-03 11:02:57', '2022-05-13 09:25:08', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(6, 'Алиса Сидоренкова', 'alisasidorenkova51@gmail.com', 'KUAIE7UT', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 3, 5, 2, 'https://www.wrike.com/avatars//16/65/XbG2nZHtWnmL.png', '2021-09-03 14:56:26', '2022-05-13 09:25:01', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(7, 'Алексей Куралесов', 'kuralesov@inbox.ru', 'KUABQP5V', 'User', '{\"not-track-hours\": true}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//AD/3D/rIidTLhc6MZz.png', '2021-10-04 05:54:11', '2021-10-04 05:54:11', NULL),
(8, 'Дмитрий Полетаев', 'dmit.poletaev@yandex.ru', 'KUAIF7E7', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 2, 2, 'https://www.wrike.com/avatars//50/20/kA212Iaym1gJ.png', '2021-10-05 05:14:31', '2022-05-13 09:24:43', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(9, 'Герман Столяров', 'ger6450@gmail.com', 'KUAJWQZQ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 1, 3, 2, 'https://www.wrike.com/avatars//D6/6F/OhYCF7XBsf0B.png', '2021-10-05 05:14:54', '2022-06-28 12:34:03', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(10, 'Лада Рюгина', 'ladu3112@gmail.com', 'KUAJPVLL', 'Collaborator', '{\"allowed-shift\": \"0\", \"not-track-hours\": \"0\"}', 1, 3, 2, 'https://www.wrike.com/avatars//03/C8/1VAlJp8HqurL.png', '2021-10-05 05:14:56', '2022-05-13 09:24:26', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(11, 'Радик Ямалеев', 'alcatraz9971@gmail.com', 'KUAHP7AJ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 2, 2, 'https://www.wrike.com/avatars//8C/11/vefniiIhVnf0.png', '2021-10-05 05:15:26', '2022-05-13 09:24:16', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(12, 'Александра Красавцева', 'a.kravez.k@gmail.com', 'KUAI5T6U', 'Collaborator', '{\"allowed-shift\": \"0\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//5C/F6/Box_ff43a047_1040-1050_v1.png', '2021-10-05 05:17:07', '2022-05-13 09:24:11', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(13, 'Елизавета Дурович', 'liza.durovich91@gmail.com', 'KUAFWMT7', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//ED/89/69xCKw1bmALo.png', '2021-10-05 05:28:38', '2022-05-13 09:23:54', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(14, 'Александр Александров', 'alex.wbest@yandex.ru', 'KUAC2IP4', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//2D/C5/ujGDhLTtqQB3.png', '2021-10-05 07:07:53', '2022-10-10 02:06:57', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(15, 'Юлия Шигалева', 'hr@wbest.ru', 'KUALAOTC', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D4/BE/Box_ff4db6ac_1070-1064_v1.png', '2021-10-05 09:02:51', '2022-09-13 08:33:12', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(16, 'Александр Суворов', 'sahasu@rambler.ru', 'KUACOOUR', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 1, 2, 'https://www.wrike.com/avatars//53/B1/Box_ffe53935_1040-1057_v1.png', '2021-10-05 12:04:20', '2022-05-13 09:23:28', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(17, 'Ярослав Большаков', 'yaroslav.webest@yandex.ru', 'KUAF54QZ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//53/84/Box_ff8e24aa_1071-1041_v1.png', '2021-10-05 12:27:05', '2022-05-13 09:23:06', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(18, 'Екатерина Станчина', 'respekt204@gmail.com', 'KUABJZTZ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//1A/D0/YQAej2ZApXAP.png', '2021-10-05 18:57:37', '2022-05-06 12:01:18', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(19, 'Андрей Кумбула', 'andrewkumbula@gmail.com', 'KUAJVR7E', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//A9/81/whqbWKEUppxW.png', '2021-10-06 04:39:11', '2022-05-13 09:23:00', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(20, 'Иван Завьялов', 'pochtavani99@gmail.com', 'KUAKQ2DG', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 2, 2, 'https://www.wrike.com/avatars//53/E0/Box_fff57c00_1048-1047_v1.png', '2021-10-06 12:51:13', '2022-05-13 09:22:53', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(21, 'Максим  Ильиных', 'ilinychmd@gmail.com', 'KUACOXDM', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//7F/08/fx7embebswjd.png', '2021-10-11 12:15:22', '2022-05-13 09:22:47', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(22, 'Юлия Сынбулатова', 'isolationalaina@gmail.com', 'KUALGQMO', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D3/8E/Box_ff7986cb_1070-1057_v1.png', '2021-10-18 12:55:23', '2022-05-13 09:22:42', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(23, 'Николай Степанов', 'niskoflywork@gmail.com', 'KUALJ4O4', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 1, 4, 1, 'https://www.wrike.com/avatars//FE/AA/Box_ff7986cb_1053-1057_v1.png', '2021-11-01 10:44:07', '2022-05-13 09:22:37', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(24, 'Константин Снятков', 'ks@wbest.ru', 'KUALPHLO', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//AD/DC/zY3vLccHt3E0.png', '2021-11-19 05:16:29', '2022-05-13 09:22:32', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(25, 'Тимур Пахолков', 'timazloy0444@yandex.ru', 'KUALPR4Q', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 1, 4, 1, 'https://www.wrike.com/avatars//4A/02/Box_ff00acc1_1058-1055_v1.png', '2021-11-22 06:37:52', '2022-05-13 09:22:26', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(26, 'Ivan Lykov', 'ivisraeldp@gmail.com', 'KUALR2NS', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//60/7A/Box_ffe57373_73-76_v1.png', '2021-12-01 10:36:21', '2022-05-13 09:22:21', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(27, 'Груздев Олег', 'marketing@wbest.ru', 'KUACUGEG', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//94/62/26MUFdOfAclS.png', '2021-12-29 07:49:03', '2022-05-13 09:22:16', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(28, 'Денис Настасин', 'den0602000@gmail.com', 'KUAJ64ER', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//BD/78/Box_ffba68c8_1044-1053_v1.png', '2021-12-29 08:39:29', '2022-05-13 09:22:04', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(29, 'Валерий Таракановский', 'mythical.form.of.life@gmail.com', 'KUALYYQG', 'User', '{\"allowed-shift\": \"0\", \"not-track-hours\": \"1\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//18/CD/BXm4P34D2RRV.png', '2022-01-12 07:56:28', '2022-04-29 09:16:11', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(30, 'Георгий Тагаев', 'gtagaev96@gmail.com', 'KUAMCGRZ', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//46/11/Box_ff43a047_1043-1058_v1.png', '2022-02-14 12:34:35', '2022-05-13 09:21:58', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(31, 'Павел Уткин', 'chequite1@gmail.com', 'KUAMFB7A', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', 2, 1, 1, 'https://www.wrike.com/avatars//BC/53/m4c3jS9JHKMX.png', '2022-02-28 04:43:16', '2022-10-08 05:30:29', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(32, 'Алексей Мороко', 'kill4ik@gmail.com', 'KUAMHAZ4', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//E0/02/Box_ff4dd0e1_1040-1052_v1.png', '2022-03-14 08:16:46', '2022-05-13 09:21:46', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(33, 'Маковеев Андрей', 'llleff197@gmail.com', 'KUAMLOEJ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//E0/9C/Box_ffff9800_1052-1040_v1.png', '2022-04-01 07:39:10', '2022-05-13 09:21:41', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(34, 'Денис Богданов', 'hiddendln@gmail.com', 'KUAMLWHQ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//AC/46/oFd9fYaEI035.png', '2022-04-04 02:53:39', '2022-05-16 16:58:43', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(35, 'Вадим Новоселов', 'dfgbolshenet@gmail.com', 'KUAMMWEN', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//A4/5B/MxIjThdYPTHR.png', '2022-04-08 08:40:26', '2022-05-13 09:21:33', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(36, 'Алина Деньщикова', 'a.d.denshchikova@gmail.com', 'KUAMM7KC', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//43/0E/Box_ff43a047_1040-1044_v1.png', '2022-04-11 03:13:41', '2022-05-13 09:21:29', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(37, 'Денис Упадышев', 'denis.upadyshev1@gmail.com', 'KUAMM7IK', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D2/D3/rSidKB8rD7i9.png', '2022-04-11 11:06:36', '2022-08-30 09:38:52', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(38, 'Иван Силаев', 'silaeviddqd@gmail.com', 'KUAMSHKI', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D1/9C/5HNK2e0kuPmc.png', '2022-05-04 04:32:13', '2022-05-19 14:17:07', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(39, 'Станислав Колодин', 'stas.k@wbest.ru', 'KUAMSHZO', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//37/BC/Box_ff43a047_1057-1050_v1.png', '2022-05-04 11:58:37', '2022-05-13 09:27:16', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(40, 'Александр Погодин', 'alexanderpogodin1996@gmail.com', 'KUAFGPAI', 'User', NULL, NULL, NULL, NULL, 'https://www.wrike.com/avatars//8B/DF/Box_ff4db6ac_1040-1055_v1.png', '2022-05-23 04:18:17', '2022-05-23 04:18:17', NULL),
(41, 'Артем Середюк', '1seredyuk.artem1@gmail.com', 'KUAMXEJK', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//32/FA/Box_fff9a825_1040-1057_v1.png', '2022-05-31 09:38:06', '2022-06-01 03:14:25', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(42, 'Дмитрий Уланов', 'lichdekopi97@gmail.com', 'KUAMXDNV', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//64/59/RmmFZprlB4wj.png', '2022-06-01 03:47:51', '2022-06-01 03:48:55', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(43, 'Артем Подгорнов', 'am@wbest.ru', 'KUAMXLOA', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D9/28/Box_ff7986cb_1040-1055_v1.png', '2022-06-01 04:04:56', '2022-06-01 04:07:42', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(44, 'Силакова Алена Андреевна', 'silakova.alena.andr@yandex.ru', 'KUAMXLQC', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//FF/8E/Box_ff4db6ac_1057-1040_v1.png', '2022-06-01 05:01:33', '2022-06-01 05:03:18', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(45, 'Аскер Тахмазов', 'takhmazov40@gmail.com', 'KUAM2KNJ', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//EF/E4/0wHsZ3UHsiEX.png', '2022-06-20 03:12:39', '2022-06-21 11:23:53', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(46, 'Екатерина Комелькова', 'katerina.kom21@gmail.com', 'KUAM2I2T', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D3/DD/Box_ffe53935_1045-1050_v1.png', '2022-06-20 03:57:40', '2022-06-20 03:58:58', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(47, 'Евгений Гусев', 'ewgeniy8886@gmail.com', 'KUAM4X4V', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//B3/28/Box_ff64b5f6_1045-1043_v1.png', '2022-07-01 06:00:34', '2022-07-01 06:06:12', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(48, 'Цветков Илья Андреевич', 'ic@webest.ru', 'KUAM5NAI', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D8/8B/Box_ffd81b60_1062-1048_v1.png', '2022-07-11 03:25:13', '2022-08-01 02:40:01', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(49, 'Олег Данилов', 'ovdanoleg8@gmail.com', 'KUAM7KCW', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//BC/E3/Box_ff8e24aa_1054-1044_v1.png', '2022-07-18 04:12:58', '2022-08-01 02:39:58', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(50, 'Наталия Андреева', 'nataliaandreeva932@gmail.com', 'KUANAWAP', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//8C/98/R9JdoxBcThT9.png', '2022-07-25 06:00:15', '2022-08-01 10:59:18', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(51, 'Александр Усенко', 'aluxemburg17@gmail.com', 'KUANBKLW', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//DA/EE/Box_ff4dd0e1_1040-1059_v1.png', '2022-08-01 02:42:26', '2022-08-02 03:02:34', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(52, 'Гриненко Евгения Викторовна', 'skylin23k@gmail.com', 'KUANC6HC', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//7C/39/Box_ff00acc1_1043-1045_v1.png', '2022-08-15 03:34:21', '2022-08-22 09:30:56', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(53, 'Елена Киселёва', 'e.a.kiseljova@gmail.com', 'KUAN6VHU', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//5D/18/Box_fffbc02d_1045-1050_v1.png', '2022-09-02 06:43:36', '2022-09-02 08:53:38', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(54, 'Анастасия Радчук', 'anastasia.r.seo@gmail.com', 'KUANM4KE', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//8F/8C/Box_ffafb42b_1040-1056_v1.png', '2022-09-02 08:49:53', '2022-09-02 08:54:04', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(55, 'Елена Кондакова', 'kondakovae467@gmail.com', 'KUANAP2B', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//D7/9A/i8QKuWs6vjvA.png', '2022-09-09 08:30:00', '2022-09-09 08:58:32', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(56, 'Игорь Нуретдинов', 'dojoigor@gmail.com', 'KUAOEJUU', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//E0/88/Box_ff8e24aa_1048-1053_v1.png', '2022-09-12 10:36:12', '2022-09-13 01:54:28', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(57, 'Виталий Касьянов', 'kasvit1977@gmail.com', 'KUAOG5XC', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//20/16/Box_fffbc02d_1042-1050_v1.png', '2022-09-28 09:04:45', '2022-09-29 05:14:43', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(58, 'Сергей Подус', 'serega88851@gmail.com', 'KUAOHTVL', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//91/90/Box_fff57c00_1057-1055_v1.png', '2022-10-03 04:12:48', '2022-10-03 04:13:32', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(59, 'Чуркин Андрей Маркович', 'rhenfylhtq@gmail.com', 'KUAOGMYV', 'User', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//33/DD/Box_ffe57373_1063-1040_v1.png', '2022-10-03 04:50:30', '2022-10-03 06:06:49', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(60, 'Ольга Нечаева', 'osnechaeva04@gmail.com', 'KUAOIX2O', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//84/44/Box_ff8e24aa_1054-1053_v1.png', '2022-10-10 02:30:24', '2022-10-10 02:30:49', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}'),
(61, 'Алексей Шуклин', 'nhstar.ash@gmail.com', 'KUAOJHFH', 'Collaborator', '{\"allowed-shift\": \"1\", \"not-track-hours\": \"0\"}', NULL, NULL, NULL, 'https://www.wrike.com/avatars//03/24/Box_ff81c784_1040-1064_v1.png', '2022-10-17 03:45:54', '2022-10-17 04:03:54', '{\"platform.index\": \"0\", \"platform.systems.roles\": \"0\", \"platform.systems.users\": \"0\", \"platform.systems.clients\": \"0\", \"platform.systems.attachment\": \"0\"}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_specialization_id_foreign` (`specialization_id`),
  ADD KEY `users_technology_id_foreign` (`technology_id`),
  ADD KEY `users_level_id_foreign` (`level_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `users_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`),
  ADD CONSTRAINT `users_technology_id_foreign` FOREIGN KEY (`technology_id`) REFERENCES `technologies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
