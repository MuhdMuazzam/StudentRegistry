-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 03:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_09_144738_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studycourse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `address`, `studycourse`, `created_at`, `updated_at`) VALUES
(3, 'Wanda Cummerata', 'ruthe38@yahoo.com', '26019 Evalyn Plaza Suite 721\nLake Cliftonmouth, NJ 18429-1975', 'Software Engineering', NULL, NULL),
(4, 'Jettie O\'Connell', 'verla.dibbert@douglas.com', '16651 Crooks Fork Suite 063\nCamillaberg, DE 66914-6325', 'Software Engineering', NULL, NULL),
(5, 'Madge Sipes', 'tupton@miller.biz', '3047 Jacobs Shore\nWest Roscoe, NJ 35473', 'Network & Security', NULL, NULL),
(6, 'Thomas Tromp MD', 'madonna.smith@bogisich.org', '6775 Lang Well\nRosenbaumhaven, SC 32395', 'Graphic & Multimedia', NULL, NULL),
(7, 'Ms. Danyka Kovacek V', 'fritsch.alexandro@yahoo.com', '34138 Nyasia Fort Suite 704\nRogersberg, MT 55748-6277', 'Software Engineering', NULL, NULL),
(8, 'Pete Dickinson', 'viviane20@yahoo.com', '5202 Altenwerth Mountain Apt. 673\nBoehmville, TX 00151', 'Network & Security', NULL, NULL),
(9, 'Prof. Geovanny Wilkinson II', 'hamill.sunny@yahoo.com', '737 Barton Parkway\nNorth Shaniyafort, CA 66906-9533', 'Software Engineering', NULL, NULL),
(10, 'Mr. Darrin Rippin III', 'wyman.joy@stark.org', '487 Ward Throughway\nPort Leeside, SD 61893-4327', 'Software Engineering', NULL, NULL),
(11, 'Prof. Roberta Hane', 'pkemmer@yahoo.com', '20973 Bernhard River Suite 234\nLake Aaliyahmouth, PA 94785-8006', 'Software Engineering', NULL, NULL),
(12, 'Juliet Stoltenberg II', 'ohayes@stanton.com', '17793 Daugherty Rue\nDedricborough, CO 69194-0983', 'Network & Security', NULL, NULL),
(13, 'Braulio Casper', 'olson.amalia@gmail.com', '123 Gleason Land Apt. 410\nAlejandrashire, MN 69697-0661', 'Network & Security', NULL, NULL),
(14, 'Lenore Konopelski Jr.', 'aurelio.volkman@tremblay.com', '78986 Catharine Rapid\nKemmerberg, MS 84489', 'Software Engineering', NULL, NULL),
(15, 'Ricky Daugherty', 'rempel.zelma@simonis.com', '15785 Rosenbaum Drive Suite 865\nWest Rafaelfort, SC 27245', 'Graphic & Multimedia', NULL, NULL),
(16, 'Loma Blanda DVM', 'ahamill@runolfsson.com', '84210 Kerluke Well\nJohnsfort, NH 01366-9271', 'Graphic & Multimedia', NULL, NULL),
(17, 'Freeman Cartwright', 'hodkiewicz.isidro@hotmail.com', '5551 Amanda Forks\nEast Bayleetown, NY 82516-8287', 'Network & Security', NULL, NULL),
(18, 'Griffin Altenwerth', 'donnelly.alia@gmail.com', '5441 Emmerich Spring Suite 916\nXanderfort, MS 95903-3381', 'Network & Security', NULL, NULL),
(19, 'Lloyd Weber MD', 'nyost@gmail.com', '784 Jakubowski Burgs Apt. 638\nMarquardtburgh, WA 08124-7100', 'Software Engineering', NULL, NULL),
(20, 'Prof. Emilie Reichert', 'krystina.gaylord@hotmail.com', '6181 Hessel Well\nNew Khalilberg, PA 91467', 'Graphic & Multimedia', NULL, NULL),
(21, 'Prof. Aiden Kuhic DVM', 'rafaela.nitzsche@lockman.com', '955 Turcotte Place\nMannside, TX 43580', 'Network & Security', NULL, NULL),
(22, 'Lucio White', 'okon.iva@hotmail.com', '3675 Lowe Land\nWest Elvieside, MD 21220-5812', 'Network & Security', NULL, NULL),
(23, 'Emilia McClure', 'dbrakus@yahoo.com', '508 Jeffrey Pike\nMckaylaborough, AR 43511-1488', 'Graphic & Multimedia', NULL, NULL),
(24, 'Buck Grant', 'rosalinda74@yahoo.com', '601 Nora Ford Apt. 567\nKulasfurt, CA 88469-2725', 'Network & Security', NULL, NULL),
(25, 'Don Kshlerin IV', 'bernhard57@haley.biz', '276 Tia Freeway Apt. 224\nLeschtown, RI 14758-5132', 'Graphic & Multimedia', NULL, NULL),
(26, 'Buck Kuvalis', 'kihn.lou@yahoo.com', '3963 Fahey Loaf\nAlivialand, ND 04165-5727', 'Graphic & Multimedia', NULL, NULL),
(27, 'Maximillia Howe', 'freeman80@schulist.com', '601 Leuschke Crossing\nWest Israelborough, NH 08252-7299', 'Software Engineering', NULL, NULL),
(28, 'Kyleigh Kuhn', 'rosalee.toy@gmail.com', '937 Collins Pines\nWest Marielaville, CA 52864', 'Graphic & Multimedia', NULL, NULL),
(29, 'Dr. Nina Fadel', 'nyasia.baumbach@ernser.com', '240 Fay Mission Suite 835\nScotshire, NE 05822-4657', 'Graphic & Multimedia', NULL, NULL),
(30, 'Mrs. Bernice Pagac Sr.', 'maryam54@hotmail.com', '4154 Howe Square Suite 438\nDelphineshire, NY 84507-0841', 'Network & Security', NULL, NULL),
(31, 'Ms. Erika Spinka', 'moriah.erdman@yahoo.com', '26146 Maureen Plains\nKubtown, TN 18285-7597', 'Software Engineering', NULL, NULL),
(32, 'Demarco Collier', 'nathaniel.heidenreich@gmail.com', '730 Gunnar Passage Suite 335\nWest Ellenburgh, IA 53957-8801', 'Graphic & Multimedia', NULL, NULL),
(33, 'Ervin Lakin V', 'albina82@gmail.com', '7654 Easter Green Apt. 368\nSouth Corrineville, OK 34078', 'Software Engineering', NULL, NULL),
(34, 'Maia Torphy', 'white.caterina@stehr.com', '55576 Elias Rapids Apt. 599\nPort Amberland, ID 12237', 'Graphic & Multimedia', NULL, NULL),
(35, 'Mateo Schmeler', 'gia.bahringer@keebler.com', '54695 Hoppe Groves Apt. 707\nLake Javonport, MI 06010', 'Network & Security', NULL, NULL),
(36, 'Marcelino Koss', 'angelica98@yahoo.com', '9512 Gleason Mills Apt. 653\nLake Zelda, NH 21442', 'Graphic & Multimedia', NULL, NULL),
(37, 'Wilson Cummings', 'areinger@mcclure.info', '270 Karli Mission Apt. 416\nLuciousburgh, MO 59533', 'Software Engineering', NULL, NULL),
(38, 'Isidro Walter', 'frederic.rogahn@gmail.com', '362 Laurie Cliffs\nEast Dovie, MD 99494-2299', 'Network & Security', NULL, NULL),
(39, 'Pascale Collier', 'renee.aufderhar@hudson.com', '42903 Bella Park Suite 941\nAnjalichester, IL 89375-7577', 'Software Engineering', NULL, NULL),
(40, 'Aiyana Schumm', 'nikolas78@hotmail.com', '689 Fahey Neck\nPort Feltonside, NY 23985-4579', 'Network & Security', NULL, NULL),
(41, 'Maia Roob', 'hailie19@kutch.net', '3889 Wehner Glen Suite 352\nEast Lillian, GA 33387-4710', 'Software Engineering', NULL, NULL),
(42, 'Heber Hartmann', 'rowan76@olson.com', '561 Dayna Cliffs\nLake Arvel, TN 13052', 'Graphic & Multimedia', NULL, NULL),
(43, 'Dr. Tyrell Hyatt PhD', 'tressa75@yahoo.com', '35653 Abernathy Causeway\nPort Maxwell, IA 66570', 'Software Engineering', NULL, NULL),
(44, 'Kimberly Lynch', 'bradtke.reina@gmail.com', '768 Gislason Flats Apt. 270\nLake Esther, WI 25202-0611', 'Software Engineering', NULL, NULL),
(45, 'Amelia Walker', 'schmitt.fannie@gmail.com', '501 Treutel Ports Apt. 480\nRoyalfurt, PA 51145', 'Network & Security', NULL, NULL),
(46, 'Eric Wyman', 'aschmeler@yahoo.com', '66115 Morissette Green\nNew Emmetfurt, WI 67863-0576', 'Graphic & Multimedia', NULL, NULL),
(47, 'Maxine Huels', 'dgaylord@connelly.com', '275 Jaron Streets Apt. 246\nSouth Aydenfort, WA 04689', 'Software Engineering', NULL, NULL),
(48, 'Lucie Huels', 'renner.jade@beier.info', '142 Lonzo Gateway Apt. 318\nHermannside, AK 35366', 'Network & Security', NULL, NULL),
(49, 'Dr. Kristin Hill', 'hintz.shyanne@mckenzie.com', '1964 Jazmin Forks Suite 710\nPort Houstonstad, MI 82452', 'Graphic & Multimedia', NULL, NULL),
(50, 'Dale Carter PhD', 'ajacobi@yahoo.com', '4267 Lesch Circles Apt. 914\nNew Clifford, NC 83251', 'Graphic & Multimedia', NULL, NULL),
(51, 'Tomasa Trantow', 'eulah86@yahoo.com', '74843 Javonte Square\nConsidineburgh, CT 83653-2318', 'Network & Security', NULL, NULL),
(52, 'Porter Emard', 'howell.vito@rowe.com', '23619 Bechtelar Shore\nEdisonmouth, NC 46185-2931', 'Network & Security', NULL, NULL),
(53, 'Priscilla Kovacek', 'ekutch@wiza.com', '656 Aryanna Inlet Apt. 562\nPort Joanny, OH 92755-2040', 'Network & Security', NULL, NULL),
(54, 'Major Wunsch IV', 'hturcotte@hotmail.com', '7346 Beahan Summit\nElodyburgh, CA 06287', 'Network & Security', NULL, NULL),
(55, 'Cody Aufderhar', 'tess.carroll@stanton.com', '20248 Vince Villages\nRunolfsdottirborough, IN 94745-1955', 'Network & Security', NULL, NULL),
(56, 'Kitty Lowe MD', 'princess.bashirian@hotmail.com', '2103 Hills Drive\nNew Deontaehaven, GA 05287', 'Network & Security', NULL, NULL),
(57, 'Iliana Little', 'oklocko@schmeler.com', '66980 Purdy Ports Suite 371\nNorth Kaitlin, FL 96012-8297', 'Software Engineering', NULL, NULL),
(58, 'Brayan Considine', 'hessel.chadrick@reichel.biz', '718 Becker Unions Apt. 208\nSedrickmouth, IL 41561', 'Network & Security', NULL, NULL),
(59, 'Dr. Chester Schaefer V', 'antone51@lindgren.info', '332 Murazik Estate\nEast Lenny, NH 75930', 'Software Engineering', NULL, NULL),
(60, 'Imani Ruecker', 'jbotsford@schmeler.com', '8503 Feest Green\nNew Efrenchester, VA 94721-0403', 'Network & Security', NULL, NULL),
(61, 'Stefanie Schaden', 'ngrady@howe.com', '33667 Elena Pike\nHeavenville, NJ 23648-9734', 'Graphic & Multimedia', NULL, NULL),
(62, 'Eleonore Daugherty', 'carli24@hirthe.com', '917 McLaughlin Park\nSouth Sophiamouth, WA 74715', 'Software Engineering', NULL, NULL),
(63, 'Carol Thompson', 'harrison.ryan@yahoo.com', '346 Toni Coves\nEmmanuellefurt, AK 27542', 'Graphic & Multimedia', NULL, NULL),
(64, 'Eliezer Ferry', 'reta35@muller.net', '3223 Shields Stravenue\nMyrlview, SD 19037-7567', 'Graphic & Multimedia', NULL, NULL),
(65, 'Shaylee Ernser Sr.', 'altenwerth.francesca@gmail.com', '9486 Orn Courts Apt. 482\nSporerfort, OR 34066-6666', 'Network & Security', NULL, NULL),
(66, 'Lonzo Ratke', 'elisha05@koss.com', '521 Guiseppe Square\nNorth Joshuah, WV 10585', 'Network & Security', NULL, NULL),
(67, 'Sid Hackett', 'felix.konopelski@gmail.com', '403 Max Stream\nPort Curt, NJ 62729', 'Software Engineering', NULL, NULL),
(68, 'Prof. Gregory Mertz MD', 'windler.macy@gmail.com', '4621 Cruickshank Route\nPort Thaddeusside, NC 03925', 'Graphic & Multimedia', NULL, NULL),
(69, 'Prof. April Harber I', 'rogahn.shaun@hotmail.com', '9786 Corkery Spurs Suite 697\nSigurdburgh, AZ 90247', 'Network & Security', NULL, NULL),
(70, 'Walter Klocko', 'macejkovic.george@yahoo.com', '300 Schaden Stream Apt. 008\nLake Martinmouth, ND 78132', 'Graphic & Multimedia', NULL, NULL),
(71, 'Justen Stracke', 'herzog.rene@gmail.com', '2515 Coy Forest\nBuckridgeton, SC 94989-5478', 'Graphic & Multimedia', NULL, NULL),
(72, 'Myrna Kilback', 'jmedhurst@becker.com', '530 Rowland Landing Suite 121\nVickiestad, AZ 35398-2762', 'Software Engineering', NULL, NULL),
(73, 'Freeda Littel', 'kutch.conor@smith.com', '7555 Zola Way Apt. 621\nNew Lavonnefort, WI 24034-4651', 'Network & Security', NULL, NULL),
(74, 'Prof. Dedrick Sporer DVM', 'prunte@bogisich.net', '267 Wisoky Turnpike Suite 003\nSouth Elissafort, AK 12197-4012', 'Graphic & Multimedia', NULL, NULL),
(75, 'Monte Hettinger', 'sherwood.nader@yahoo.com', '18517 Grayce Green\nEast Marilouville, HI 90839-5348', 'Graphic & Multimedia', NULL, NULL),
(76, 'Ms. Winona Lockman', 'jaqueline89@gmail.com', '50808 Parisian Gardens Apt. 865\nTraceymouth, RI 99178', 'Software Engineering', NULL, NULL),
(77, 'Dr. Magnus Farrell', 'alice.tillman@hotmail.com', '133 Jeremy Freeway\nEast Revaland, DC 58227-5533', 'Software Engineering', NULL, NULL),
(78, 'Libbie Predovic', 'lindgren.edwina@hotmail.com', '57269 Kassulke Forges Apt. 007\nLake Abelardo, KS 62637', 'Network & Security', NULL, NULL),
(79, 'Derick Hane', 'frederique.leannon@hotmail.com', '4739 O\'Kon Field Suite 422\nBridgettown, NV 90875-0210', 'Software Engineering', NULL, NULL),
(80, 'Cassandre Herzog', 'marshall.schamberger@hotmail.com', '67355 Monahan Plain\nEast Nikolas, HI 57007-3384', 'Network & Security', NULL, NULL),
(81, 'Paige Strosin', 'schiller.tillman@hotmail.com', '344 Mack Terrace Suite 100\nKianstad, IA 49508-9143', 'Graphic & Multimedia', NULL, NULL),
(82, 'Jody Schmitt', 'moses.hettinger@dicki.com', '9097 Lupe Rue Suite 981\nEast Ivytown, VA 24555-2130', 'Software Engineering', NULL, NULL),
(83, 'Jose Rosenbaum V', 'martina.buckridge@gmail.com', '204 Goldner Lock Apt. 747\nCorkeryberg, UT 62096-6136', 'Software Engineering', NULL, NULL),
(84, 'Pattie Goldner I', 'melissa54@yahoo.com', '4778 Elna Drive Apt. 900\nKendraview, MI 18467-1313', 'Network & Security', NULL, NULL),
(85, 'Jimmie Fahey I', 'linda07@wehner.biz', '209 Lowell Extensions Apt. 407\nLoyceville, TX 77993', 'Software Engineering', NULL, NULL),
(86, 'Mrs. Jackie Davis DVM', 'chagenes@yahoo.com', '865 Okuneva Curve\nConroyview, ID 67347-6321', 'Software Engineering', NULL, NULL),
(87, 'Dr. Jeanne Bradtke', 'ykrajcik@yahoo.com', '98983 Maximillian Alley\nWest Tabithashire, ME 24630-2623', 'Network & Security', NULL, NULL),
(88, 'Lisandro Zulauf', 'cklein@sipes.info', '56799 Cremin Run\nNew Kathryn, VA 52035', 'Graphic & Multimedia', NULL, NULL),
(89, 'Rex Farrell', 'watsica.dino@gmail.com', '50670 Kunde Inlet Apt. 519\nAlanfort, GA 71527-5859', 'Software Engineering', NULL, NULL),
(90, 'Prof. Norris Bergnaum II', 'cassin.lorena@gmail.com', '35861 Carmen Prairie Apt. 223\nPort Tiffanyfort, NV 50832-8626', 'Network & Security', NULL, NULL),
(91, 'Sedrick Heller', 'breanne.oreilly@collier.org', '50429 Hank Fork Suite 943\nPort Adityaborough, NE 79370', 'Network & Security', NULL, NULL),
(92, 'Mossie Volkman', 'jakayla79@schiller.info', '68990 Karina Ranch\nPort Maximeburgh, NV 19104', 'Graphic & Multimedia', NULL, NULL),
(93, 'Tessie West', 'dking@yahoo.com', '44104 West Hills\nGayleview, VA 19693-1531', 'Network & Security', NULL, NULL),
(94, 'Daphnee McDermott IV', 'francisco.lakin@yahoo.com', '72107 Maggio Corner\nKielburgh, NC 14893', 'Graphic & Multimedia', NULL, NULL),
(95, 'Mr. Izaiah Ritchie', 'leola.parker@conroy.com', '14601 Marquardt Flats Suite 830\nSouth Chyna, NH 11245-4191', 'Network & Security', NULL, NULL),
(96, 'Hugh Schmeler', 'lakin.norbert@gmail.com', '36940 Shanel Stravenue\nSouth Wilfrid, PA 07703-7548', 'Graphic & Multimedia', NULL, NULL),
(97, 'Brice Jerde', 'ghodkiewicz@yahoo.com', '690 Parker Curve Apt. 455\nEast Alessandromouth, MO 57568', 'Software Engineering', NULL, NULL),
(98, 'Obie Cummerata', 'dfriesen@lockman.net', '2366 Orn Forges\nPort Gino, AK 89087', 'Graphic & Multimedia', NULL, NULL),
(99, 'Sheridan Corwin', 'skiles.reanna@mayer.com', '3832 Cummings Shoals Suite 595\nWest Juddside, WA 65513-7775', 'Graphic & Multimedia', NULL, NULL),
(100, 'Prof. Garnet Oberbrunner', 'misty.mcglynn@hotmail.com', '20542 Daisy Mills\nPort Hadley, CT 07578', 'Software Engineering', NULL, NULL),
(101, 'Muazzam Tarmizi', 'azzamezy@gmail.com', 'B1-2-16 Kuarters Polis, Bandar Perda', 'Software Engineering', '2023-02-09 06:57:36', '2023-02-10 06:20:38'),
(102, 'Scottie', 'morar.damion@hotmail.com', 'B1-2-16 Kuarters Polis, Bandar Perda', 'Graphic & Multimedia', '2023-02-10 06:11:47', '2023-02-10 06:11:47'),
(103, 'Scottish', 'staff@gmail.com', 'B1-2-16 Kuarters Polis, Bandar Perda', 'Network & Security', '2023-02-10 06:21:29', '2023-02-10 06:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muazzam', 'muhdmuazzam0209@gmail.com', NULL, '$2y$10$XXHIg62rP0q4eY3Wd4vUH.kp0B9frBLztWacUjFTq/2Hpx5nol3de', NULL, '2023-02-10 05:19:57', '2023-02-10 05:19:57'),
(4, 'Muazzam', 'azzamezy@gmail.com', NULL, '$2y$10$xq9Up.HJYDeV3Hx7ZehzKOdFXLr4bpZHUWQCoMg31quKhCR2XuN1.', NULL, '2023-02-10 06:19:21', '2023-02-10 06:19:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
