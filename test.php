-------- banners {bann_pictures} ----
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `banners` ADD PRIMARY KEY (`banners_id`);
ALTER TABLE `banners` MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT;

-------- branches  ----
CREATE TABLE `branches` (
  `branches_id` int(11) NOT NULL,
  `branches_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `working_hours` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `branches` ADD PRIMARY KEY (`branches_id`);
ALTER TABLE `branches` MODIFY `branches_id` int(11) NOT NULL AUTO_INCREMENT;

-------- services {serv_pictures} ----
CREATE TABLE `services` (
  `services_id` int(11) NOT NULL,
  `services_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `font_awesome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uri_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `services` ADD PRIMARY KEY (`services_id`);
ALTER TABLE `services` MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT;

-------- pages {page_pictures} ----
CREATE TABLE `pages` (
  `pages_id` int(11) NOT NULL,
  `pages_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `pages` ADD PRIMARY KEY (`pages_id`);
ALTER TABLE `pages` MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT;

-------- customers ----
CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `col-sm-12 col-md-6` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `customers` ADD PRIMARY KEY (`customers_id`);
ALTER TABLE `customers` MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;

-------- appointments ----
CREATE TABLE `appointments` (
  `appointments_id` int(11) NOT NULL,
  `appointments_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `services_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `appointments` ADD PRIMARY KEY (`appointments_id`);
ALTER TABLE `appointments` MODIFY `appointments_id` int(11) NOT NULL AUTO_INCREMENT;

-------- videos {vide_pictures} ----
CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL,
  `videos_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `videos` ADD PRIMARY KEY (`videos_id`);
ALTER TABLE `videos` MODIFY `videos_id` int(11) NOT NULL AUTO_INCREMENT;

-------- why_choose_us ----
CREATE TABLE `why_choose_us` (
  `why_choose_us_id` int(11) NOT NULL,
  `why_choose_us_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `why_choose_us` ADD PRIMARY KEY (`why_choose_us_id`);
ALTER TABLE `why_choose_us` MODIFY `why_choose_us_id` int(11) NOT NULL AUTO_INCREMENT;

-------- customer_reviews ----
CREATE TABLE `customer_reviews` (
  `customer_reviews_id` int(11) NOT NULL,
  `customer_reviews_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `reviews_date` date NOT NULL,
  `reviews_rating` double NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `customer_reviews` ADD PRIMARY KEY (`customer_reviews_id`);
ALTER TABLE `customer_reviews` MODIFY `customer_reviews_id` int(11) NOT NULL AUTO_INCREMENT;

-------- news_articles {news_pictures} ----
CREATE TABLE `news_articles` (
  `news_articles_id` int(11) NOT NULL,
  `news_articles_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uri_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_articles_date` date NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `news_articles` ADD PRIMARY KEY (`news_articles_id`);
ALTER TABLE `news_articles` MODIFY `news_articles_id` int(11) NOT NULL AUTO_INCREMENT;
