-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 06:29 PM
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
-- Database: `securedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add health record', 7, 'add_healthrecord'),
(26, 'Can change health record', 7, 'change_healthrecord'),
(27, 'Can delete health record', 7, 'delete_healthrecord'),
(28, 'Can view health record', 7, 'view_healthrecord'),
(29, 'Can add user', 8, 'add_customuser'),
(30, 'Can change user', 8, 'change_customuser'),
(31, 'Can delete user', 8, 'delete_customuser'),
(32, 'Can view user', 8, 'view_customuser');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$I9Y7R77WSWsDKfbLN40BBa$Fv0h4OlkZ3tpetXMwaYMcQW9+/U1JaMG3Xc480L+mgs=', '2023-12-09 16:53:57.454341', 0, 'abcd', '', '', '', 0, 1, '2023-12-09 16:17:26.575259'),
(2, 'pbkdf2_sha256$600000$LN9OQgSIMRgYC1KrQFcLJf$8EuH9mGi3E6evR/C6wQ46BPy/yatb1Bvu7X7qaw/tJU=', '2023-12-09 16:44:21.000627', 0, 'abcd1', '', '', '', 0, 1, '2023-12-09 16:37:28.756657');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'healthdata', 'customuser'),
(7, 'healthdata', 'healthrecord'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-08 03:22:57.731102'),
(2, 'auth', '0001_initial', '2023-12-08 03:22:58.478531'),
(3, 'admin', '0001_initial', '2023-12-08 03:22:58.645803'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-08 03:22:58.660795'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-08 03:22:58.683568'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-08 03:22:58.940187'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-08 03:22:59.040989'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-08 03:22:59.067975'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-08 03:22:59.095958'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-08 03:22:59.191724'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-08 03:22:59.196719'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-08 03:22:59.213708'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-08 03:22:59.248691'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-08 03:22:59.282672'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-08 03:22:59.320652'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-08 03:22:59.340932'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-08 03:22:59.369917'),
(18, 'healthdata', '0001_initial', '2023-12-08 03:22:59.390299'),
(19, 'healthdata', '0002_customuser', '2023-12-08 03:22:59.815392'),
(20, 'sessions', '0001_initial', '2023-12-08 03:22:59.885742');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('284wb4ld5nokzwc86etb29zm80qax3ze', '.eJxVjEEOwiAQRe_C2hCghQaX7j0DmRlmpGogKe3KeHdt0oVu_3vvv1SCbS1p67ykOauz8ur0uyHQg-sO8h3qrWlqdV1m1LuiD9r1tWV-Xg7376BAL9_aAdsxDHEMlqKQNcaKhylHzFN0GUiEIlhjXXCGUcihB_SCPAQmx-r9Ae5zON0:1rC17v:P2qT7wAna7gN5PDFiU5qO_xCbfLmUTmMyc0s1QV6ah8', '2023-12-23 17:28:31.243392');

-- --------------------------------------------------------

--
-- Table structure for table `healthdata_customuser`
--

CREATE TABLE `healthdata_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthdata_customuser`
--

INSERT INTO `healthdata_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `role`) VALUES
(1, 'pbkdf2_sha256$600000$54wIqz5oEgH7CCh4Z2vYvW$V+qDvaIxQWNvNZGCGk2r+RgtsaADA00UO/TEtuubqeU=', '2023-12-09 17:00:44.508621', 0, 'aBCD', '', '', '', 0, 1, '2023-12-09 16:52:52.947146', 'H'),
(2, 'pbkdf2_sha256$600000$yj8M0RncQM4iHKrMRNmjDy$apiXu6gl+FPzxABZCvnDe8V4v4LtcMttUzRgF+kDGmI=', NULL, 0, 'ASD', '', '', '', 0, 1, '2023-12-09 17:06:06.697881', 'R'),
(3, 'pbkdf2_sha256$600000$mw5kzPFwIfjzOH5L5xVoFj$ipy4vXkjfGv3GKnz/AhC21ZL7rXUYwGv5QTUCMpdzPM=', '2023-12-09 17:07:31.304737', 0, 'ASDD', '', '', '', 0, 1, '2023-12-09 17:07:30.304311', 'R'),
(4, 'pbkdf2_sha256$600000$4iZ3YqC2hJSa5pQvf5D7Vh$q22lWSGHlERoW6TxZ2KdgqeGqTd5HlZbitTjWRWviLc=', '2023-12-09 17:25:37.452758', 0, 'A', '', '', '', 0, 1, '2023-12-09 17:08:12.651570', 'H'),
(5, 'pbkdf2_sha256$600000$uVjlWPgc7drrxskzsBAdxW$Fe+7kAz4h4+prN4kmUn+Yrk21HJdfuYKZGy6d2F2ICk=', '2023-12-09 17:28:31.238692', 0, 'B', '', '', '', 0, 1, '2023-12-09 17:09:19.736686', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `healthdata_customuser_groups`
--

CREATE TABLE `healthdata_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `healthdata_customuser_user_permissions`
--

CREATE TABLE `healthdata_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `healthdata_healthrecord`
--

CREATE TABLE `healthdata_healthrecord` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `health_history` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthdata_healthrecord`
--

INSERT INTO `healthdata_healthrecord` (`id`, `first_name`, `last_name`, `gender`, `age`, `weight`, `height`, `health_history`) VALUES
(1, 'RsoWHPxoCX', 'oWryDwVsqE', 0, 70, 50.35517704000834, 1.8915694978548163, 'GLaKJTchGl'),
(2, 'ebIYdyEgFL', 'hwkJUTFcBn', 1, 35, 40.96203525025045, 1.566986691721146, 'ZWNDvHDCru'),
(3, 'YRxRWlXRGj', 'IzIojZzrxG', 0, 57, 58.097613304700914, 2.0946938909707224, 'lupEADETKi'),
(4, 'HkrhMVnKaH', 'bajonTCiYj', 0, 43, 60.48387713705417, 1.9982775835784528, 'soLbTdEExe'),
(5, 'gWwWKxOJFa', 'FIKVhpdtwG', 0, 33, 117.86476556069549, 2.1080647765035168, 'IDayEGKzvP'),
(6, 'GMOfYwwVNG', 'CLDoWaKtzS', 0, 90, 90.54096992209065, 2.098780006278374, 'zvQobhjqSx'),
(7, 'BJmCkkGDCY', 'mzOGrdRFii', 0, 23, 49.82314987746699, 1.5277150257722574, 'uVmyLuGKgN'),
(8, 'jxxhuWuvEq', 'AiqnychVKC', 0, 97, 73.9685888500242, 1.9600234303887254, 'itCoRTeLyH'),
(9, 'dzqFaaCFhB', 'rvuCdQIjEB', 0, 65, 105.64918517598267, 1.9360251299448947, 'cvBqmBHlld'),
(10, 'EtlkPXQYIT', 'iaiYiuqgst', 1, 39, 89.27994602151401, 1.50540732957771, 'ZyGJsJGfSX'),
(11, 'vqEvDQbcjF', 'xnwHQSQOSK', 1, 31, 111.22485569880376, 2.073495185115478, 'sLiQRwaZRA'),
(12, 'OMHuKEauHI', 'FShpzNDlOB', 0, 81, 71.77909861637309, 2.1780353389542904, 'vYDUvmUOfT'),
(13, 'vAATkCpjrD', 'GsvPviiDLG', 1, 35, 114.57167300954279, 1.6689848064467236, 'dyadqlrDSV'),
(14, 'EZbLRUWVhC', 'tXXsEHubhE', 1, 95, 98.3158084211652, 2.1899477613650955, 'bYpmScRezZ'),
(15, 'gzFaJJVZMM', 'OUWwIVctRN', 1, 84, 115.9186898592222, 1.7036740484712505, 'lEAxONjagY'),
(16, 'ixLyJbxIBP', 'ofwcxfOZIl', 0, 34, 80.77612933410718, 1.5893655404038924, 'yOrSXnnhmE'),
(17, 'zLyxTkLTFA', 'gzKLATYtTf', 0, 78, 65.52486117843232, 1.6656436112184916, 'dgZkMTzyxM'),
(18, 'cFaRCZNrAA', 'mBpwMymPMu', 1, 36, 102.07742479488478, 1.7768780347149, 'tgvjYfhLQO'),
(19, 'cBBDOgZvJc', 'vzhOIjFqWR', 1, 29, 107.90518271092026, 2.0123725103401044, 'baaTEgRGcr'),
(20, 'hJNEDawGcP', 'HAeFrteqrz', 1, 67, 90.14896292622618, 2.062272786072808, 'GmBfPpduGW'),
(21, 'NFUKCStUUD', 'BMlpQleVMo', 0, 68, 113.80287204763923, 1.6837121424098243, 'frMIIZQtHv'),
(22, 'YdvvzlPBuM', 'FwQlLqgvoy', 0, 76, 89.69486821372438, 1.5625042706744348, 'TeyQozegRf'),
(23, 'ebhlKTuBiq', 'DgFVRYRXXd', 0, 47, 58.4016220487299, 1.794179981830568, 'esLsgFyzqd'),
(24, 'kUoTkJlsYO', 'goXfwtWgJr', 0, 96, 119.4015631661727, 2.1004607827741593, 'zArTHOOeZK'),
(25, 'AUbLPZaUhi', 'xONqCFJhue', 1, 79, 44.65268957369126, 2.043952441533939, 'jhEbjIrcbJ'),
(26, 'ZlyrCUEixi', 'DztarqnMRC', 0, 78, 108.27247341582412, 1.6220517541294766, 'mlvrtREWuM'),
(27, 'CvTJeKmhdB', 'ghLTLdFYSK', 1, 63, 112.70976405411477, 2.029388676796175, 'gvqrySBtbR'),
(28, 'LZfoffiKTf', 'MRIYEzYwwt', 0, 22, 68.8001018735267, 1.951903636835413, 'WpnzddWUap'),
(29, 'EdyuftjvNp', 'mothSRzAzx', 0, 78, 48.48923274970475, 1.9478046947830523, 'dbqoscfYga'),
(30, 'UGkrPKRDkh', 'lyTtNXChcK', 0, 33, 116.63400027088075, 2.066335853417992, 'ftSXKyjPDa'),
(31, 'wDXAmizeEk', 'hRnpefsCpa', 0, 75, 93.65386175369156, 1.8243623628913173, 'CXenjYrcSi'),
(32, 'bJkfqhGjgf', 'BCNcgjSWBn', 1, 25, 74.51854351413787, 1.5471969123626936, 'vbrtSAnRgA'),
(33, 'XZwDWdlGbg', 'zfrmcKcBzi', 1, 61, 107.19597292300607, 2.0558957670450715, 'XSQRAxdzei'),
(34, 'LyOlOhlJdh', 'FMbPbFFgIb', 0, 71, 104.1065922392172, 2.1856314870679716, 'WONlyUDFHP'),
(35, 'qascwDdgdc', 'riqMEPtOel', 1, 88, 69.53754632611924, 1.5659427614521697, 'aPJNCyaAUC'),
(36, 'hMGETcPqvI', 'BQbyrdQeuC', 0, 65, 114.44459557384437, 1.8367526975724022, 'tdFUPEFCbN'),
(37, 'kJkmGnhaxB', 'rMmueSXGZV', 1, 23, 44.40341654804456, 2.1118681653226954, 'xTzndJjwGV'),
(38, 'wOYYnGqZNM', 'dgQeQKsrCI', 1, 30, 62.85217235293722, 1.528696450321236, 'TGRTwWEUqU'),
(39, 'WSsVlzrpWV', 'prZwqiuOUQ', 1, 99, 85.00582882682626, 1.6624437817807436, 'MPIWELqwKR'),
(40, 'wYyTmWTCKZ', 'hmPpnZuvrC', 0, 86, 108.95339433079857, 1.736238798040807, 'akzvdZMGGL'),
(41, 'bqNURcpZWd', 'KhUxaAVPln', 0, 24, 99.78862177312344, 2.073415835506032, 'XfkPDTbPja'),
(42, 'IvHcGSBoTO', 'OizJxOAWkj', 0, 79, 58.342764798606666, 1.5014752214024871, 'QKMaVvGFDn'),
(43, 'NWVsknSQpy', 'WnjomWgDTQ', 0, 57, 44.16441808329005, 1.9783435333248651, 'ULhZVzxMSm'),
(44, 'CtRnqXmiJb', 'wtASRYdARH', 1, 20, 51.35726567520148, 2.0937806303528705, 'ZTpahfnEIb'),
(45, 'azVRGjNGvC', 'xfhXvHCGlz', 1, 97, 40.546672990792544, 1.7112299339239927, 'ngrmUnkgGG'),
(46, 'OmbyLDigmG', 'krMkKqdWRs', 0, 47, 118.05195978087166, 2.189451133839601, 'JxFfCsOqVT'),
(47, 'VhCYgPMBBx', 'wshlJcsTpH', 0, 28, 48.10078683401062, 1.7248995977263681, 'ZMLOroxOMy'),
(48, 'dgUnDeImkL', 'SoJjVVEBaD', 0, 49, 68.95823047317202, 1.8959999126397153, 'ifrDxtqZEg'),
(49, 'hfjKMZUdXL', 'JhFWUFxZLi', 1, 67, 50.62576485202136, 1.7136127270377541, 'kQnOEYTdxc'),
(50, 'TjkEPfnxDi', 'WYWpVJZqmb', 0, 45, 62.68921340553433, 1.6029435261919018, 'fpYMADGHNi'),
(51, 'ThDUVSpwKo', 'twsHiINpDt', 0, 59, 93.20765819873358, 1.814044064195286, 'nakfpGyLvk'),
(52, 'bXtZNZepBN', 'DmeTrTRVqY', 0, 24, 115.74938733572283, 1.7033037256087655, 'zglEovKQvx'),
(53, 'vEouWZfyCX', 'caNFDYmqPk', 0, 50, 112.4576099557541, 1.7214253936824344, 'tVFFuceOrm'),
(54, 'AEJjfPkaNA', 'VGMWDXxRwV', 1, 38, 71.02838789740058, 1.8621187045562464, 'qLEzpYKmjn'),
(55, 'AtvIHFqApF', 'CadHucAvFF', 0, 85, 116.06219791218527, 2.1852581549006556, 'IoVCFAJPFc'),
(56, 'ymEqcfbSei', 'UOGOZSbhPR', 0, 88, 114.89007183016406, 2.0961760498586957, 'WlvdCteOYl'),
(57, 'ZTTqTDyTte', 'iTGzQevLaU', 0, 91, 49.644009840114066, 1.5292497058891226, 'iCAvoxudmh'),
(58, 'AsNeCGBpfE', 'cBgpXyvRXT', 1, 65, 46.68641293482399, 1.5619537742709788, 'MFZWquBftI'),
(59, 'jtQndugdtN', 'CEbsZSDLSR', 1, 33, 107.31010930825713, 2.13148324230803, 'doqaqIgWqo'),
(60, 'cSoCJYymns', 'zlWpCaMTSg', 1, 97, 111.6848962673718, 2.0526381317271083, 'bLsTdtJLko'),
(61, 'KvMnVBvLDe', 'poYSRtogim', 1, 61, 50.81133503118099, 1.8473388545737042, 'RjouByvCoh'),
(62, 'YULzwwgLRT', 'cNdQkdgiCV', 0, 85, 96.85984921807842, 2.128790541272703, 'UgKorTBVVf'),
(63, 'BrRGjqUDvt', 'DiAgIFFWLu', 1, 59, 42.77411210299565, 1.7519473903414595, 'pCcPvmKneZ'),
(64, 'kIiKoaAuIT', 'idKwWNxEFe', 1, 24, 41.31533681760921, 2.0824475387600927, 'QzkoNLmxcQ'),
(65, 'WQTqzFQDdZ', 'LSHawkqAzP', 0, 82, 65.07209663524664, 1.9917206982326334, 'ekJOWmdiYj'),
(66, 'LoJzfJQVdY', 'zyymmLCMRK', 0, 92, 69.75180205783109, 1.7329156279553137, 'PqBjOqAIId'),
(67, 'VuGRCCOUnQ', 'ntDLVgLPAq', 1, 65, 63.234720868047845, 1.9336753675258866, 'mBRtAOFOzS'),
(68, 'BoPVNxZwTz', 'rMFnfEuGsF', 1, 50, 73.90995964488371, 1.844815217971221, 'ArYXGxvhKE'),
(69, 'XMhXJrIsHB', 'ikYpJTCMNk', 0, 84, 51.60339364705838, 1.7410940022782062, 'TmvNEpPVeo'),
(70, 'BseImuFUSC', 'YpoiCdUTDW', 1, 58, 114.21948784635245, 1.8084875282876807, 'BobMeikKru'),
(71, 'jRMFHByhrW', 'DuLFOSzJSG', 1, 38, 100.7365404411739, 1.6711086390669772, 'CULnsczekE'),
(72, 'dQQJGciism', 'iTJjPNpuBI', 0, 54, 113.71468697500433, 1.7274476909178529, 'sKeeQkvtmc'),
(73, 'AyBwvaXaWJ', 'TXlQXimWtR', 0, 61, 112.24071944981131, 1.9958697837631456, 'HvHjphmRxS'),
(74, 'XPXQgUcYBc', 'vmRCRsPGav', 1, 89, 84.15025625220113, 2.1050286847810566, 'EoPxLjaEtc'),
(75, 'sLsLLZwjWd', 'wqybkNJzDR', 1, 71, 40.48508459596708, 1.7859949488754614, 'ISVXRPHoeE'),
(76, 'CyBhEkkmkJ', 'CzqKWANhso', 1, 98, 76.52151482877926, 2.1355205979111744, 'UiXHaXalzg'),
(77, 'orihIbmLvA', 'PeMfQxGfqU', 0, 18, 115.3021170567919, 2.1586471992574845, 'lbRSgJnJEe'),
(78, 'eIwroUdrLm', 'HcLxoxZQFq', 0, 71, 89.03352653260956, 1.7661473252104465, 'PPKKoXyLXP'),
(79, 'MoObGWwrOb', 'acgfPHagFn', 0, 59, 95.05091386340499, 2.1706817404326895, 'vQUAenUgER'),
(80, 'rvUegIlwBJ', 'DwCFxlqrxm', 1, 59, 79.09905747069726, 1.6430669701582807, 'cOsBmAidQS'),
(81, 'qlVeBJwkzf', 'HDNenpsjLl', 1, 49, 88.98305028089896, 1.7319126603540178, 'ZoVWBgvwpH'),
(82, 'TflbQRFtMO', 'gljcLjOoKR', 0, 97, 44.39225945757238, 1.6630766616641153, 'wXlWloJOED'),
(83, 'arnLChPUFq', 'jbIlFaqGhC', 1, 35, 88.81221411504046, 2.0956730807998167, 'QXYAEnEhtB'),
(84, 'SPqFclzSSl', 'RyPcMpWILI', 1, 25, 64.7749602793104, 1.6032852808241864, 'OtWQUkKeco'),
(85, 'laJFDVktEb', 'KCkgiLjRLz', 0, 27, 90.97437870118878, 1.7783670167206904, 'VTCJtODBgF'),
(86, 'jUgNVgYjKJ', 'cZIkjYtPXR', 1, 19, 97.46903824394909, 1.866505179719619, 'yxbDZuEzbO'),
(87, 'EnvEViVarR', 'oXbZrOeIQz', 1, 52, 118.8527982398507, 1.6885771242460292, 'ioRpqfakpZ'),
(88, 'jtZfLjnMmp', 'CnuEFFEpNo', 0, 59, 118.05562282757941, 1.7629737645807677, 'OSsOyciski'),
(89, 'hRqxhWOhkv', 'DyQWoEaBtD', 1, 86, 93.20813625231398, 1.508129848091218, 'cbRemKQLVG'),
(90, 'ZbpwdAPPMd', 'ldgVjdZHcs', 0, 93, 97.12475524799461, 1.6974449429259741, 'CQIYcakROJ'),
(91, 'tUNEPOIjLs', 'sPPvuHOVTB', 0, 19, 96.2009946039924, 1.8857208646878143, 'xiIxhQDvbr'),
(92, 'PfnGvBQrSO', 'kQanUIUbYt', 1, 41, 64.35747659958128, 1.793954157736263, 'QHUaqeXSDr'),
(93, 'inCRGgldfZ', 'PLKSSHPkoa', 0, 26, 54.08314341246619, 2.1748680648615712, 'BGblLsjBDN'),
(94, 'sRHaxbxKaa', 'KiUeMucVMe', 1, 91, 104.07594555252712, 1.7534497274857994, 'qwVkwZaHOh'),
(95, 'LgLvMVBuPk', 'gBbRNBKrCG', 0, 43, 48.79323870483498, 1.8884014181771072, 'OPoZsRgYfQ'),
(96, 'defjiJnvaQ', 'LbuhzQofBu', 1, 85, 114.02240286985288, 1.8206361750617333, 'HWtOJjWOkm'),
(97, 'MukwJTkEny', 'JPHlRowSvT', 1, 98, 88.01253329017216, 1.768425717577643, 'ncKtrTcEjm'),
(98, 'WFHPvbqNTB', 'WvUITlqoRY', 1, 21, 88.67794421819254, 1.78886823548288, 'NLnCenUtzV'),
(99, 'bVTdKGilNe', 'pmQCFldPhy', 0, 39, 40.59247106183473, 1.534457994706606, 'ZDgnlgEOvC'),
(100, 'cThJtMcKdc', 'AQZLrwzzEq', 0, 63, 68.55153504916163, 2.11086256656702, 'vPnHtpboRa');

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
-- Indexes for table `healthdata_customuser`
--
ALTER TABLE `healthdata_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `healthdata_customuser_groups`
--
ALTER TABLE `healthdata_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `healthdata_customuser_gr_customuser_id_group_id_09c9cc9b_uniq` (`customuser_id`,`group_id`),
  ADD KEY `healthdata_customuser_groups_group_id_0373e1f1_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `healthdata_customuser_user_permissions`
--
ALTER TABLE `healthdata_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `healthdata_customuser_us_customuser_id_permission_6b9c5c65_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `healthdata_customuse_permission_id_9ed841b9_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `healthdata_healthrecord`
--
ALTER TABLE `healthdata_healthrecord`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `healthdata_customuser`
--
ALTER TABLE `healthdata_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `healthdata_customuser_groups`
--
ALTER TABLE `healthdata_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `healthdata_customuser_user_permissions`
--
ALTER TABLE `healthdata_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `healthdata_healthrecord`
--
ALTER TABLE `healthdata_healthrecord`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `healthdata_customuser_groups`
--
ALTER TABLE `healthdata_customuser_groups`
  ADD CONSTRAINT `healthdata_customuse_customuser_id_d6dcf23f_fk_healthdat` FOREIGN KEY (`customuser_id`) REFERENCES `healthdata_customuser` (`id`),
  ADD CONSTRAINT `healthdata_customuser_groups_group_id_0373e1f1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `healthdata_customuser_user_permissions`
--
ALTER TABLE `healthdata_customuser_user_permissions`
  ADD CONSTRAINT `healthdata_customuse_customuser_id_a50d358c_fk_healthdat` FOREIGN KEY (`customuser_id`) REFERENCES `healthdata_customuser` (`id`),
  ADD CONSTRAINT `healthdata_customuse_permission_id_9ed841b9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
