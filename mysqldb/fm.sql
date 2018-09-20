-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 05:17 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fm`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `film_id`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ali Haider', 'sadsad asdasd asdsad', '2018-09-04 19:00:00', NULL),
(2, 4, 'Ali Haider', 'asd sd', NULL, NULL),
(3, 1, 'Eden', 'asdsad', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `rating` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `name`, `description`, `release_date`, `rating`, `ticket_price`, `country`, `genre`, `photo`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'asd', 'asd', '2018-09-11', 2, 213, 'sdsad', 'ad', 'asd', '2018-09-18 19:00:00', NULL, 'asd'),
(2, 'Hunter', 'asd', '2018-09-11', 2, 213, 'sdsad', 'ad', 'asd', '2018-09-18 19:00:00', NULL, 'hunter'),
(3, 'y7wx0bVQZj', 'Repudiandae quos similique omnis omnis. Magni facere sapiente odit ut. Rerum optio quas fugiat voluptas ad minus ad.', '1971-09-15', 2, 416, 'Macao', 'hB7R12My2r', '1', NULL, NULL, 'bro'),
(4, 'BENJj6ej0M', 'Aut odit accusamus quia et consequatur. Est dolorum cumque non ducimus a consectetur. Praesentium asperiores expedita vel eius consectetur optio et. Atque similique quia laboriosam delectus aut culpa.', '1987-10-12', 3, 369, 'Cayman Islands', 'pJ5tmhSSqf', '1', NULL, NULL, 'best'),
(5, 'zPXpzKq5Cp', 'Et qui dolor omnis sed qui. Non veniam similique aperiam est. Porro ullam est qui esse officiis. Pariatur nobis facere natus maxime voluptate neque sit.', '1997-09-24', 2, 278, 'Ethiopia', '1vkj8TDjGJ', '1', NULL, NULL, ''),
(6, 'v8ZllxuD3I', 'Aspernatur non dicta autem dolores alias excepturi non. Suscipit velit eum et sapiente. Exercitationem mollitia nostrum eum et. Voluptas deserunt doloribus hic.', '1996-04-22', 2, 274, 'Egypt', 'iwbyovaj9W', '1', NULL, NULL, ''),
(7, '0MXK28VpM1', 'Non rem debitis cupiditate iure similique sed aliquam. Aut laboriosam nesciunt ea impedit. Et impedit voluptas voluptatem et et quo dolor.', '1985-02-01', 2, 223, 'Honduras', 'GAO08ebIkF', '1', NULL, NULL, ''),
(8, 'mITf4HYB0D', 'Qui consequatur nesciunt qui commodi explicabo sint quaerat eveniet. Distinctio consequatur commodi harum velit. Animi sunt minima tenetur tempore dolores.', '1992-03-25', 0, 325, 'Chad', '1edLqdN2rr', '1', NULL, NULL, ''),
(9, '12XGPiy0Qr', 'Officia ut itaque officiis odit et quibusdam. Qui rerum voluptates sequi quod voluptates et sed. Iusto esse ab minima quasi blanditiis eligendi quidem.', '2012-12-20', 1, 484, 'Solomon Islands', '5ApJQzGI3R', '1', NULL, NULL, ''),
(10, 'BEq8AGhGDV', 'Nihil numquam ab repudiandae. Officiis esse tenetur corrupti. Facere velit ducimus recusandae deserunt aliquid. Sit perspiciatis est illum.', '1979-01-07', 0, 296, 'Rwanda', 'XSjLHez2w5', '1', NULL, NULL, ''),
(11, '7pEd2fpXn8', 'Velit in quibusdam et aut repellat et. Natus occaecati voluptatum voluptatem quae id.', '1971-12-09', 4, 186, 'Israel', 'Ev1oWNC9Yc', '1', NULL, NULL, ''),
(12, 'oGuInmOsC8', 'Adipisci dignissimos impedit suscipit eum deserunt et esse natus. Consequuntur enim ut est voluptas. Rerum dolores consequatur accusantium vel neque quibusdam eum.', '1995-03-12', 1, 446, 'China', '8zBNmCH2Y5', '1', NULL, NULL, ''),
(13, 'WJ1igBKMdU', 'Ipsum provident eveniet voluptatum aut rem. Est quasi impedit laborum velit occaecati. Veritatis deserunt necessitatibus laborum dolorem voluptatibus rerum eum. A maiores reiciendis aut.', '2002-04-12', 1, 486, 'Marshall Islands', 'h1eOoFXXKX', '1', NULL, NULL, ''),
(14, 'o5NqfT3G4N', 'Voluptatem dolorem sit voluptas. Distinctio aut corporis cumque laudantium eum iure voluptatibus. Voluptates aut eaque totam rerum vel unde beatae.', '1977-04-11', 5, 130, 'Macedonia', 'IHQq1WyTe2', '1', NULL, NULL, ''),
(15, 'pRgY2E49hr', 'Voluptatem quis atque numquam debitis voluptatem. Eos qui consequatur magni nobis molestias eius. Nam quia voluptas maiores doloribus.', '2000-07-20', 3, 305, 'Turkmenistan', 'dsujslnLZD', '1', NULL, NULL, ''),
(16, '7k3BngKQBU', 'Quia aut aut consequatur quas sint earum. Veniam consectetur architecto laudantium labore voluptatem suscipit officia. Perferendis eligendi atque nisi perspiciatis ut est quibusdam. Consequatur impedit eligendi dicta repellat ut quis.', '1982-01-05', 5, 210, 'Argentina', 'Stku6N0BA5', '1', NULL, NULL, ''),
(17, 'xQUlke0AnY', 'Hic ea laboriosam et quia et ipsa. Aut iste omnis veritatis rem quos impedit vel. Et voluptatem molestiae quis pariatur quas laudantium ipsa.', '1984-02-04', 5, 231, 'Madagascar', 'fhNPqaKgLo', '1', NULL, NULL, ''),
(18, 'UpicoznYm5', 'Dolor nihil nemo ad voluptatibus aut dolor. Reiciendis perspiciatis aut temporibus officia. Dignissimos quia placeat eius aperiam ut totam consequatur.', '2007-10-08', 2, 497, 'Bermuda', 'dR3SbBiC47', '1', NULL, NULL, ''),
(19, 'idrmXhvLn0', 'Voluptates saepe sit nobis sequi. Et architecto aperiam voluptatem facilis est harum. Et qui et rerum a ab tempora. Sit consequatur amet officia laboriosam consequatur consectetur voluptatem suscipit.', '2007-02-01', 4, 203, 'Netherlands Antilles', '9enNCPYbqi', '1', NULL, NULL, ''),
(20, 'QNiCxgdBZB', 'Nam explicabo consequuntur magnam hic mollitia. Architecto quo ea voluptatem. Recusandae sint voluptatem dolorem vitae tempora.', '1970-02-14', 2, 350, 'Tuvalu', '86nohU8Tjc', '1', NULL, NULL, ''),
(21, 'g8EZrgKItU', 'Consequatur incidunt consequatur debitis necessitatibus iste tenetur itaque. Ipsam non ab a qui possimus est placeat vero. Ad neque non blanditiis. Ut odio omnis nihil consequatur impedit ratione.', '1988-09-25', 3, 100, 'Netherlands', 'YLSLgL5tN6', '1', NULL, NULL, ''),
(22, 'VoJmaDRNFU', 'Impedit quaerat repellendus ea molestias sunt molestiae. Minus et quia exercitationem alias sunt animi laborum voluptatibus.', '2006-10-19', 0, 100, 'Italy', '2wQYlDRjEh', '1', NULL, NULL, ''),
(23, 'sPezZ2ezxH', 'Iusto quaerat nihil deleniti eius sit recusandae amet consectetur. Aspernatur dolore officia nihil ducimus et velit quia vero. Alias et aut aliquid qui aut. Consequuntur qui vel vero iure.', '2007-12-19', 5, 211, 'Bulgaria', 'JdJLuM0kAs', '1', NULL, NULL, ''),
(24, 'V2IKqhTsY0', 'Cum molestiae iure quaerat delectus. Nemo minus assumenda sed voluptatem deserunt aut minus. Sunt pariatur delectus perferendis magni sunt est fuga.', '1970-11-08', 4, 281, 'Germany', 'Ftb3oq5CxA', '1', NULL, NULL, ''),
(25, '8enLbVtcsy', 'Qui tenetur quasi a dolores. Voluptates minima quas et voluptatem est aut dolores commodi. Quia harum nesciunt deserunt.', '1980-10-22', 0, 233, 'Iran', 'EBOkgHDxyz', '1', NULL, NULL, ''),
(26, 'kvRoYhZTIH', 'Eligendi tenetur et eaque ipsum aspernatur est cupiditate. Error ut ea doloremque nemo quisquam ipsam. Nulla ea dolores quas nulla architecto officiis.', '2012-09-29', 5, 290, 'Tajikistan', 'tscJDfAY2j', '1', NULL, NULL, ''),
(27, 'NG2zgwZx6D', 'Dolorem voluptates a sed illum magnam doloribus recusandae. Sit ut cumque tenetur recusandae ea iure repudiandae. Libero sint consequatur quae quo facilis commodi veritatis.', '1983-08-09', 3, 275, 'Kenya', 'tebHmdSifr', '1', NULL, NULL, ''),
(28, 'Y7FMF89DZC', 'Sit voluptate quisquam nisi vel fuga. Sed voluptas iure sed iusto eum minima fuga unde. Voluptatem rerum qui illum voluptas.', '1996-02-04', 2, 458, 'Macao', 'Fvj08RYk1s', '1', NULL, NULL, ''),
(29, 'LgDdrnMOwT', 'Natus dolores cumque sed et assumenda commodi. Voluptate omnis officiis placeat cum excepturi qui sed. Est architecto perspiciatis doloribus et molestias hic animi minus. Eius molestiae facere quo ipsam omnis esse debitis delectus. Quibusdam quaerat non enim explicabo totam neque cum.', '1981-10-04', 5, 412, 'Ukraine', 'Ylnrv9kJxv', '1', NULL, NULL, ''),
(30, '2Z6duxskpS', 'Suscipit et totam in et ut. Quis ducimus sit harum voluptas minus. Est quo aliquid eum nobis voluptate.', '1977-06-26', 3, 470, 'Guam', 'NfdkXxgSjZ', '1', NULL, NULL, ''),
(31, 'lQaUvwx8Uo', 'Doloremque et voluptas asperiores. Ut esse nam autem dolorem odio tenetur. Veniam placeat pariatur ad. Illo id dolores eos odit veniam.', '2010-09-03', 4, 193, 'Malta', 'bgu3ntWuq8', '1', NULL, NULL, ''),
(32, 'TK4SSAVajw', 'Fugiat rerum eum vel dolorum. Illum amet velit error aut. Qui aperiam eveniet magnam debitis. Reiciendis repellendus natus cumque corporis aut ut qui.', '1998-11-12', 3, 220, 'Azerbaijan', 'BA4I5qptiM', '1', NULL, NULL, ''),
(33, 'r11VjO93Oj', 'Et minus id tenetur omnis esse tenetur odio. Repellendus rerum sed commodi officia consequatur et nobis et. Dolore explicabo alias aut inventore eos nulla blanditiis.', '1989-03-02', 2, 177, 'Bolivia', 'mIksdh1qQw', '1', NULL, NULL, ''),
(34, 'ADqIGDjmUN', 'Fuga optio velit quia et totam aliquid. Iusto aperiam voluptate ut alias omnis minus neque sapiente.', '2016-04-03', 2, 408, 'Cameroon', 'djbKI3dFCM', '1', NULL, NULL, ''),
(35, 'eceP7rKNvd', 'Et suscipit ut laboriosam assumenda. Sapiente dolore quo non aliquam quas. Laudantium nobis quia aut eaque.', '2011-07-18', 2, 254, 'Bermuda', 'Cq7AH9PIqN', '1', NULL, NULL, ''),
(36, 'jhCAJSZpUh', 'Sed harum quae qui. Dolor ut qui ipsam deleniti.', '1987-10-22', 5, 294, 'Rwanda', 'PmfLu0pX0a', '1', NULL, NULL, ''),
(37, 'maG4u4mraz', 'In doloremque accusamus voluptate quaerat. Maxime iste et pariatur qui dolore sequi. Quis praesentium fugit impedit inventore. Quae possimus fugiat rem tenetur odit cum necessitatibus.', '1973-10-10', 1, 225, 'Cambodia', 'eglF6q4l21', '1', NULL, NULL, ''),
(38, 'UNznJxbhSu', 'Aliquid architecto veritatis sit quasi fugiat fuga laudantium. Rem sint recusandae maiores non labore. Consequatur explicabo neque ea.', '2012-11-08', 3, 423, 'Uzbekistan', '5VPwIYoG0g', '1', NULL, NULL, ''),
(39, 'AejUgRZjZu', 'Architecto aut qui et et. Iusto deserunt iste rerum harum reprehenderit at expedita. Asperiores ex dolorem aut non est ut. Alias modi aliquam quia qui magnam illo a voluptas.', '2017-04-12', 3, 449, 'Guinea-Bissau', 'chg1IISqRi', '1', NULL, NULL, ''),
(40, 'njIHcdbikK', 'Recusandae debitis eius ea occaecati voluptas. Tempora sunt officia in rerum dolor fugit. Voluptatum iusto itaque et quis praesentium est velit.', '2015-11-22', 4, 340, 'Zimbabwe', 'xAOPSRu45h', '1', NULL, NULL, ''),
(41, 'IujOoSaPab', 'Sint possimus labore illo corporis sunt. Aut molestias eum assumenda. Voluptatibus animi dolorum et nulla itaque. Accusamus omnis necessitatibus minima ipsam eum.', '2003-09-15', 5, 354, 'Finland', 'ZYM63HUu4m', '1', NULL, NULL, ''),
(42, 'QRPR9zFAYi', 'Tempore quis repellat modi laudantium saepe sed. Ipsam impedit consequatur id et dolorum assumenda. Aut aliquam aut voluptatem et et. Totam illum pariatur incidunt occaecati quia possimus.', '2016-11-01', 3, 193, 'Nigeria', 'ky73SbcSGu', '1', NULL, NULL, ''),
(43, '8NP7ocfY4Q', 'Aut sed voluptatem quasi maiores vitae ut. Quo magnam odio ut placeat architecto aliquid ea.', '2009-09-26', 5, 380, 'Comoros', 'A7mnanLBzU', '1', NULL, NULL, ''),
(44, 'UkRzNC4sVX', 'Aut officiis harum optio. Magni voluptatum quae aliquam ducimus incidunt. Voluptatem dolorum non et hic qui quo. Explicabo perferendis incidunt ipsam iste.', '2012-06-15', 1, 319, 'Slovakia (Slovak Republic)', 'Q7tFJTIo55', '1', NULL, NULL, ''),
(45, 'QuW5Hvbp2f', 'Temporibus eaque quam veniam voluptas voluptatem exercitationem ex vero. Ut sit quaerat hic nisi pariatur totam eaque. Quia asperiores aliquam aut nemo.', '2006-01-05', 2, 397, 'Cameroon', '0CHpS0ufG9', '1', NULL, NULL, ''),
(46, 'Kttf4Hjeja', 'Sunt non magni nostrum praesentium sit ut. Sint dolorum commodi quia provident ducimus saepe. Autem consequatur et harum sit impedit rerum non. Quis voluptas placeat quis sint odit est aut.', '1999-12-21', 4, 217, 'Palestinian Territories', 'n5bFHdJa0C', '1', NULL, NULL, ''),
(47, 'SWWAnbWA5s', 'Mollitia rerum reprehenderit necessitatibus veritatis voluptatum. Animi perspiciatis laborum deserunt et necessitatibus ut facilis. Cupiditate quas officiis exercitationem fuga quaerat a. Vitae aliquam maxime aliquam laboriosam animi.', '1990-11-13', 4, 394, 'Kiribati', 'YwkMVg3q0A', '1', NULL, NULL, ''),
(48, 'aM5Aw8GPIj', 'Quibusdam facilis nostrum quia provident. Consequatur eligendi consequuntur est ratione ipsam. Culpa culpa aut quia vero qui corporis quam. Quia atque iusto eius sequi quo vel.', '1980-08-09', 1, 250, 'Cayman Islands', 'zaQPxFkzW4', '1', NULL, NULL, ''),
(49, '4IL8Qx31Zj', 'Eos quam velit alias unde tenetur sit qui. Enim voluptas et nemo a consequatur quis ut. Nobis vitae voluptates quia non corporis aperiam pariatur. Hic mollitia dolores non velit neque molestiae architecto.', '1982-01-26', 0, 140, 'Uruguay', 'sunTVnF2ym', '1', NULL, NULL, ''),
(50, '2luzzq9XGw', 'Et vero praesentium in consequatur. Quia esse illo explicabo velit sit quia id. Aut ducimus perspiciatis quidem nisi placeat. Occaecati autem voluptatem accusamus culpa.', '1983-01-28', 2, 463, 'Cote d\'Ivoire', 'kP2Doxohkl', '1', NULL, NULL, ''),
(51, 'AVGYcalqLu', 'Quod qui quia quo dolor velit vel eligendi dolor. Unde et cum eos incidunt vero corporis sit. Animi aliquid libero excepturi quo nisi rerum.', '1977-07-14', 5, 363, 'Iceland', 'TtzV0krjWj', '1', NULL, NULL, ''),
(52, 'kg8yiFwBji', 'Iusto debitis in amet eveniet architecto qui. Sint non et eligendi rem. Repellat voluptatem vitae in at eligendi. Magnam mollitia reiciendis rem.', '1997-06-20', 2, 325, 'Hong Kong', '8DNnsrkP9z', '1', NULL, NULL, ''),
(53, 'oP7eipYbZN', 'Ab incidunt unde in id iste vero. Eaque quis exercitationem voluptate quidem. Ut explicabo aliquid assumenda quo debitis nemo.', '2015-11-27', 4, 490, 'Cayman Islands', '6jTDgiBCSJ', '1', NULL, NULL, ''),
(54, '5OKaTsOOSm', 'Deserunt voluptas sit ea voluptatem non veniam id cupiditate. Dolor ipsa nulla quae quia quam aperiam aut. Placeat soluta earum tenetur itaque architecto non. Dolorum tempore consequatur impedit ex aut ullam.', '1990-05-31', 3, 170, 'Iran', 'pa2EQvPC7s', '1', NULL, NULL, ''),
(55, 'Drh8AjIKrt', 'Sint est odio quaerat. Reprehenderit voluptatum qui autem nisi repudiandae inventore. Beatae quia ut delectus sint.', '1981-10-30', 2, 487, 'Georgia', 'acxE84FeSP', '1', NULL, NULL, ''),
(56, 'HWnqX6o578', 'Nulla labore enim ad quos consequatur. Harum nobis ut officiis totam sed vel.', '1997-05-13', 0, 177, 'Oman', '1jlXXFectK', '1', NULL, NULL, ''),
(57, 'Yq1PXQs48u', 'Voluptatem qui possimus ea ea ea ad est. Ut quaerat enim nobis dolor nemo perferendis. Quia architecto cumque ab ut.', '1985-12-27', 3, 296, 'Sri Lanka', 'RQoahi1sDq', '1', NULL, NULL, ''),
(58, 'DLvT6xD44G', 'Voluptas doloremque earum omnis occaecati praesentium. Alias consequuntur et modi nihil et expedita. Quod qui dolores iste dolores tempore.', '1988-12-27', 1, 226, 'New Caledonia', 'kGDUloiZeC', '1', NULL, NULL, ''),
(59, 'KuLc4m8xoi', 'Dolor tenetur consectetur similique et soluta et. Cupiditate doloremque et laudantium recusandae aut. At aut pariatur atque non aliquam quia.', '2006-05-22', 5, 146, 'Jordan', 'OlJXS2eBpC', '1', NULL, NULL, ''),
(60, 'UUDSJ9GLNQ', 'Non itaque sed molestiae voluptatem facilis molestias. Iure itaque dolor veritatis praesentium. Quas voluptatem dolores delectus quae veritatis excepturi voluptas quia. Error soluta quis est reiciendis consequatur dolorem libero. Corrupti earum molestiae repellat.', '1971-11-13', 2, 422, 'Barbados', 'cSbAWAD0VM', '1', NULL, NULL, ''),
(61, 'dYd6xtWMLX', 'Sunt quasi culpa voluptatem aut voluptatem veniam enim in. Debitis amet consequatur odit ratione. Tempore sapiente et omnis qui aut.', '2017-05-04', 2, 245, 'Argentina', 'FEDwv346ne', '1', NULL, NULL, ''),
(62, 'qtRAsh7ZQG', 'Quod corrupti non ut assumenda in distinctio. Sint consequatur autem omnis ipsam aut. Similique rerum non ut tenetur perspiciatis consequatur autem est. Quisquam nobis vel voluptatem rerum. Numquam fuga ipsum nihil aut.', '1980-10-05', 0, 132, 'Wallis and Futuna', 'iMnVNOUgmp', '1', NULL, NULL, ''),
(63, 'ML7DCxEBhA', 'Ullam porro earum culpa facilis laudantium ut optio quia. Architecto dolorum eos nulla corporis. Voluptatem est ut tempore enim voluptas expedita soluta. Veniam commodi quae omnis magni labore sit voluptatum asperiores.', '1972-11-01', 2, 435, 'Barbados', 'rTaYdJp3G1', '1', NULL, NULL, ''),
(64, '00nz9Y6bbB', 'Sequi non aut ea. Facere odio vero eos voluptas. Et ut corrupti saepe et voluptatem hic sapiente. Beatae iste voluptatem optio perspiciatis dignissimos nisi ut.', '1987-12-26', 2, 424, 'Uganda', 'N4eV1X7xlZ', '1', NULL, NULL, ''),
(65, 'iWr2lRlpwo', 'Reprehenderit soluta rerum nostrum corrupti nemo. Eligendi fuga laborum ad ut dignissimos et. Est ut voluptatibus aperiam voluptas.', '1977-03-08', 3, 470, 'Slovenia', 'qlpVjtxppJ', '1', NULL, NULL, ''),
(66, 'AsXdkWEsXU', 'Facilis nam ex vel error et dolor officiis odit. Quasi modi a nemo. Aut facilis voluptatem sint voluptas nam. Consequatur unde aut neque ut nihil eum corporis.', '2009-07-18', 2, 378, 'Spain', 'K80sy1HaQn', '1', NULL, NULL, ''),
(67, 'btAb44toju', 'Cum quod inventore nostrum et quis est ut. Architecto veniam et tempore non sed. Eum omnis et velit sunt consequatur vitae enim. Unde non eius mollitia quis unde.', '1999-01-18', 1, 239, 'Chad', 'Ct7Gf2MeVP', '1', NULL, NULL, ''),
(68, 'hQB1cDTtlh', 'Voluptatem rerum ut temporibus non. Deleniti minus voluptas ipsa non dolore ab. Et repellat numquam minima dolorem in assumenda officiis quibusdam. Ducimus numquam ipsam distinctio in nobis.', '1979-07-17', 2, 418, 'Mozambique', 'fEmekLxr5O', '1', NULL, NULL, ''),
(69, 'WKetiQ6yvB', 'Aliquam maiores architecto quisquam cupiditate atque vel et dolorem. Omnis aperiam nihil quia vitae et suscipit vitae. Magni voluptatem voluptatem non quod nihil.', '2005-09-12', 3, 459, 'Aruba', '2ytg7FAvTd', '1', NULL, NULL, ''),
(70, 'OJShWA9JGR', 'Harum praesentium modi voluptatibus et quos qui magni. Doloribus ut perspiciatis sed molestias et. Deleniti quia adipisci consequatur ad omnis. Officiis quo voluptas necessitatibus esse sit animi. Consequatur id recusandae asperiores omnis.', '1992-10-03', 5, 390, 'Mongolia', '0UzFFfgnMK', '1', NULL, NULL, ''),
(71, 'G0vAr4C5ik', 'Consequuntur et ab fuga. Et sed necessitatibus ad velit porro voluptas. Ea blanditiis repudiandae sequi et. Qui consequatur est inventore quae dicta.', '2001-03-27', 2, 386, 'American Samoa', 'G0vwCWynBy', '1', NULL, NULL, ''),
(72, 'lt0Bpbp61t', 'Hic iste ipsum dignissimos dolores quia deserunt. Suscipit et quod enim deserunt molestiae aspernatur dolor. Similique impedit repudiandae dolorem. Sapiente necessitatibus accusantium quae velit.', '1993-12-14', 4, 259, 'Puerto Rico', 'V8daPhQlz6', '1', NULL, NULL, ''),
(73, 's0FzlBxckT', 'Ut at magni et ipsum non. Atque in dignissimos exercitationem vel. Voluptatem sint minus deleniti omnis impedit et aliquam.', '1990-10-05', 5, 437, 'Cambodia', 'jh8ruKYnQ0', '1', NULL, NULL, ''),
(74, 'lStLBOTUZF', 'Nesciunt distinctio accusantium non porro illo vel sed. Consectetur quas enim id ut rerum assumenda adipisci. Vel unde voluptates necessitatibus facere velit.', '1986-10-07', 0, 323, 'San Marino', 'VSKFb21Nsz', '1', NULL, NULL, ''),
(75, '3LjraK85hO', 'Voluptas rerum odit enim laborum voluptatum consequatur at autem. Voluptatum sint dolores deserunt aliquam numquam ut.', '1993-08-21', 1, 444, 'Venezuela', 'I1zhZWJr53', '1', NULL, NULL, ''),
(76, 'ACvoiiwErk', 'Sit libero modi et. Blanditiis ullam aut dolore iure magnam voluptatum ducimus. Quo porro culpa neque ut adipisci.', '1982-12-07', 1, 427, 'Korea', '0fZ2oYdYAb', '1', NULL, NULL, ''),
(77, 'q9fjQjjQfO', 'Impedit similique et recusandae delectus rerum est. Velit ut ipsam aut laudantium deleniti ut molestiae. Perspiciatis cum aut voluptatem animi aut sapiente eaque. Eos quia qui unde sed amet.', '1971-03-07', 3, 210, 'Bahrain', '8DF1OnHKQ3', '1', NULL, NULL, ''),
(78, 'KvxnXthhO5', 'Optio corporis aut asperiores rem earum tempore a. Quis dicta minima id architecto velit. Amet est qui non iure culpa eum. Voluptatem et nesciunt totam sapiente sit. Esse laboriosam aut corrupti architecto.', '2013-01-26', 4, 194, 'Bermuda', '4lVhG1f5QE', '1', NULL, NULL, ''),
(79, 'By7nHpWPW2', 'Officia ut et et magnam eum numquam. Ut ea et nemo dolorum esse. Et blanditiis ea qui et nulla minus nesciunt. Voluptatem ipsum repellendus rerum eligendi harum voluptatibus non.', '1985-04-15', 3, 200, 'Netherlands', '72l6UisHhJ', '1', NULL, NULL, ''),
(80, 'V78gRyboNa', 'Dolorem beatae consequatur quia eum. Ut molestiae nam culpa inventore laborum et. Labore et nihil amet sed fugit aut molestiae adipisci.', '1997-02-06', 0, 339, 'Jamaica', 'M7eV9hnLxr', '1', NULL, NULL, ''),
(81, 'guq2fu1s8v', 'Eveniet dolorem et aut harum et. Qui quas autem odit et rerum temporibus et. Repudiandae dicta laborum aut ipsa harum iusto optio.', '2007-06-28', 4, 480, 'Saudi Arabia', 'siJDB9Aq83', '1', NULL, NULL, ''),
(82, 'hwMaleFqDy', 'Doloribus ad et fugiat expedita voluptatem. Libero vero sequi totam mollitia corrupti enim omnis quidem.', '2009-07-17', 3, 172, 'Pitcairn Islands', 'IViuNhB6BN', '1', NULL, NULL, ''),
(83, 'lHvl9tPovm', 'Error assumenda ipsum id tempore odit unde id cumque. Ut officiis architecto expedita hic nam debitis.', '1997-05-08', 2, 424, 'Holy See (Vatican City State)', 'RakvdGQ18B', '1', NULL, NULL, ''),
(84, 'wWwztNbyB5', 'Blanditiis debitis accusantium voluptatem in. Voluptatibus alias perferendis ut et explicabo. Iure voluptatibus aut veritatis consequatur. Alias eveniet dolorem magnam voluptatibus.', '2016-04-21', 2, 247, 'New Zealand', 'NESmL6eATp', '1', NULL, NULL, ''),
(85, '52IhzLiGgv', 'Labore vel provident sed dolores repellendus. Aliquid voluptate ipsam temporibus. Necessitatibus est sint expedita illo cupiditate eius ut.', '1979-10-27', 4, 480, 'Austria', '9St4PMXzRt', '1', NULL, NULL, ''),
(86, 'DE5qylcQzs', 'Culpa tempora pariatur officiis vitae. Commodi necessitatibus corporis dolor autem aliquid. In vel qui sunt perspiciatis unde magnam quibusdam. Dolores ut enim rem.', '1971-02-03', 3, 319, 'Saint Lucia', 'I90aQGXkjp', '1', NULL, NULL, ''),
(87, 'fdt6wSNuai', 'Voluptas magnam alias corrupti et quam ut nisi. Consequatur hic recusandae aut iste ut.', '1970-09-26', 5, 371, 'Kiribati', 'I77q2VggZA', '1', NULL, NULL, ''),
(88, 'dSzXcMPaTJ', 'Ut repellat saepe fugit dolor est consectetur. Ad ab mollitia eos molestias sapiente voluptate rerum. Dicta non deserunt ratione optio voluptate modi voluptas. Quod laudantium est quam culpa eos perferendis omnis.', '2005-09-23', 1, 280, 'Yemen', 'pLZDwwc5Cd', '1', NULL, NULL, ''),
(89, 'BKaeF8H0nJ', 'Illo ad delectus sit voluptatem enim. Dolor incidunt nemo facilis voluptatem. Et expedita earum esse pariatur. Qui unde soluta est possimus nihil officia doloribus.', '1984-09-26', 2, 488, 'Cayman Islands', 'hJQ2lHuifG', '1', NULL, NULL, ''),
(90, 'dX1i3DLqaR', 'Ut optio quo autem ut qui occaecati. Qui minus non dolor dolorum rerum. Sit atque velit quis tempora et omnis nemo iure.', '2013-11-19', 4, 375, 'Libyan Arab Jamahiriya', 'DZXp0FNuNY', '1', NULL, NULL, ''),
(91, 'whwCaWUt6D', 'Inventore eos at nulla molestiae ut facere. Similique et voluptates sed temporibus. Est totam soluta aut voluptatem ex saepe doloremque. In et voluptatem magnam quo repellat.', '1972-02-02', 4, 167, 'Uganda', 'TtHR4q57pi', '1', NULL, NULL, ''),
(92, 't98KgKaHQw', 'Voluptatem quasi facere laborum aspernatur illum impedit ut dolorem. Iusto minus asperiores suscipit ipsam. Omnis nemo est magni temporibus. Atque qui qui quasi accusantium ullam facilis. Nam animi expedita qui provident odio.', '1977-09-21', 2, 318, 'Benin', 'klz5KyeoEG', '1', NULL, NULL, ''),
(93, 'lRwljlPXI8', 'Et dolore et qui enim. Ab dolorum et quam omnis est.', '1995-03-04', 1, 143, 'United Arab Emirates', 'ucQQ4PxyE9', '1', NULL, NULL, ''),
(94, 'kqKFHhgeUj', 'Enim est numquam ut laborum. Maiores ut cumque aliquam qui rerum autem perferendis. Placeat odio illum illum quis recusandae quam. Non sunt non et.', '1984-07-27', 1, 422, 'Malta', 'zfKVTV2g5L', '1', NULL, NULL, ''),
(95, 'fNdBbzZGsV', 'Pariatur soluta iure sapiente quis voluptas. Laboriosam consequatur necessitatibus voluptate similique. Ullam voluptas eveniet tempora ut quis.', '1973-01-22', 5, 398, 'Croatia', 'AlRvXoEQ6V', '1', NULL, NULL, ''),
(96, 'AUwPWq93a3', 'Ullam laborum beatae ullam rerum earum aperiam. Et aperiam non mollitia qui. Asperiores incidunt non et nam sed sed. Minima consequatur ut nemo ipsum nisi quas.', '1971-05-29', 2, 287, 'Libyan Arab Jamahiriya', 'MZbh00fw1S', '1', NULL, NULL, ''),
(97, 'cwJzo3mBuq', 'Qui nam illum et praesentium beatae ea. Sequi sapiente eaque labore exercitationem et.', '1987-11-12', 2, 374, 'Christmas Island', '0V4XfAT6Du', '1', NULL, NULL, ''),
(98, 'lcellwpVsm', 'Possimus est in mollitia earum. Voluptatem ex ipsum ut. Non sit quae ut eveniet voluptatem vel et. Ab quia fugiat et rem libero magni.', '2010-11-05', 3, 290, 'Kazakhstan', 'Vpl5tQ5mwT', '1', NULL, NULL, ''),
(99, 'Xf8PBVymO8', 'Quis nam fuga debitis iusto. Aut dolor quo impedit fugiat amet provident. Nesciunt veniam odio excepturi possimus beatae repellendus nemo. Placeat omnis qui a dolores ut ad quam itaque.', '2012-09-28', 0, 247, 'Guernsey', '4Srm9puHiq', '1', NULL, NULL, ''),
(100, 'vutgsEh1MQ', 'Sit unde qui voluptatibus sed excepturi sunt. Architecto earum maxime rerum alias vitae explicabo pariatur. Quis aut quidem laborum.', '1990-07-30', 4, 428, 'Cayman Islands', 'MBuqMUTfFP', '1', NULL, NULL, ''),
(101, 'svwn3Kau2U', 'Sed sunt perspiciatis et iste a saepe. Sit id aspernatur eos quia nisi eum in. Accusantium dolor quia accusantium voluptas sed delectus.', '1975-05-18', 1, 325, 'Wallis and Futuna', '6zQTzPAqXA', '1', NULL, NULL, ''),
(102, 'MIZlRvNCrR', 'Praesentium at rerum consectetur inventore facere. Quia quibusdam aut veritatis. Qui ipsum a porro molestiae ut. Accusamus quia est quas dolores sit officia est.', '1998-10-28', 4, 226, 'Turkmenistan', 'freChXRGKY', '1', NULL, NULL, ''),
(103, 'heqPCd5Rxn', 'Consequatur id occaecati quidem libero. Et pariatur et pariatur aut. Expedita qui et possimus cumque deleniti praesentium nihil temporibus. Velit explicabo voluptatum animi ut at dolor tenetur.', '1998-06-24', 1, 496, 'Liberia', 'X0ToQ9mH11', '1', NULL, NULL, ''),
(104, 'Asd', 'asd', '2018-09-22', 3, 200, 'Pakistan', 'asd', '1', NULL, NULL, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_19_070315_create_films_table', 1),
(4, '2018_09_19_151031_add_slug_column_to_films_table', 2),
(5, '2018_09_20_124524_create_comments_table', 3),
(6, '2018_09_20_125050_create_comments_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ali Haider', 'super@admin.com', NULL, '$2y$10$ZjwcRbMAIskht7h7ICfH8e7CKPnkFa5XUoDyZzpNd9LQfdzMmd07W', 'O4YQzpiTHz2vQburMu0372N6GMQIoMZGFRDz1VpPd4qW3gX93GZvAz5MIZf8', NULL, NULL),
(3, 'Ali Haider', 'so@as.com', NULL, '$2y$10$7ltdK9uZB0UUKJViuhsV2eGRgfq8WhHoB2/L6NSb3Z6BORxyDYA/W', NULL, NULL, NULL),
(4, 'Ali Khan', 'ak@gm.com', NULL, '$2y$10$8WmuRjUyJ1Et0vRNPxlYKuhn7pNBoVdSqQBojryeFAZGKUbxylw0q', NULL, NULL, NULL),
(5, 'Jerald Harber III', 'lwalker@hotmail.com', NULL, '$2y$10$dwg.TVUZc5UCN0QO/8h1w.N.z7mPZMTgsrH52RC5SqSslWxEEZlea', NULL, NULL, NULL),
(6, 'Josephine Kuvalis', 'franecki.jabari@hotmail.com', NULL, '$2y$10$jrHgGwBQom/Tzheibw6iNeG7ZaHYt0J0nrpFVfWkfXQqLjyGjQlnq', NULL, NULL, NULL),
(7, 'Teagan Renner DVM', 'fkrajcik@adams.com', NULL, '$2y$10$cFBSmOc52BaBXUDRrvyLJ.f0afVSaFodk06OH8WoPXCVsBfTuhy7m', NULL, NULL, NULL),
(8, 'Noemi Torphy', 'dstroman@gmail.com', NULL, '$2y$10$V7CEXoLdRkrIhOdjf.WvL.IThfq9u/N4rMk1LNJXMv8yHjY/HLUXO', NULL, NULL, NULL),
(9, 'Omari Hodkiewicz DDS', 'quitzon.roel@yahoo.com', NULL, '$2y$10$0pn/FXjXVWAbjadz2jPICeXPfDSW0xcEeRwfs294aonE1kmgOUTx2', NULL, NULL, NULL),
(10, 'Dr. Jeff Bogisich I', 'bkessler@yahoo.com', NULL, '$2y$10$ha5v1CSuF8OCKXkqlbWdWuANOYfCNQfpKPovwDz5KhRMQK2GlVujS', NULL, NULL, NULL),
(11, 'Antwon Rolfson II', 'laverna.weimann@gmail.com', NULL, '$2y$10$mpStmMYiIlnI2jKGMD366OeEGYijY16aVYbiH9FIZFwXILNUpOIJa', NULL, NULL, NULL),
(12, 'Ms. Nettie Murazik DDS', 'delta89@ernser.com', NULL, '$2y$10$E6LPhfqH1deEp/XORO4Ec.cEvFs9NbtzjsW3D5uKzFcIZxKJsa7j2', 'Sr0w7UuPBB3ZAkxV2OYm59lL1k6HErwkN4zNTPxdZSOahH0USFvcrJzFCqzt', NULL, NULL),
(13, 'Elroy Harvey V', 'blanda.felicita@heidenreich.com', NULL, '$2y$10$djs7hMiqaHZjiBKH/seSY.plX.kMmAxf4s4y/LRLW9XqyrIXXQ0jS', NULL, NULL, NULL),
(14, 'Mr. Lenny Oberbrunner PhD', 'parker.hermiston@hotmail.com', NULL, '$2y$10$DR4meSjLbjTQSBroUsZ6xOUaCuQamWZ0.8WN.SLnLxBWbPJZ/mwzS', NULL, NULL, NULL),
(15, 'Tamara Monahan', 'hegmann.otto@daugherty.com', NULL, '$2y$10$cR.v1z9NvxjYPUHIVa3FOulFbBy8EIe8GkzG18j12SJ55swLgrr2a', NULL, NULL, NULL),
(16, 'Oleta Crooks', 'lowell09@herzog.com', NULL, '$2y$10$2TOH5/QogqbnYyR.wYa7O.9Oersi.uDWqwyAZljmuywEVoFRyhmam', NULL, NULL, NULL),
(17, 'Hermina Ondricka', 'zlowe@ryan.com', NULL, '$2y$10$JM4vEGfFgSLoFPt7IQw9oOckpP2oNpkfIFvdNYytnB/W4GpZATAra', NULL, NULL, NULL),
(18, 'Chanelle Koelpin I', 'gaylord53@lemke.com', NULL, '$2y$10$Mq5yqx0CcAZXHM.43QLf7./WtkySukKmjrCz/XKB13j9BIxVlAGSu', NULL, NULL, NULL),
(19, 'Mr. Armando Ebert DVM', 'veum.rahul@hodkiewicz.org', NULL, '$2y$10$DX6rqzKw8XTNRYh4ALRBae97XWjun6qLyJbpb71TRrBIODqRnpnDO', NULL, NULL, NULL),
(20, 'Gilbert Bashirian DDS', 'janessa47@hotmail.com', NULL, '$2y$10$GZnMNVL9DfSKaa8ItPwtVOn2MdhbwLeufqpgN0mADj1cLlS1TMAwa', NULL, NULL, NULL),
(21, 'Erick Kerluke Jr.', 'jwisozk@kub.com', NULL, '$2y$10$tc0fJhQqv9zxcvvP3hnxkehl2/1qFg6cgIvacllaHXtHu1iNmq8AW', NULL, NULL, NULL),
(22, 'Dayne Cremin', 'thamill@hotmail.com', NULL, '$2y$10$6zaZYk3LSTl684VkhTExRuP/Xpu1q8FFkg4Q6qAfOCzNOUycs/A.a', NULL, NULL, NULL),
(23, 'Noemi Crooks', 'tkulas@mohr.com', NULL, '$2y$10$2MagFuQm1K.vKzj5vG1pmuzk2qAIfAYN2oxUApdfonmcg8ajf3.X2', NULL, NULL, NULL),
(24, 'Sadie O\'Reilly', 'bobby.gislason@hotmail.com', NULL, '$2y$10$R1eHe2Zcn6mqGtH5en2t/ObWOaycuY3WwpfEPRoYISYMzgefVjrbi', NULL, NULL, NULL),
(25, 'Miss Rahsaan Turner IV', 'crona.laurence@volkman.com', NULL, '$2y$10$4DNIPGJF39lk51puuKv5R.iCNNr7QzI/PrteA2qoj577xjakBPUEu', NULL, NULL, NULL),
(26, 'Candido Schuppe', 'olaf.haag@satterfield.com', NULL, '$2y$10$FDx0aR3jVw4ZOaOZ/grsMuXhOUPfuy0q4erM.mF/JNa6QcRCxKoSC', NULL, NULL, NULL),
(27, 'Earl Wiza I', 'halvorson.marta@gmail.com', NULL, '$2y$10$W0K1yfJcPJ8ubPav9z8kD.02S/Jil/a.vnbOtDRdnZmBRIlUkvZMy', NULL, NULL, NULL),
(28, 'Prof. Gloria Jakubowski', 'kamille.ryan@hotmail.com', NULL, '$2y$10$4uBpvmgqjMrCCWSwXSZ64er4rPARv3Kn4smUQ.mGuYQ0C9hp54b1.', NULL, NULL, NULL),
(29, 'Vincent Quitzon', 'rollin.wehner@yahoo.com', NULL, '$2y$10$75.saiLvxxTlyxxAfvY/B.k3Dsq7A8ecSfoLAsYpwlN08QYR4SiPy', NULL, NULL, NULL),
(30, 'Devonte Klocko', 'alene72@hotmail.com', NULL, '$2y$10$Nkb24MQsSHh61.kOl6Fxv.zXr742uT6q.GfTvu8qRilv0w.FFwkcO', NULL, NULL, NULL),
(31, 'Gillian Ullrich', 'melisa.kris@yahoo.com', NULL, '$2y$10$9YEtjDou5kFmiMWF2sz5mOFR1s9/I0NfuYf1M07MYRBC3GkcqrlgK', NULL, NULL, NULL),
(32, 'Americo Bernhard', 'vmayer@rohan.com', NULL, '$2y$10$CMA7yfhCQGTam.6.qXQV9eisF8I4PVC2IQfUQQ1yTI2dF4iyAaUq.', NULL, NULL, NULL),
(33, 'Danielle Nolan V', 'bednar.gust@hotmail.com', NULL, '$2y$10$ZsuiUqLut17txDttG7xdxew7uLpZ/jAEtfB4lPM5yMkkYd7mYXKfO', NULL, NULL, NULL),
(34, 'Darwin Gislason Jr.', 'payton.mante@gmail.com', NULL, '$2y$10$N9j7VceAUX6zoP2qbDXGwe6PLuOYISyUF9m05wWW4fwJ3c13iIYjW', NULL, NULL, NULL),
(35, 'Sigmund Dach', 'wilfred.farrell@hotmail.com', NULL, '$2y$10$kAhQdNgYEbwwS0PzDG/xfOru9WbN9mBOFXhiVv0BJ4NG/pqhVVYiC', NULL, NULL, NULL),
(36, 'Aracely Walter', 'eric14@yahoo.com', NULL, '$2y$10$5a61ZIkC70/wU62UrB7QweY3fC5C0Jnlv/0H2N.ZgFYbeYbjgkfDS', NULL, NULL, NULL),
(37, 'Sebastian Muller V', 'yweber@schmitt.com', NULL, '$2y$10$/1z6frUuMXDHB4VxrC9Y8.JXS2h7mZujuJzvNYro0Fz9HrAHl0aMK', NULL, NULL, NULL),
(38, 'Humberto D\'Amore', 'christop15@gmail.com', NULL, '$2y$10$wn427G.Mi/wo7zms1l376ueMqEz53Ynp6CnqeNwD.CSqrEAv1SCeC', NULL, NULL, NULL),
(39, 'Ms. Camilla Braun', 'skiles.elton@gmail.com', NULL, '$2y$10$SPp4k40ICZBOyJmMSrbkDe47lLSBrvfmjwvAagp/IdpByUU5VSlR6', NULL, NULL, NULL),
(40, 'Daisy Osinski', 'fhegmann@schaden.biz', NULL, '$2y$10$VIVPsM8k1gHt3cy5n9nz6eq6ecpzgpmsO2/ze/nblzPSheQxpjFXS', NULL, NULL, NULL),
(41, 'Otha Stracke IV', 'roberts.sonya@yahoo.com', NULL, '$2y$10$xrBmWwMW9k0b6xFoS9rX4uWoQM8Su70V4THc8btrtE7Kgnd4xvJAi', NULL, NULL, NULL),
(42, 'Mrs. Jacky Hirthe', 'johnathon.luettgen@hotmail.com', NULL, '$2y$10$NLox1GnSiG.xsS9EI5kbY.D0LXDFbrs2UUNPA7VNvNCFq1TjoZHiS', NULL, NULL, NULL),
(43, 'Ellen Bayer', 'qbuckridge@gmail.com', NULL, '$2y$10$yGH7WlDwr8IDlVQfR3a6.uIe6KTwTxnzUupaoDKilIxgs/ZTqb3qu', NULL, NULL, NULL),
(44, 'Augustus Wolf', 'luettgen.fredrick@hotmail.com', NULL, '$2y$10$iRtLYfbM1x7fJxDjbHevEOhGoydmdedpSmipDe7T63atjK1fwaZJy', NULL, NULL, NULL),
(45, 'Mozelle Wuckert', 'hahn.stone@yahoo.com', NULL, '$2y$10$LU6Yjy2Q9c6hpXy90B/y1.nch1920cu/nisOb4Ily7XC88p0mAoTy', NULL, NULL, NULL),
(46, 'Florence Keeling III', 'ilueilwitz@yahoo.com', NULL, '$2y$10$YF91IopQKUCCwjGOK.P87eCC8bduCHcyyk6poTV5SKeA/656eg5sG', NULL, NULL, NULL),
(47, 'Sonny Schoen', 'maximillia.volkman@hotmail.com', NULL, '$2y$10$cIKvsL0YtBbm9LQdZhlf.OJ7JVUsXBIOKsW9hyZoP1EyKQaqN14yS', NULL, NULL, NULL),
(48, 'Clementina Paucek', 'fritsch.braulio@gmail.com', NULL, '$2y$10$DfTz6Sxhe/2AvRodRh2uyeCeZc7JsRxYelHESMEdZv8QkNAMsz1jO', NULL, NULL, NULL),
(49, 'Ms. Letha Herzog V', 'schroeder.maegan@dubuque.biz', NULL, '$2y$10$maVFKPJf2.BaptN5hTY7herqkMZ39hO1Ta1PeemuHwut3vQqfRxPW', NULL, NULL, NULL),
(50, 'Alysa Schuster', 'holden.hoppe@yahoo.com', NULL, '$2y$10$ybYgKTTLBr7dJbfaDumzHuCJ486Y21K5ibmCA.SsN0CpBmNvjSSem', NULL, NULL, NULL),
(51, 'Mr. Melany Herman', 'brennon76@daniel.net', NULL, '$2y$10$tI.ezImWmDlq9UYvAffUQOcf2R8X8Y0gH5lue3iGSsnXrEITX8K1u', NULL, NULL, NULL),
(52, 'Calista Wolf MD', 'xjakubowski@cartwright.org', NULL, '$2y$10$DK3SqAePv8utgpMnF3NPTOpk3Y/mwFv3xcoUfcZrSj2FUJuTRVqfe', NULL, NULL, NULL),
(53, 'Alexanne Gerhold', 'heidi59@yahoo.com', NULL, '$2y$10$Qq7G0NsjGjb.EJxOIUbk/.//F7OSPt/sQmxPsAnewmjjVuAhZHOeS', NULL, NULL, NULL),
(54, 'Katarina Waters', 'napoleon82@barton.com', NULL, '$2y$10$FQ9wH1qEgeNMTKLqK2dOJemaQAapNO1tYdIIHS0Yq2iLVTbJvD2gS', NULL, NULL, NULL),
(55, 'Julianne Hessel', 'mante.camron@hotmail.com', NULL, '$2y$10$qVYRTXEoxHJuIEt9cuPHyuZQ2aQqB0HhV6tRsxOftcff0n3qpMMqO', NULL, NULL, NULL),
(56, 'Joesph Borer', 'hahn.andreanne@gmail.com', NULL, '$2y$10$ThzZvY7XkcVlr/h4nHK2zeOSXSdOzMDFqCPQrG0h7cdRO2LHqxvoi', NULL, NULL, NULL),
(57, 'Jamarcus Rogahn', 'cornelius.cassin@yahoo.com', NULL, '$2y$10$3tLhft5nTKcGdoozcx4HyOI3nrR7KWrzDxIHgIsa9OEaiB7iUTq1K', NULL, NULL, NULL),
(58, 'Daphne Nicolas', 'yankunding@gmail.com', NULL, '$2y$10$wRFhhET5ll6Ei0Cego7hEurk2r1Xj4s3z3oXAUnqkP/t3tPwEpKHW', NULL, NULL, NULL),
(59, 'Ottis Bins', 'zboncak.lenora@yahoo.com', NULL, '$2y$10$LK7CYX1tI7JFOQaDoUS/XeFHiIYz.SV0CGav3ZpVQppdwSe7ey1f.', NULL, NULL, NULL),
(60, 'Amos Farrell', 'echristiansen@yahoo.com', NULL, '$2y$10$SL5HmjntO7DSaq5JXwNNtuFxavtu4/3y5a.FR6.yxoXglNgFG2X7y', NULL, NULL, NULL),
(61, 'Mr. Barry Ruecker Jr.', 'raymundo16@yahoo.com', NULL, '$2y$10$6uvVEYKgKoxpl6CVzebchu4Lr8/b4BwnzD4Kk7ltROgWyGYAYgddi', NULL, NULL, NULL),
(62, 'Nedra Swift', 'kbrakus@yahoo.com', NULL, '$2y$10$nbsqBRNMIqBt4hCcoy.3YevlKKSXoylw9gCxZ2d9hBC1tz1KEY6Zm', NULL, NULL, NULL),
(63, 'Kenyatta Stroman PhD', 'loyal84@hotmail.com', NULL, '$2y$10$dmCKEYvWO.fzseuP9NErk.VLTdcfJNmT9SNo8VpDRfH6PgkXLsXZa', NULL, NULL, NULL),
(64, 'Mrs. Bulah Auer I', 'ggibson@yahoo.com', NULL, '$2y$10$d7V/EWYS09HaI0epGq.gY.4b8MB/vj.n.gcTA33scuZkQ65N7L.eO', NULL, NULL, NULL),
(65, 'Alivia Bahringer', 'bednar.felicita@yahoo.com', NULL, '$2y$10$pXqpg2XIg9RjSC8NH0vXpehsmAxT7RQQJSxJsKtVSrHgRlYhMurhm', NULL, NULL, NULL),
(66, 'Prof. Hattie Funk MD', 'spencer.cordelia@waelchi.com', NULL, '$2y$10$tSxY5LJZl7YhJRyKZCSk3OBtL/SXEolDpQT.e7NOD8U0tM546dl4m', NULL, NULL, NULL),
(67, 'Pauline Hudson', 'pgoyette@lind.com', NULL, '$2y$10$NN4lVkcxlKUHUDHhMNQmfO9CimqgoUvbkpF/sdScmmPNBSvxtSSVe', NULL, NULL, NULL),
(68, 'Ms. Gail Tromp MD', 'hillard.ortiz@gmail.com', NULL, '$2y$10$DQxeM07mmOAh5gIlBQN.0.80eKIxjZO7tIeTMg5SYVUsN35RsCcnC', NULL, NULL, NULL),
(69, 'Mr. Fern Wilkinson V', 'fgaylord@jacobi.org', NULL, '$2y$10$OlexY0RTkYBYfIQH1MBxC.SFZfAEy1Tcmq9ihQ2gdKHQxhPDh6y5C', NULL, NULL, NULL),
(70, 'Golden Champlin', 'krystel.heathcote@gmail.com', NULL, '$2y$10$JQrHpxoueaR9zcqHP9P6SeIoP/DHAmW7orsPLVpbo/1hQ.qJBxAKu', NULL, NULL, NULL),
(71, 'Horacio Braun', 'katelyn.dietrich@gmail.com', NULL, '$2y$10$DTQsaNiHQfNGNDfh47qX7e1f6xS6RCJenKSuObLuDs0NM5Qn43yce', NULL, NULL, NULL),
(72, 'Kaylin Yost', 'schiller.jamie@gmail.com', NULL, '$2y$10$ibeVFnXaq2SibZkVVUQrkOkMmn/FQmcCUYkA9BJBW89/X6sg.kvJe', NULL, NULL, NULL),
(73, 'Bill Kuhn DVM', 'reilly.tate@weber.com', NULL, '$2y$10$T3JUBDwisOwsPFFQ6udTHO0B6cTBRCKY2xP2htTJvwTXt9yg.KKE.', NULL, NULL, NULL),
(74, 'Prof. Woodrow Pfannerstill Jr.', 'sadye28@aufderhar.net', NULL, '$2y$10$Mav7MPH.kGOPsWuDfgQPKelkjN97ZvA0nuyZlAZirVUUASscyfv1a', NULL, NULL, NULL),
(75, 'America Heaney', 'gulgowski.alexandro@yahoo.com', NULL, '$2y$10$AJJ5UZPTlpMVlNtffzQk5uqDndsoPltmVeaGkS50KaI8FjW27PCx.', NULL, NULL, NULL),
(76, 'Candido Pagac', 'nienow.lucy@bins.info', NULL, '$2y$10$jLlQ0z4NilaaFwcmg8FSEuEZd5kSUNv7i2BVHnVn6fEkhoiuswjge', NULL, NULL, NULL),
(77, 'Michaela Marvin', 'brayan.walker@mraz.com', NULL, '$2y$10$Ti6VQai0j4CzG14e3E1I1OH5mxvOSVyk51Ty67L.EL4uQ94zOdUeu', NULL, NULL, NULL),
(78, 'Serena Rice II', 'vesta.mcclure@harvey.com', NULL, '$2y$10$b18wOFTBJfVIPVaBOsAEZuDIdOwYVfWOx9CmQ6JppQe6IHiWigHhC', NULL, NULL, NULL),
(79, 'Dr. Nicklaus Prohaska DVM', 'breitenberg.richie@yahoo.com', NULL, '$2y$10$gGYWFHbgbGvyo/D4918F7uqA4GK/5gOKnsOwMVqJympfjHh.9Hh9O', NULL, NULL, NULL),
(80, 'Jaida Pagac II', 'jerad.gusikowski@yahoo.com', NULL, '$2y$10$iyBbAMfo/KhmcMqMZrVBYe8BFCi8Vra0sP7XmRwqWk3Ygat0VdZt.', NULL, NULL, NULL),
(81, 'Mr. Tremayne Purdy II', 'deron22@gmail.com', NULL, '$2y$10$Fkz76vo4hX.iaFtZwublzOkRKaLfhBtuitGCxh3werFesx9.BDW/m', NULL, NULL, NULL),
(82, 'Francesca Robel', 'coleman.rogahn@schiller.com', NULL, '$2y$10$6G8cUQeAJB7GH7CuMFra4.Rzw4qU6XBcniTMKx46jWZ5KClksA0Xm', NULL, NULL, NULL),
(83, 'Josefina Christiansen', 'elliott.reilly@yost.biz', NULL, '$2y$10$085bLAiSEhB1yloMVejtiuLBkcQD4nsiTEJu0CBdEsgQEzSEmO4ri', NULL, NULL, NULL),
(84, 'Clifton Osinski DDS', 'kmayert@gmail.com', NULL, '$2y$10$05GJSXB2lxuqspu1JQ0akuDlwF9BD9.ppfb9Pbkyu0BFrqf41jb1G', NULL, NULL, NULL),
(85, 'Ines Lynch V', 'nlabadie@hotmail.com', NULL, '$2y$10$0khJeqaVyrBggS3jkCkmu.BnSD5nu7oueec36ghvyYuknsxQwt.de', NULL, NULL, NULL),
(86, 'Mr. Collin Ullrich Jr.', 'vspinka@hotmail.com', NULL, '$2y$10$DzLyoBvmmQgSTzNR8HDQfOsmjJ64Fj3sKUinPnfOyB7C3jv/D6/je', NULL, NULL, NULL),
(87, 'Dr. Rosalyn Schmitt PhD', 'purdy.bernice@harvey.info', NULL, '$2y$10$QlSrU1gCnIywu4Z7M/oiH.N9Xi626LNQ6tKFJlcDJmdVU8XIzE4li', NULL, NULL, NULL),
(88, 'Fletcher Swift', 'efrain80@yahoo.com', NULL, '$2y$10$AclOxfyPUbl2VYDqZiQ8RuKIb.IEVImH8oBabb2tAg57k2E6B11rK', NULL, NULL, NULL),
(89, 'Sean Schiller DDS', 'waelchi.lenore@harber.com', NULL, '$2y$10$ZnB1a3iVMaj4R1PMgVkOXO186mFkU2Ukw9vsrUJ2D/8YyuuCxLXRq', NULL, NULL, NULL),
(90, 'Dr. Shawn Schmeler II', 'ayla.bode@gmail.com', NULL, '$2y$10$len7FjOXLMc.OY0kCYdtE.nySCFPAjmmiyL8XwwOR68NGh.xSvbCC', NULL, NULL, NULL),
(91, 'Mr. Nick D\'Amore', 'mohammad12@hotmail.com', NULL, '$2y$10$FqvjIB3jI5avWrgQ.uXjxepX7X1EeDBiHf/fVpIoyD91eMMiF2IcG', NULL, NULL, NULL),
(92, 'Marley Prohaska', 'alize.muller@toy.net', NULL, '$2y$10$9Zb6kPDnuWDeLvSIJy1nIOIViR5SUp6G/VxS7quTIk/bOLMBbOo4C', NULL, NULL, NULL),
(93, 'Rowena Fisher', 'norberto95@bode.biz', NULL, '$2y$10$8WXc4B9jMPK95uTcf7WajOC22k.ehDPVa1wSoxiLc7xvdRvNhB8Qu', NULL, NULL, NULL),
(94, 'Lenore Metz', 'nstreich@spencer.com', NULL, '$2y$10$WghLUkvRjgo8A8yFV0K50uAtfKJjh/jDmPXIqwfJp9op1QxaufVHi', NULL, NULL, NULL),
(95, 'Trevion Rohan', 'fabian.hettinger@bruen.net', NULL, '$2y$10$P2pSK38wicdR72TdmkI1eOuvA8yGSoxE72BTbUO8ANuVFKgFvDDvu', NULL, NULL, NULL),
(96, 'Graciela Lesch', 'vernon.roberts@yahoo.com', NULL, '$2y$10$21nkT0whO.iuTp6hiowodeblMWiiOhWkdlyyMruuSV7ZNcjRkxJTO', NULL, NULL, NULL),
(97, 'Filiberto Gulgowski', 'flatley.francis@fadel.org', NULL, '$2y$10$LwnAGzOpWDaOsOylK9aaXu4RsUtIelQ8yA1zc8Z6PyW4UocyaaPXK', NULL, NULL, NULL),
(98, 'Mr. Casimer Stiedemann Sr.', 'wwyman@schamberger.biz', NULL, '$2y$10$6Bk8mPLTMr0ybSd9mUedV.ZjgGOLu2Ym.S4/..ZkR0b6rqhQshqqi', NULL, NULL, NULL),
(99, 'Torey Anderson', 'imogene.satterfield@pouros.com', NULL, '$2y$10$3TyUAp58bz43aa.bpgjUee3uJrWzhmVh4ddi8fDah9kOwpoGcjYta', NULL, NULL, NULL),
(100, 'Maximo Krajcik', 'shodkiewicz@bruen.com', NULL, '$2y$10$h4WDWAZuboYtNzksD3iwDu393XjZxHbSlU9br.48bsEn/E0gP2P0O', NULL, NULL, NULL),
(101, 'Prof. Litzy Trantow Sr.', 'gislason.kayley@bruen.com', NULL, '$2y$10$DDLUVq0VroUHvhBxl3Al3.X1ytpWaPry750Twtao6nVNWHmNAgX0C', NULL, NULL, NULL),
(102, 'Everette Crist', 'ellsworth.treutel@yahoo.com', NULL, '$2y$10$LK36ZMV19tLqhOQjN1OVb.Mh7Uqi/clZEjSaxfuG1hPEsNK/KGP2i', NULL, NULL, NULL),
(103, 'Ollie Deckow', 'tyrique03@davis.com', NULL, '$2y$10$7caRXO7w3dpRj3TlCEKua.E9z5peSVuKMGeTZWaBYcxAyMlRom2EG', NULL, NULL, NULL),
(104, 'Josefina Stokes DDS', 'savanna.terry@leuschke.info', NULL, '$2y$10$w3uhi.M8pSbUgtyvYJZBW.1.zs.U/UbWowjkjbVVpo/SxrHvrQU3y', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_film_id_foreign` (`film_id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
