-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel_learn
CREATE DATABASE IF NOT EXISTS `laravel_learn` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel_learn`;

-- Dumping structure for table laravel_learn.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_learn.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravel_learn.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_learn.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_05_12_095241_create_posts_table', 1);

-- Dumping structure for table laravel_learn.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_learn.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table laravel_learn.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_learn.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table laravel_learn.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_learn.posts: ~2 rows (approximately)
INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
	(1, 'First Article', NULL, NULL, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nulla veritatis nesciunt voluptas totam corporis aliquid culpa sapiente nihil temporibus, non commodi ea nam consequuntur sunt dolores libero aspernatur quae quidem adipisci possimus vero fuga. Consequatur placeat earum sapiente inventore ea quaerat. Porro accusantium corporis iusto ipsa adipisci consectetur quas, dignissimos ut non fuga in esse perspiciatis excepturi eaque saepe tempore voluptatibus. Ipsam expedita inventore id doloremque? Libero eligendi saepe aspernatur rem accusamus iure cupiditate vitae totam recusandae est autem, aut sapiente, accusantium facilis eum odio quas asperiores reprehenderit voluptatem numquam deleniti neque maiores. Debitis facere quod, sint deleniti veniam rem. ', NULL, '2024-05-12 03:12:56', '2024-05-12 03:12:56'),
	(2, 'Second Article', NULL, NULL, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nulla veritatis nesciunt voluptas totam corporis aliquid culpa sapiente nihil temporibus, non commodi ea nam consequuntur sunt dolores libero aspernatur quae quidem adipisci possimus vero fuga. Consequatur placeat earum sapiente inventore ea quaerat. Porro accusantium corporis iusto ipsa adipisci consectetur quas, dignissimos ut non fuga in esse perspiciatis excepturi eaque saepe tempore voluptatibus. Ipsam expedita inventore id doloremque? Libero eligendi saepe aspernatur rem accusamus iure cupiditate vitae totam recusandae est autem, aut sapiente, accusantium facilis eum odio quas asperiores reprehenderit voluptatem numquam deleniti neque maiores. Debitis facere quod, sint deleniti veniam rem. ', NULL, '2024-05-12 03:13:46', '2024-05-12 03:13:46'),
	(3, 'Third Article', NULL, NULL, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nulla veritatis nesciunt voluptas totam corporis aliquid culpa sapiente nihil temporibus, non commodi ea nam consequuntur sunt dolores libero aspernatur quae quidem adipisci possimus vero fuga. Consequatur placeat earum sapiente inventore ea quaerat. Porro accusantium corporis iusto ipsa adipisci consectetur quas, dignissimos ut non fuga in esse perspiciatis excepturi eaque saepe tempore voluptatibus. Ipsam expedita inventore id doloremque? Libero eligendi saepe aspernatur rem accusamus iure cupiditate vitae totam recusandae est autem, aut sapiente, accusantium facilis eum odio quas asperiores reprehenderit voluptatem numquam deleniti neque maiores. Debitis facere quod, sint deleniti veniam rem. ', NULL, '2024-05-12 03:14:02', '2024-05-12 03:14:02');

-- Dumping structure for table laravel_learn.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_learn.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
