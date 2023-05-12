-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 10:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-01`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(2, 'Web Design', 'web-design', '2023-05-11 16:23:45', '2023-05-11 16:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_05_08_223828_create_posts_table', 1),
(6, '2023_05_11_111940_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Consequuntur vero voluptatem quis.', 'fugit-voluptatem-aut-quia-est', 'Officia qui ipsum officia vitae omnis dolor est ipsum. Optio non enim saepe blanditiis in quod quia. Qui et eos sed.', '<p>Asperiores voluptatem quia illo quia dolores rem consequuntur. Id accusantium et possimus commodi. Harum nisi qui modi fugiat omnis hic. Est qui repudiandae nostrum commodi doloribus. Hic sunt inventore quod laudantium exercitationem omnis.</p><p>Porro est at est omnis dolorum. Autem quisquam eum consequuntur commodi ut. Velit neque eligendi recusandae et possimus. Similique ab consequatur possimus voluptatem.</p><p>Qui voluptatem voluptatem molestias est est perferendis asperiores. Qui magni autem incidunt reiciendis necessitatibus nemo molestias. Iure odio est et laborum placeat facere nihil asperiores. Rerum sed ipsam officiis in.</p><p>Saepe ratione alias accusamus quas rerum. Quos repudiandae cupiditate sapiente sequi. Nemo ex est eaque repellendus autem a quae. Velit blanditiis ab ad libero occaecati.</p><p>Deleniti aliquam deserunt aliquid modi quis aspernatur omnis nihil. Assumenda molestias nostrum commodi qui eum. Ea rerum sequi doloribus beatae. Voluptatem distinctio sequi enim.</p><p>Enim et ullam vero aliquid. Praesentium ducimus fuga blanditiis veritatis qui. Consequatur neque nesciunt nobis odio est sint. Et odio modi eum reiciendis enim odio sunt sed. Nobis consequatur beatae sed quo quos a.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(2, 1, 1, 'Aut iusto non.', 'rem-velit-tempora-praesentium-repellendus-voluptate-eum-dolores', 'Veniam recusandae itaque voluptatem. Dicta provident eveniet ab dolore. Deleniti nobis enim ea pariatur aut hic.', '<p>Enim quisquam ut rerum similique. Nihil voluptates iste ut velit aut. Perferendis quisquam vitae dolor et. Amet eos hic aperiam.</p><p>Nostrum occaecati accusantium excepturi dolor repellendus iure non. Possimus eius consectetur magnam sint aliquam quasi odio. Aliquid modi quia voluptatum et quas.</p><p>Qui atque ea ut sit nisi possimus. Dignissimos dignissimos ratione pariatur dignissimos. Voluptatibus minima aut illum.</p><p>Et cum voluptatem cum veniam modi minus voluptas. Dignissimos reiciendis quisquam accusamus exercitationem. Reprehenderit sed quo voluptatum et. Assumenda officia dicta ipsum qui quasi.</p><p>Rerum id unde animi iure qui et. Ipsam ducimus maiores necessitatibus optio. Excepturi in eius perferendis inventore. Quia debitis eius et nisi quis.</p><p>Veniam aut est rerum atque eius. Voluptates voluptates sequi non rerum et ad consequatur.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(3, 1, 5, 'In corporis nulla et ut.', 'ut-perspiciatis-aut-maxime-labore-incidunt', 'Quis laborum adipisci non sapiente. Nisi ex ipsum dolores. Sunt voluptas quisquam qui facilis quis voluptas.', '<p>Id sunt ratione occaecati autem omnis nesciunt quia. Laboriosam quidem aperiam possimus. Voluptates quia ab fugit ducimus consequatur. Iste et itaque aut aliquid.</p><p>Sit sed magnam ipsum recusandae. Distinctio nihil fuga illo cum magni. Necessitatibus rerum et sed corporis nisi adipisci.</p><p>Ut dolor ipsum pariatur et. Ut deserunt rerum quae. Consectetur aut praesentium quia assumenda voluptatem magnam nostrum. Enim iusto impedit aut deleniti non. Et dolor perspiciatis optio tenetur eaque.</p><p>Dicta rerum culpa maiores doloremque maxime adipisci voluptas. Ipsam dignissimos ipsum vero rerum quia ducimus. Placeat enim cupiditate nulla consequatur ipsum. Consequatur doloribus blanditiis ab sed ut vero ab. Et eos dicta dolores temporibus.</p><p>Voluptatem quaerat sunt eos nisi impedit. Quae voluptates ab occaecati sequi harum ducimus. Cumque doloremque et est est nisi maiores.</p><p>Harum aspernatur qui dolores perspiciatis adipisci necessitatibus perspiciatis. Fuga odio quae sed sunt. Omnis ut quam qui reprehenderit consequatur.</p><p>Voluptatem fugit natus id doloremque et. Accusamus qui asperiores repudiandae minus voluptatem quam. Facilis consequatur officia corporis et. Dignissimos ad est necessitatibus optio tenetur eos reprehenderit nisi.</p><p>Tempore aspernatur iste soluta modi recusandae a. Dolores non corporis explicabo. Iste architecto in corporis rem adipisci et.</p><p>Quae reprehenderit sequi ipsam qui quos alias voluptatibus omnis. Eos atque tenetur animi eveniet quam. Consequatur eligendi saepe omnis et sed omnis.</p><p>Provident cumque voluptatem quas officiis. Aut sint placeat natus et reprehenderit neque eum ipsam. Placeat maiores aspernatur et et animi. Dignissimos et necessitatibus nobis voluptas perferendis placeat doloribus quia.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(4, 1, 5, 'Ut dicta tempore.', 'qui-quos-accusantium-enim-totam-dolorem-doloremque', 'Voluptatum at ea tempore distinctio quis. Non possimus nulla impedit non repellat.', '<p>Dolorum dolores voluptatem libero consequatur fugiat incidunt. Voluptate molestias natus esse voluptatibus. Sed deserunt inventore voluptatem rerum voluptas et enim.</p><p>Quia assumenda aut et et. Id nisi iure quia sint qui ad porro.</p><p>Sit necessitatibus dolor quam et maxime excepturi impedit doloremque. Incidunt tempore laboriosam maxime fuga culpa. Ducimus nostrum et eum nam ducimus omnis maiores. Voluptatem praesentium qui ipsam quibusdam.</p><p>Voluptatibus et quo veniam aut maxime et praesentium. Accusamus fugit labore sed asperiores. Ad laudantium animi nesciunt consequuntur.</p><p>Ut iure dolor et qui officia maiores doloremque. Fugiat neque ex illum est nesciunt totam sit. Vero totam eum hic modi.</p><p>Et doloremque vitae voluptatem cupiditate non aperiam. Minus facere amet ut modi odit. Sunt ea sed et unde id. Repellat qui ipsum quo quia voluptas.</p><p>Non dolores eos veniam placeat. Ea porro est dignissimos. Quasi itaque voluptatum ab.</p><p>Excepturi ut accusantium quia incidunt. Consequuntur qui voluptatibus est rem sequi.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(5, 1, 6, 'Provident consequatur minima quis totam.', 'id-qui-vel-et-laboriosam-ullam', 'Ipsum sit qui eaque tempore nobis hic. Enim quaerat voluptatum praesentium esse in voluptatem non.', '<p>Maxime ab nisi aut. Ab perferendis veritatis quam repellendus delectus pariatur ab. Distinctio eos nihil nisi illo quis officiis.</p><p>Eum laudantium et cumque commodi tenetur. Sunt labore dolore quam nisi.</p><p>Ut iusto qui ex possimus quis. Provident nisi magni nesciunt. Cum nostrum saepe consequatur.</p><p>Et quod facilis optio qui. Dolor eaque dolorem ut qui. In et inventore earum. Voluptas qui ut quia hic velit sunt rem.</p><p>Quis dolor ex et dicta ducimus. Pariatur possimus consequatur blanditiis culpa. Facilis aut dolore quaerat. Consequuntur incidunt magni in aut et rerum dolorum.</p><p>Saepe voluptatem natus explicabo illum. Et in iure labore dicta odio ut.</p><p>Quos qui dolores id. Iste est deleniti suscipit aspernatur perspiciatis. In numquam adipisci maxime velit accusamus quasi.</p><p>Ut molestias voluptas quo molestiae saepe dolores sed illum. Et ut eum ipsum corrupti. Nobis velit sint impedit quia incidunt iste. Debitis modi id esse adipisci qui voluptas.</p><p>Veritatis assumenda maiores consequatur consequatur ea accusantium voluptatem sed. Tenetur animi tempore quo nulla non amet ut.</p><p>Earum ea illum quia mollitia quo iste est. Dignissimos aspernatur alias minus nulla voluptatibus. Ex harum cumque laborum ipsa modi nihil asperiores.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(6, 2, 5, 'Qui molestiae ratione dolor qui minus.', 'autem-fugiat-iste-consectetur', 'Dolor non nulla rerum repudiandae. Qui doloribus vero at molestias. Labore voluptas ut voluptatem veniam voluptate iusto nostrum. Alias mollitia nihil voluptates aut.', '<p>Omnis sint alias numquam expedita aliquam nulla. Delectus tempore ut dignissimos soluta. Ut ut porro quia.</p><p>Omnis autem vel quaerat doloremque voluptas deleniti soluta ut. Sint ad et quidem provident. Sapiente dolorem expedita eos ex ab ut quia. Veritatis odit placeat veniam adipisci quas minus.</p><p>Et placeat beatae quos corrupti est occaecati deleniti. Et qui molestiae voluptas laboriosam. Sequi beatae quisquam unde sint dolorem.</p><p>Id et sint quo esse debitis tempora qui saepe. Aut dolorem odit sunt aut. Cupiditate qui quo expedita assumenda repellendus. Officiis tenetur id eum esse.</p><p>Odit suscipit dolor autem. Error consequatur illum esse. Provident ratione illum ut occaecati enim adipisci. Qui voluptates qui aliquam eveniet ut temporibus sed.</p><p>Vel voluptatem exercitationem consequatur libero et velit numquam. Occaecati laboriosam aut eligendi voluptas debitis quia. Dignissimos adipisci libero labore dolor veritatis nostrum vero deleniti. Veniam perspiciatis sed mollitia voluptatem dolorum incidunt.</p><p>Ab modi voluptatem cumque reprehenderit fugiat. Cupiditate eveniet laborum et reprehenderit. Harum qui hic qui ullam nihil omnis. In quasi illo eius deleniti amet aliquam vitae qui. Qui qui quia modi fugit rerum voluptate.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(7, 1, 1, 'Ut facere eligendi architecto at aut.', 'aut-voluptatum-voluptatem-debitis-laboriosam-ut-adipisci', 'Reprehenderit est dolor officia nihil in quia est. Enim sint non iure ratione quis voluptas. Voluptates non nostrum in unde ut atque ea. Illum voluptatem sit beatae ad voluptatem velit.', '<p>Porro repudiandae doloribus sunt velit in vel aut. Dolorum dolorem ut accusamus suscipit molestiae expedita minus. Dolorem accusamus animi aut autem repellat.</p><p>Nesciunt repudiandae totam nihil et molestias vel exercitationem. Pariatur recusandae quas maiores velit illum aut aut.</p><p>Doloremque facilis saepe voluptatem dignissimos aut aut. Veniam facere dolore sit reiciendis maxime dolorem. Magnam eum quia qui aut. Aut quasi quasi odit est molestiae minus qui. Ut est saepe incidunt consequatur accusantium natus sequi.</p><p>Tenetur quia animi consequatur. Nulla ipsam quaerat perspiciatis dignissimos unde.</p><p>Et molestias laborum fugit id vel dolorem sapiente necessitatibus. Aut non nisi ducimus explicabo non. Nisi possimus quidem exercitationem assumenda corporis doloribus. Mollitia et officia autem. Quia sint consequatur et.</p><p>Suscipit atque asperiores est culpa ut. Qui temporibus ut id voluptatem. Asperiores dolorum exercitationem commodi est est labore. Exercitationem corrupti laboriosam ipsam laboriosam voluptate voluptatibus corrupti fuga.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(8, 1, 4, 'Doloremque et aliquam unde ratione.', 'aut-sed-quo-sapiente-nihil-voluptatem-fugit-sunt', 'Ad possimus laudantium voluptas rerum adipisci aliquid architecto facilis. Et nisi non aut magni occaecati aut. Alias corporis vel laborum sint quas et doloribus. Dolor fuga voluptas et sapiente.', '<p>Et alias nisi est nam. Sit quis vero autem ut. Voluptas reprehenderit dicta enim corporis. Molestiae sint vel voluptatem eum.</p><p>Architecto quasi eum dolorem totam voluptatem provident. Labore est aut ea magnam et fugiat. Quo voluptas praesentium velit et saepe nihil. Optio praesentium quos numquam enim provident vitae aut.</p><p>Molestias voluptate quis tempore repellat atque eum ut assumenda. Eos quam sed rerum. Voluptatum explicabo ex et.</p><p>Aut id repellat voluptatum accusantium magni consequatur et. Repellendus rerum omnis iste. Impedit a optio debitis.</p><p>Consequatur minus atque esse. Et inventore iste voluptas ut nemo ut. Nemo blanditiis repellat neque fuga deserunt dolores. Provident perferendis eligendi saepe iusto dolorem maiores sunt qui. Explicabo voluptate nulla et.</p><p>Nesciunt vel nam suscipit magnam laudantium. Rerum placeat itaque nisi aliquid molestias. Voluptatem nobis dignissimos labore illo. Beatae odit est rerum animi corrupti maiores.</p><p>Voluptas labore et consequatur quisquam voluptas minus. Autem autem hic minus vel. Quo nesciunt quo explicabo deserunt laborum itaque.</p><p>Rem expedita blanditiis reiciendis suscipit qui autem minus consequatur. Dolores velit quia et repudiandae qui. Doloremque mollitia eum labore fuga aut sequi et.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(9, 2, 5, 'Est voluptates.', 'facilis-veniam-voluptatem-cumque-nostrum-eos', 'Temporibus explicabo sed aut et commodi aperiam. Sint aspernatur reiciendis error repellendus. Voluptates iusto illum animi nisi facilis amet rerum dolorem. Omnis aut facere ipsum quo nulla vitae.', '<p>Amet ut eum enim eligendi similique neque. Consequuntur nemo et dicta ullam. Odio architecto consequatur rerum non.</p><p>Quo repellat esse porro similique nihil dolorem. Fuga assumenda quia atque excepturi numquam. Corporis sed quasi quibusdam dolorem consequatur fugit.</p><p>Unde blanditiis unde libero aperiam enim. Ea aliquam fugit asperiores non minima laboriosam non. Facilis tempora quis nemo dolor voluptatem dolor commodi. Occaecati fugit non sunt quo modi fugit asperiores. Ab voluptatum qui quam.</p><p>Aliquid est sint impedit eligendi consequuntur. Quia soluta deleniti amet totam nemo. Doloribus aut est dolore et reiciendis.</p><p>Tempore voluptatem dolor magnam alias magni. Tenetur quo vel cumque aut doloribus sit necessitatibus. Et ipsum libero quia ut molestias. Eaque et velit ratione nesciunt eligendi perspiciatis.</p><p>Blanditiis esse perspiciatis corrupti veniam doloremque. Veniam deserunt officiis suscipit quas rem iste sunt. Velit voluptatum quas distinctio voluptas voluptatem.</p><p>Magni aut nihil incidunt laudantium. Architecto dolores repudiandae ea. Et non ducimus atque molestias consectetur neque.</p><p>Eos et enim recusandae perferendis sequi. Aut voluptatibus doloremque iure. Dolorem officiis et rem corporis. Accusantium repellendus repellendus et vel.</p><p>Corrupti et vel quia id deleniti. Magnam dolorem eos ut quam. Doloribus quia voluptas excepturi molestias voluptatem fugit. Iste atque in iste quos.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(10, 2, 9, 'Quam impedit quos rerum.', 'repellat-est-veritatis-sit-neque-temporibus-libero-velit', 'Fuga harum quis corporis pariatur est. Cum atque alias ut autem dolor dolor expedita. Et nihil labore voluptatem sed.', '<p>Ea perferendis odio quam optio corrupti inventore. Harum quo doloribus necessitatibus rerum.</p><p>Odio facilis quo ratione est voluptate. Et ullam quidem quaerat est doloremque. Voluptates quibusdam iure quia perspiciatis mollitia est. Veniam nobis exercitationem magnam voluptates. Accusamus incidunt sed eveniet illum.</p><p>Provident similique praesentium vel minima officia repellendus distinctio. Hic consequatur sit nemo consequatur aut vel. Officia incidunt sed expedita eum quo. Sit inventore quam enim.</p><p>Voluptatem vero quibusdam beatae et maiores eum voluptates optio. Corrupti doloremque dolore ipsa vel numquam. Iusto rem vel est quos et. Dignissimos minus nisi et blanditiis ut.</p><p>Laboriosam quia illum doloribus voluptatem dolore ad. Doloribus et cumque error est quia delectus consectetur. Dolores molestiae laudantium ut unde commodi praesentium.</p><p>Sint non ut ut hic qui nam. Quibusdam aspernatur est qui et quidem reiciendis. Qui enim vel iure consectetur quae.</p><p>Voluptatum est dolores exercitationem quidem. Et sed accusamus quisquam maiores nesciunt. Tempora amet facere numquam autem at inventore vero. Iure animi asperiores ab et ipsa.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(11, 2, 4, 'Consequatur natus rerum sunt dolor.', 'autem-distinctio-animi-ratione-officia', 'Voluptatem aut a labore nostrum quia rerum necessitatibus vel. Vero cum fugiat non inventore et quisquam deleniti. Quia possimus ut perspiciatis odio est. Labore vel dolorum autem minima ex quidem est.', '<p>Ducimus eos qui ut provident libero qui eum. Ut corporis nostrum omnis magnam id. Facere quia rerum incidunt accusamus veniam doloremque. Earum perferendis unde voluptas consequatur consequuntur.</p><p>Nihil id eos omnis. Eos modi in quis qui officiis recusandae dolor. Est asperiores aliquid vel facilis vel veritatis laborum. Aut ut architecto repellat incidunt itaque non qui.</p><p>Ea enim dolorem id impedit excepturi. Facilis veniam eveniet dignissimos perferendis sint odio. Soluta adipisci odit eum vitae dolorem corrupti ratione. In et provident doloribus similique.</p><p>Laborum fugit qui quibusdam molestiae esse deserunt. Et quia necessitatibus ea eum qui autem. Et corporis repellat minus dolor reprehenderit atque et.</p><p>Expedita suscipit explicabo corporis et. Aliquam aut sed sunt nam sint ut quasi. Consequatur vel explicabo ducimus et voluptas reiciendis in neque. Ullam assumenda non praesentium itaque qui deleniti esse ipsam.</p><p>Cumque a voluptatem et rerum animi quis quaerat. Est et dolores aut nesciunt.</p><p>Et iusto aliquid expedita. Harum eveniet dolorem velit consequuntur. Sunt sed magni ea dicta dicta consequatur.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(12, 1, 2, 'Quo necessitatibus rerum quasi et.', 'omnis-reiciendis-sapiente-hic-in-ea', 'Consectetur nulla et consequatur sed dolorum quia. Excepturi repellat quia consequatur qui deserunt vitae. Est fugiat dolores dolorem unde sit.', '<p>Id cum fuga molestias nemo. Molestiae ab in qui eius. Qui vitae ut rerum voluptas molestiae ea necessitatibus.</p><p>Ut numquam molestiae consequatur est non ipsa. Iusto officia possimus et consequatur consequuntur omnis.</p><p>Eos et aut aliquid. Ea beatae molestias perferendis fuga vitae aut. Possimus nulla sed hic sit quia sit mollitia nam. Iure atque qui atque placeat dolore ipsum pariatur.</p><p>Debitis sed sapiente rerum aut iure mollitia enim. Hic amet voluptatem et nobis impedit aut dolor. Cum iure enim qui et est reiciendis. Aut non aliquam soluta ut recusandae maxime magni. Odio pariatur sapiente quos eum rerum.</p><p>Laboriosam fugiat culpa similique nostrum officiis. Rerum quis voluptatem quasi saepe ab vitae. Harum minima iusto nulla mollitia explicabo.</p><p>Sed architecto aut et perferendis eum. Quis omnis rem pariatur voluptates assumenda et est. Laudantium ab dolores rerum beatae qui sit. Qui perspiciatis laboriosam tenetur error.</p><p>Autem voluptates dolorem et praesentium. Perspiciatis doloremque mollitia iure doloremque necessitatibus porro.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(13, 2, 2, 'Voluptas consequatur et iusto consequatur.', 'aut-veniam-eum-ab-mollitia-distinctio-accusamus', 'Voluptatem quam illo aperiam voluptatem. Ducimus placeat quo architecto perspiciatis voluptas quas animi laudantium. Quos dolore enim expedita quo dignissimos eligendi.', '<p>Nam ut fuga amet omnis exercitationem et. Impedit aut ex neque aliquam perspiciatis rem corrupti et. Et ut consequuntur omnis quibusdam. Aperiam voluptas molestiae laudantium dolores.</p><p>Nihil quibusdam nulla delectus quae. Et corrupti molestias ut quod perspiciatis. Neque similique et in tenetur dignissimos sunt.</p><p>Necessitatibus quos delectus aut omnis omnis porro dignissimos. Provident sapiente qui minima. Vero amet sit accusamus qui fugiat voluptas. Ea sunt tenetur asperiores blanditiis. Aperiam dolorum et nisi unde illum.</p><p>Magni officiis voluptates rerum est est quia. Consequatur reprehenderit doloremque voluptatum qui expedita. Id non iure voluptas rerum et dolorum consequatur. Sequi quis voluptatem quas eum est.</p><p>Aut repellat enim itaque atque ut in. Enim aliquam sint in. Quas tempora fuga doloribus. Ratione dolore quia dolorum qui rerum natus aut. Tempora sequi exercitationem ratione dicta.</p><p>Officia earum praesentium reiciendis tempore adipisci aut voluptatem tenetur. Accusantium et illo aliquam rerum. Est harum iste explicabo magnam et dolor enim.</p><p>Labore reiciendis dolor cupiditate asperiores explicabo quis ducimus. Aut cupiditate qui dolorem amet fugit. Aut consectetur hic consequatur dolorem est.</p><p>Vel et omnis consequatur iste cum iure. Aut et iste omnis cupiditate dolores deserunt. Dolores at occaecati quibusdam tempora eos.</p><p>Mollitia corrupti rerum ut qui nam tempore. Hic est eum laudantium dolorem.</p><p>Quidem minima animi consectetur natus. Quae dolorum est sapiente rerum officiis. Quia similique ut fugit praesentium sit.</p>', NULL, '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(14, 1, 4, 'Omnis qui.', 'totam-ducimus-beatae-asperiores-nulla-aliquid', 'Perspiciatis molestiae non quod nisi. Et libero deleniti est est tempore. Fuga eius neque et laboriosam repellat cum. Perferendis consectetur ut dolorum omnis ipsum.', '<p>Maxime neque qui est incidunt neque. Tempore ut corrupti tempora qui unde. Non voluptas error ullam.</p><p>Voluptatem nam minima est officiis. Sit iusto totam repellat eligendi rerum accusamus nisi debitis. Eveniet sed quia ad id fugit totam. Illum corporis quaerat placeat molestias soluta voluptates.</p><p>Molestiae recusandae quia rem aut nostrum. Libero ducimus eum enim aut. Voluptas et velit corporis voluptas adipisci velit reiciendis. Corrupti iure optio magnam nemo inventore atque.</p><p>Rerum eos qui nulla modi natus. Eum veritatis non quia tenetur est. In quae explicabo et aperiam delectus dolor itaque. Est molestiae itaque ratione. Aspernatur beatae eos enim.</p><p>Voluptas eaque eos ut non saepe aut facere. Maiores maiores sed debitis quia. Sapiente voluptatem deserunt quas maxime ea. Et veniam porro et atque fugit aut dolor.</p><p>Voluptatem animi repellendus itaque blanditiis perferendis. Exercitationem aut quisquam est beatae inventore harum et. Voluptatem totam sed sed quam ut. Blanditiis aliquid dolorem sequi quia. Id occaecati reiciendis accusamus occaecati magni corporis debitis.</p><p>Consequatur impedit quia nihil error veritatis suscipit. Error et quia consequuntur. Eos eveniet magni ratione vero. Minima ut quos ducimus iusto mollitia recusandae minima.</p><p>Et commodi expedita quas aut ducimus facere dolor quo. Quo ad corporis qui quas omnis ut quasi enim. Repudiandae error enim maiores repellendus animi aut.</p><p>Voluptate dolor sunt ad quisquam autem et. Quis quae nostrum unde quo quod sed sit ut. Rerum omnis distinctio culpa doloribus quod doloremque. Aspernatur aut esse tempora ut eum sapiente enim. Esse non sed velit quo.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46'),
(15, 1, 9, 'Est debitis.', 'quia-accusamus-in-itaque-autem-consectetur-pariatur', 'Aspernatur culpa quisquam dolorum minus quia delectus impedit omnis. Vero explicabo impedit qui dolorem ut quisquam error minus. Reprehenderit possimus dignissimos maxime quas soluta reiciendis. Animi quasi sunt voluptatibus eveniet voluptates est assumenda.', '<p>Id aspernatur nihil id minima. Totam minima ea debitis ipsa. Id corrupti rerum et illo vero incidunt. Recusandae quod in sunt tenetur vel.</p><p>Voluptas quaerat tenetur debitis perspiciatis. Sit non eveniet expedita itaque asperiores architecto ea. Dolorem ut voluptatem exercitationem in ut. Voluptates nemo aut harum quam sed ex voluptates. Enim rerum laboriosam vitae aut molestiae voluptate.</p><p>Aliquam nobis cum perferendis delectus rerum dolores rerum. Dignissimos ipsa quo dicta facere eos est debitis et. A rerum amet doloremque rerum quaerat sed et. Accusamus iusto perspiciatis id deserunt qui alias aliquid voluptate.</p><p>Expedita sunt esse error dolor saepe quos. Quasi neque ratione qui. Velit accusantium assumenda ex eos nihil. Velit aut et ut est in quod facere non.</p><p>Ipsum omnis consequatur qui non ut cum voluptatem ea. Dolore libero maiores molestias consequatur eius at laborum. Voluptas est nihil explicabo ut veniam deserunt. Voluptatem aliquid totam voluptatibus.</p><p>Eum non dolores sit corporis non non. Vitae itaque culpa voluptas sint. Reprehenderit ut natus unde voluptate fuga accusantium harum eveniet. Aut ducimus eos autem sed.</p><p>Consequuntur assumenda est fuga et. Nihil aut expedita quis quos rem maxime. Sit aperiam omnis sed a non et. Minus placeat sapiente quia commodi.</p><p>Dolor maiores labore vitae nulla at. Eaque cumque cum ea dolorum. Qui dolores assumenda doloremque rerum consequatur. Aperiam suscipit laboriosam accusamus sunt cumque assumenda.</p><p>Qui facere et eos deleniti perferendis saepe eum. Expedita odio error repellendus.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46'),
(16, 2, 10, 'Molestias sapiente ducimus ut voluptas odio qui.', 'optio-impedit-et-quaerat-eius-animi', 'Excepturi quam consectetur excepturi quia porro consequuntur. Quisquam ut nihil et. Nostrum doloremque corrupti cumque aut.', '<p>Nihil sit voluptates et sapiente temporibus sint in et. Voluptatem odit tenetur culpa et repellat id. Consequatur sit excepturi sequi ullam expedita.</p><p>A eveniet fugit eos deleniti iure nobis. Non totam dolores quia et.</p><p>Quaerat voluptas impedit voluptatem qui possimus. Sed sint sequi laborum porro quas sunt corporis aspernatur. Iste qui autem error alias atque eos temporibus. Et vero ad distinctio in ex suscipit porro temporibus.</p><p>Blanditiis expedita nihil voluptas. Voluptas eveniet neque maxime velit. Repellendus id at veritatis facere.</p><p>Consectetur eveniet temporibus voluptas fuga. Quasi occaecati praesentium amet illum. Tempore reiciendis labore molestias et.</p><p>Veritatis aut deserunt est. Eaque architecto libero quod fugiat. Facere explicabo placeat asperiores voluptatem necessitatibus assumenda nobis tenetur. In iusto dignissimos sit magnam cum. Beatae repellat nihil voluptate totam voluptas.</p><p>Qui ut ut enim facere non sint assumenda. Minima sed voluptate dolor tempora unde sit nam. Qui qui eaque ducimus odio.</p><p>Inventore aut amet iste alias ipsam illum nihil. Omnis et eveniet voluptatem sequi debitis dolorem.</p><p>Officiis dolore explicabo praesentium est et. Consequatur omnis tenetur aut dolore. Consequuntur voluptatem ad dolores quasi aliquid.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46'),
(17, 1, 1, 'Dolor ad delectus expedita exercitationem reprehenderit.', 'beatae-voluptatibus-et-omnis-eum', 'Accusamus et voluptatum ullam eum eaque eligendi. Veniam harum necessitatibus dolorem nihil enim. Adipisci et qui et corrupti.', '<p>Maiores facere et est qui architecto ea molestias. Neque fugiat accusantium sint laborum doloribus. Itaque voluptatem enim ea eum sed expedita. Qui omnis doloribus tempora molestias hic iure non optio.</p><p>Quia corporis et quo cum. Natus qui asperiores voluptatem quis quod voluptas qui quidem. Aut ab suscipit illo eos et. Natus voluptate molestiae quibusdam ratione in.</p><p>Non perferendis et nihil accusantium pariatur iste quas. Molestias ab consequatur ut natus aut. Libero expedita aperiam eveniet veniam quo sed.</p><p>Dignissimos eos eaque atque eligendi facere fugit. Non odit sapiente autem quibusdam quo eligendi nesciunt architecto. Suscipit excepturi et maxime velit dolor.</p><p>Optio aut dolorum rerum est neque id accusantium. Rerum iure dolor quam totam magnam aperiam. Sed fugiat veritatis eius animi nisi ut.</p><p>Ullam quia at qui ea reiciendis voluptate. Nulla sed et consequatur qui veritatis commodi. Architecto ipsum molestiae est ex. Et veritatis incidunt accusantium beatae omnis dignissimos quasi.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46'),
(18, 1, 8, 'Voluptatem quia quasi.', 'autem-beatae-quo-nisi-quis-reiciendis', 'Consequatur qui voluptates eos ab reiciendis iusto. Quasi impedit commodi culpa sapiente qui dolorem porro. Maiores quidem ea quia amet et deserunt nobis. Doloremque dolorem eligendi repellat perspiciatis est qui.', '<p>Ea optio aliquam ab blanditiis praesentium autem commodi. Nulla dolorum aliquam odio deserunt ipsam a dignissimos eos. Dolorum laborum dolores fugiat ab. Magni minus vitae est aut consequatur nam nesciunt.</p><p>Aspernatur doloribus molestiae qui saepe. Atque in nihil eveniet et et itaque. Commodi vel atque repellat neque consectetur sed qui.</p><p>Expedita et ut praesentium officia asperiores consequatur. Quos quidem sint quod et esse. Aliquam nesciunt odit nihil in eveniet aut.</p><p>Voluptate sint voluptas dolorem provident. Sunt qui fugiat laborum recusandae dignissimos quam. Rerum ut et et tenetur quia officia. Atque assumenda fugiat non possimus.</p><p>Aliquid non magni enim accusamus minima. Commodi voluptatem debitis nisi doloremque. Qui non error dignissimos enim. Commodi repellat cumque eaque.</p><p>Magnam officiis maiores consequatur exercitationem sed aut consectetur. Excepturi quia eum soluta quisquam et rerum quidem. Tempore doloremque dolore libero. Qui voluptatem voluptatem at nostrum corporis.</p><p>Quidem corporis est soluta quia quo. Beatae quia quaerat quia vel soluta nostrum cum. Sed pariatur aliquam aliquam magni dolor sed repudiandae deleniti. Aut a saepe consequatur tempore magnam officia. Dignissimos ad aut optio voluptas officia.</p><p>Hic voluptate possimus quas est. Explicabo nisi aut et doloremque deserunt sit illum. Consequatur itaque aperiam quis et libero quia consequatur.</p><p>Odit animi mollitia accusamus eos iure eum omnis. Deleniti earum molestiae eaque aut possimus minus neque. Facere vel molestiae error nemo ea commodi. Rem sit voluptate enim explicabo.</p><p>Aut dolores rerum quisquam consequuntur. Consequatur error dolor eos autem repudiandae. Voluptatem dolor maxime molestias est rerum aut beatae. Rerum nulla nobis accusamus autem totam in.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46'),
(19, 2, 4, 'Consectetur enim.', 'culpa-totam-est-repellat-culpa-in-voluptatem-autem-aperiam', 'Sed iste nam quia consequuntur. Et omnis nisi harum et. Quasi enim odit pariatur dolorem sed doloremque.', '<p>Ut qui dolorem quaerat quod laborum voluptate quia in. Et qui corrupti eaque aut. Nostrum harum id error nemo facere. Ut numquam non molestiae natus magnam quo quisquam deleniti.</p><p>Possimus accusamus autem dignissimos. Quia sed consequatur est.</p><p>Rerum occaecati dolorem porro voluptas. Minima et ducimus et cum provident qui sed sit. Corporis et cupiditate rem harum. Qui sapiente ipsa inventore molestias ex sequi. Esse quasi dolor natus quae dolor omnis.</p><p>Qui aliquam ratione provident quo sed beatae esse. Qui nulla accusantium qui sunt. Minima laborum possimus quis odio mollitia. Aperiam mollitia qui itaque aut consequatur minima molestiae.</p><p>Ipsam aperiam excepturi harum ducimus qui velit aliquid. Et facere consequatur illum qui nisi nihil qui excepturi. Illum ex corrupti esse et impedit alias voluptatibus. Quia fuga accusamus exercitationem earum perspiciatis sapiente labore.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46'),
(20, 2, 2, 'Corrupti et et.', 'iste-laboriosam-dolores-temporibus-tempore', 'Odio voluptate aut aut non. Enim exercitationem doloribus ut dolorem ut occaecati. Ut unde et aspernatur.', '<p>Autem sed itaque voluptas libero odio reiciendis libero ea. Distinctio vero quia expedita hic illo et. Ducimus aut cupiditate quis et qui. Exercitationem molestiae aut illo aut magni deserunt.</p><p>Ut nihil excepturi inventore inventore quis consequuntur et. Recusandae rem officia est labore dolore maiores distinctio. Et qui ipsum illo et sint error qui. Sit debitis dolorem qui quisquam soluta.</p><p>Praesentium et placeat veniam. Reprehenderit possimus id aliquam perferendis architecto. Inventore qui adipisci quisquam magnam quis dolorem ad. Commodi quibusdam accusamus modi enim cum aliquid.</p><p>Quia odio neque maxime cum doloremque velit blanditiis. Enim ut exercitationem omnis ipsa quam quia. Placeat nisi itaque non perferendis quaerat non.</p><p>Ducimus provident quia modi ducimus. Accusamus aut dolorem voluptas minus est. Saepe numquam impedit aliquid eaque consequuntur. Tempore culpa molestiae illo vel.</p>', NULL, '2023-05-11 16:23:46', '2023-05-11 16:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tantri Dewi Zulaika S.H.', 'kamal48@example.com', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sn9YmkjNtI', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(2, 'Purwadi Prima Uwais S.Gz', 'vdamanik@example.org', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vP9X0adtag', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(3, 'Gading Pradana S.Ked', 'mala32@example.net', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P3sBztpABz', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(4, 'Ulva Oktaviani', 'maryati.jayadi@example.net', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hb29Cyhifx', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(5, 'Hamima Mutia Safitri', 'kasiyah79@example.net', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'myFntUcbR3', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(6, 'Harimurti Situmorang', 'vera77@example.com', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LfdBDwv5aH', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(7, 'Galih Hadi Setiawan S.Psi', 'putra.yance@example.net', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lzkW8UCjym', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(8, 'Unjani Kuswandari', 'vyolanda@example.net', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1cTxMtODRv', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(9, 'Gara Rama Mangunsong S.Gz', 'hasan58@example.org', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hj7iJL5QnZ', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(10, 'Puspa Kezia Riyanti S.T.', 'martani.namaga@example.org', '2023-05-11 16:23:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WDdsD3xLe4', '2023-05-11 16:23:45', '2023-05-11 16:23:45'),
(15, 'Ray', 'raycakraa@gmail.com', NULL, '$2y$10$7scvPrR6hBfQRXxoCC68i.un6OXP6aw4bmJdmMDMbY/axahBkHEl6', NULL, '2023-05-11 23:59:33', '2023-05-11 23:59:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
