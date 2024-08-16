-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2023 at 06:53 AM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_aggregator`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Oliver C. Ruppel', 'oliver-c-ruppel', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(2, 'Greg Auman', 'greg-auman', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(3, 'Julia Jacobo', 'julia-jacobo', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(4, 'Andrea Grimes', 'andrea-grimes', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(5, 'Sara Morrison', 'sara-morrison', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(6, 'Spiegel Online', 'spiegel-online', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(7, 'Peter Bradshaw', 'peter-bradshaw', '2023-06-06 03:05:01', '2023-06-06 03:05:01'),
(8, 'Phil Hoad', 'phil-hoad', '2023-06-06 03:05:01', '2023-06-06 03:05:01'),
(9, 'Wendy Ide', 'wendy-ide', '2023-06-06 03:05:02', '2023-06-06 03:05:02'),
(10, 'Andrew Pulver', 'andrew-pulver', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(11, 'Adrian Horton', 'adrian-horton', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(12, 'Benjamin Lee', 'benjamin-lee', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(13, 'Leslie Felperin', 'leslie-felperin', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(14, 'Charles Bramesco', 'charles-bramesco', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(15, 'Phuong Le', 'phuong-le', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(16, 'Mark Kermode', 'mark-kermode', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(17, 'Anthony Quinn', 'anthony-quinn', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(18, 'Luke Buckmaster', 'luke-buckmaster', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(19, 'Jonathan Romney', 'jonathan-romney', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(20, 'Michael Sun', 'michael-sun', '2023-06-06 03:05:03', '2023-06-06 03:05:03'),
(21, ' Helene Cooper, Eric Schmitt and Julian E. Barnes', 'helene-cooper-eric-schmitt-and-julian-e-barnes', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(22, ' Paul Sonne', 'paul-sonne', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(23, ' Tracey Tull', 'tracey-tull', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(24, ' Katie Rogers', 'katie-rogers', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(25, ' Andrew Higgins', 'andrew-higgins', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(26, ' Peter Baker', 'peter-baker', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(27, 'unknown', 'unknown', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(28, ' Maggie Astor', 'maggie-astor', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(29, ' Adam Liptak', 'adam-liptak', '2023-06-06 03:05:15', '2023-06-06 03:05:15'),
(30, ' Thomas Fuller', 'thomas-fuller', '2023-06-06 03:05:15', '2023-06-06 03:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Business', 'business', NULL, NULL),
(2, 'Entertainment', 'entertainment', NULL, NULL),
(3, 'General', 'general', NULL, NULL),
(4, 'Health', 'health', NULL, NULL),
(5, 'Science', 'science', NULL, NULL),
(6, 'Sports', 'sports', NULL, NULL),
(7, 'Technology', 'technology', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
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
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_02_160345_create_categories_table', 1),
(6, '2023_06_02_161033_create_sources_table', 1),
(7, '2023_06_02_161225_create_authors_table', 1),
(8, '2023_06_02_161900_create_news_table', 1),
(9, '2023_06_04_063105_create_real_sources_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `content` longtext DEFAULT NULL,
  `api_source_id` bigint(20) UNSIGNED NOT NULL,
  `real_source_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` longtext DEFAULT NULL,
  `web_url` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `api_source_id`, `real_source_id`, `category_id`, `author_id`, `image_url`, `web_url`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'OPINION | Civil disobedience and the climate activist movement: A last resort for action?', 'The general inaction of the state and corporates on climate change has led climate activists, especially in Europe and the US, to resort to drastic measures, writes Oliver C. Ruppel.', 'In the absence of a global and concerted effort to address climate change, civil disobedience and the climate activist movement seem to be a last resort for some, writes Oliver C. Ruppel.\r\nClimate ch… [+7235 chars]', 1, 1, 3, 1, 'https://cdn.24.co.za/files/Cms/General/d/7936/a7da72565b1441fba91bb4c026b34898.jpg', 'https://www.news24.com/fin24/climate_future/solutions/opinion-civil-disobedience-and-the-climate-activist-movement-a-last-resort-for-action-20230602', '2023-06-05 05:00:27', NULL, NULL),
(2, 'Kerrith Whyte breaks loose in Memphis Showboats\' fifth consecutive win', 'The Memphis Showboats continued their turnaround season with a victory over the New Jersey Generals, hard-earned by forcing turnovers and resiliency.', 'CANTON, Ohio As much as the Memphis Showboats controlled Sunday\'s game, grinding out a 2-to-1 advantage in time of possession, the New Jersey Generals had stuck around just enough to be dangerous and… [+3234 chars]', 1, 2, 3, 2, 'https://a57.foxsports.com/statics.foxsports.com/www.foxsports.com/content/uploads/2023/06/1408/814/06.04.23_USFL-Takeaways_Showboats-Generals_Horizontal.jpg?ve=1&tl=1', 'http://www.foxsports.com/stories/usfl/showboats-generals-takeaways', '2023-06-04 21:21:17', NULL, NULL),
(3, 'More than a dozen migrants transported to California via private plane, state officials say', 'The state attorney general described the move as \"state-sanctioned kidnapping.\"', 'More than a dozen migrants were dropped off on the doorstep of a California church after being transported to the state via private plane, according to state officials.\r\nThe migrants were dropped off… [+2482 chars]', 1, 3, 3, 3, 'https://s.abcnews.com/images/US/catholic-diosece-sacramento-ht-lv-230604_1685889617713_hpMain_16x9_992.jpg', 'https://abcnews.go.com/US/dozen-migrants-transported-california-private-plane-state-officials/story?id=99821892', '2023-06-04 14:56:23', NULL, NULL),
(4, 'Ken Paxton and Texas Republicans\' troubles could have national implications', 'A nearly equal match of Republicans and Democrats in the Texas House overwhelmingly voted to impeach Republican Attorney General Ken Paxton.', 'Its been a heck of a week for Texans fed up with the antics of our criminally indicted, philandering Republican Attorney General Ken Paxton. In an unprecedented bipartisan move, a nearly equal match … [+5641 chars]', 1, 4, 3, 4, 'https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/rockcms/2023-06/230602-anti-abortion-activist-florida-se-525p-fbc184.jpg', 'https://www.msnbc.com/opinion/msnbc-opinion/ken-paxton-texas-republicans-impeachment-2020-rcna87510', '2023-06-04 10:00:00', NULL, NULL),
(5, 'Surgeon general issues advisory on kids’ mental health and social media platforms like Instagram and TikTok', '“Our children have become unknowing participants in a decades-long experiment.”', 'The latest onslaught of child internet safety bills is upon us as expected, and it may soon intersect with Americas ongoing culture war. \r\nAs more evidence emerges that internet platforms can harm ch… [+11635 chars]', 1, 5, 3, 5, 'https://cdn.vox-cdn.com/thumbor/kt3o4ZiIo1KGAozZB_-Se8Nwbzo=/0x98:5121x2779/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/24633619/GettyImages_695859632.jpg', 'https://www.vox.com/technology/2023/5/5/23711477/kids-online-safety-act-social-media-pornography', '2023-05-05 10:00:00', NULL, NULL),
(6, 'Neuer Quds-Kommandeur Ghaani: Technokrat des Terrors', 'Der iranische Topgeneral Qasem Soleimani war keine 24 Stunden tot, da präsentierte Iran seinen Nachfolger: Ismail Ghaani. Warum der die Schattenkrieger der Quds-Brigade anders führen wird - ihr Ziel aber das gleiche bleibt.', 'Dienstag, 07.01.2020  \r\n19:09 Uhr\r\nDer Mann, den das iranische Staatsfernsehen am Montag zeigt, trägt eine schlichte olivgrüne Uniform, er weint, kniet sich nieder - und küsst den vor ihm aufgebarten… [+4031 chars]', 1, 6, 3, 6, 'https://cdn1.spiegel.de/images/image-1503554-860_poster_16x9-uduu-1503554.jpg', 'http://www.spiegel.de/politik/ausland/iran-ismail-ghaani-ist-neuer-chef-der-quds-brigade-a-1303791.html', '2020-01-07 18:09:00', NULL, NULL),
(7, 'Rekonstruktion der Tötung Soleimanis: Die letzten Minuten des Schattenkriegers', 'Als Irans General Soleimani am 3. Januar in Bagdad landet, warten auf dem Rollfeld zwei Autos, ein Toyota und ein Hyundai. Da hat Donald Trump den Befehl schon erteilt.', NULL, 1, 6, 3, 6, 'https://www.spiegel.de/plus/images/5b5a466c-a775-49fb-afd8-85ec25ac3810_w1200_r1_fpx46_fpy27_wm.jpg', 'https://www.spiegel.de/plus/drohnenangriff-auf-qasem-soleimani-auf-dem-rollfeld-warteten-bereits-zwei-autos-a-393afdbc-f714-4ae6-bb45-61bb855f76d4', '2020-01-07 13:00:57', NULL, NULL),
(8, 'The Woman King review – Viola Davis leads the line in stirring warrior tale', 'The Woman King review – Viola Davis leads the line in stirring warrior tale', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/9e3ee88ea5a4e1a2a90b3691b98f197ebd9f7531/74_0_1000_600/500.jpg', 'https://www.theguardian.com/film/2022/oct/04/the-woman-king-review-viola-davis-leads-the-line-in-stirring-warrior-tale', '2022-10-04 12:00:38', NULL, NULL),
(9, 'Manifesto review – Corbyn’s campaigners keep calm and carry on in Labour election film', 'Manifesto review – Corbyn’s campaigners keep calm and carry on in Labour election film', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/8c5ef90f6850c1279d5e9709447c08ce61b06285/10_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2022/jun/14/manifesto-review-corbyns-campaigners-keep-calm-and-carry-on-daniel-draper', '2022-06-14 14:00:03', NULL, NULL),
(10, 'Ambush review – battle fatigued Nam actioner fights worn-out war tropes', 'Ambush review – battle fatigued Nam actioner fights worn-out war tropes', 'Film', 3, 7, 3, 8, 'https://media.guim.co.uk/46ca32bd0055433cee7cf033cd9084c091d82079/0_21_2044_1227/500.jpg', 'https://www.theguardian.com/film/2023/feb/27/ambush-review-battle-fatigued-nam-actioner-fights-worn-out-war-tropes', '2023-02-27 11:00:47', NULL, NULL),
(11, 'Blue Bag Life review – a remarkable memoir of life with a drug-addict mother', 'Blue Bag Life review – a remarkable memoir of life with a drug-addict mother', 'Film', 3, 7, 3, 9, 'https://media.guim.co.uk/77bba3793112fd0e608b4845844215a48281e831/2_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2023/apr/08/blue-bag-life-review-a-remarkable-memoir-of-life-with-a-drug-addict-mother-lisa-selby', '2023-04-08 14:00:23', NULL, NULL),
(12, 'Loving Highsmith review – Ripley author tribute soft-pedals writer’s nasty side', 'Loving Highsmith review – Ripley author tribute soft-pedals writer’s nasty side', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/73a10e27eb9975ac4a9948b2564d55d3bdd35f86/61_0_1799_1080/500.jpg', 'https://www.theguardian.com/film/2023/apr/11/loving-highsmith-review-patricia-documentary-ripley', '2023-04-11 08:00:43', NULL, NULL),
(13, '5-25-77 review – energetic ode to Star Wars, the movie that changed it all', '5-25-77 review – energetic ode to Star Wars, the movie that changed it all', 'Film', 3, 7, 3, 8, 'https://media.guim.co.uk/925ba4fbebb7e8d345adefa0b1114f1b794520c3/0_205_3072_1843/500.jpg', 'https://www.theguardian.com/film/2023/apr/27/5-25-77-review-ode-to-cinema-movie-star-wars', '2023-04-27 06:00:24', NULL, NULL),
(14, 'Mary Cassatt: Painting the Modern Woman review – fine portrait of a neglected artist', 'Mary Cassatt: Painting the Modern Woman review – fine portrait of a neglected artist', 'Film', 3, 7, 3, 10, 'https://media.guim.co.uk/2f5c58b8c571357f4b0d46dd83343ce92bdd40c4/0_114_4000_2400/500.jpg', 'https://www.theguardian.com/film/2023/mar/07/mary-cassatt-painting-the-modern-woman-review-fine-portrait-of-a-neglected-artist', '2023-03-07 09:22:36', NULL, NULL),
(15, 'Monster review – Hirokazu Kore-eda’s hydra of modern morals and manners', 'Monster review – Hirokazu Kore-eda’s hydra of modern morals and manners', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/626487df15a0d993cc61172bd2b467256a521344/0_510_6818_4094/500.jpg', 'https://www.theguardian.com/film/2023/may/17/monster-review-hydra-of-modern-morals-and-manners', '2023-05-17 19:05:37', NULL, NULL),
(16, 'Atomic Hope review – a powerful case for pressing the nuclear power button', 'Atomic Hope review – a powerful case for pressing the nuclear power button', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/2a7338c7f0c7961bea5c39f89d67c73ed503d3a8/382_0_7500_4500/500.jpg', 'https://www.theguardian.com/film/2023/feb/15/atomic-hope-review-nuclear-power', '2023-02-15 09:00:07', NULL, NULL),
(17, 'The Whale review – Brendan Fraser is remarkable in knotty drama of self-destruction', 'The Whale review – Brendan Fraser is remarkable in knotty drama of self-destruction', 'Film', 3, 7, 3, 9, 'https://media.guim.co.uk/38bd68706b027f12276a6bdb23d46534652535dd/0_0_4830_2899/500.jpg', 'https://www.theguardian.com/film/2023/feb/05/the-whale-review-brendan-fraser-remarkable-in-knotty-drama-of-self-destruction-darren-aronofsky', '2023-02-05 11:00:20', NULL, NULL),
(18, 'Four Seasons in a Day review – playful amble along Ireland’s post-Brexit borderland', 'Four Seasons in a Day review – playful amble along Ireland’s post-Brexit borderland', 'Film', 3, 7, 3, 8, 'https://media.guim.co.uk/e404a8d9d583e5e2fc7a0455750b0737288b7d5c/75_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2023/feb/13/four-seasons-in-a-day-review-playful-amble-along-irelands-post-brexit-borderland', '2023-02-13 07:00:45', NULL, NULL),
(19, 'Asteroid City review – Wes Anderson’s 1950s sci-fi is an exhilarating triumph of pure style', 'Asteroid City review – Wes Anderson’s 1950s sci-fi is an exhilarating triumph of pure style', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/e7022c1012b068517a4fdef4e0499743cce0ae8a/0_179_3889_2335/500.jpg', 'https://www.theguardian.com/film/2023/may/23/asteroid-city-review-wes-anderson-1950s-sci-fi-triumph', '2023-05-23 17:23:47', NULL, NULL),
(20, 'Theater Camp review – lackluster musical theater comedy falls flat', 'Theater Camp review – lackluster musical theater comedy falls flat', 'Film', 3, 7, 3, 11, 'https://media.guim.co.uk/de88fb2f586a55ba13448b3d67d08f565f0b1cea/120_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2023/jan/23/theater-camp-review-sundance-film-festival', '2023-01-23 12:39:09', NULL, NULL),
(21, 'Your Place or Mine review – Netflix romcom has big stars but little charm ', 'Your Place or Mine review – Netflix romcom has big stars but little charm ', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/c23b382d2c70081cbb57bfcc2fe8920a0e78ca51/1183_369_3829_2297/500.jpg', 'https://www.theguardian.com/film/2023/feb/09/your-place-or-mine-review-netflix-romcom-reese-witherspoon-ashton-kutcher', '2023-02-10 00:00:16', NULL, NULL),
(22, 'Charm Circle review – Grey Gardens-ish portrait of director’s dysfunctional family', 'Charm Circle review – Grey Gardens-ish portrait of director’s dysfunctional family', 'Film', 3, 7, 3, 13, 'https://media.guim.co.uk/96981b4bc7db23549b7ad8e79e1847c8676df88f/73_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2023/feb/20/charm-circle-review-grey-gardens-ish-portrait-of-directors-dysfunctional-family', '2023-02-20 11:00:35', NULL, NULL),
(23, 'The Waldheim Waltz review – stark tale of truth, lies and politics in postwar Austria', 'The Waldheim Waltz review – stark tale of truth, lies and politics in postwar Austria', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/2feb860978665223cfcdccd1f537350ad39e7c04/0_277_2200_1320/500.jpg', 'https://www.theguardian.com/film/2022/mar/21/the-waldheim-waltz-review-stark-tale-of-truth-lies-and-politics-in-postwar-austria', '2022-03-21 15:00:28', NULL, NULL),
(24, 'Lunana: A Yak in the Classroom review – heart and feet-warming tale of a Bhutan village', 'Lunana: A Yak in the Classroom review – heart and feet-warming tale of a Bhutan village', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/988e62b2ee934fa36be6d51555dd89c0f32b01ee/146_0_1430_858/500.jpg', 'https://www.theguardian.com/film/2023/mar/09/lunana-a-yak-in-the-classroom-review-pawo-choyning-dorji', '2023-03-09 09:00:05', NULL, NULL),
(25, 'Transformers: Rise of the Beasts review – limp, lifeless robot sequel', 'Transformers: Rise of the Beasts review – limp, lifeless robot sequel', 'Film', 3, 7, 3, 14, 'https://media.guim.co.uk/d6da2035a8fa7554262ff3ecc3c50073fa1514d6/0_176_2767_1660/500.jpg', 'https://www.theguardian.com/film/2023/jun/05/transformers-rise-of-the-beasts-review-sequel', '2023-06-06 04:01:01', NULL, NULL),
(26, 'Golda review – lifeless Meir biopic hides Helen Mirren’s talent in a cloud of cigarette smoke ', 'Golda review – lifeless Meir biopic hides Helen Mirren’s talent in a cloud of cigarette smoke ', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/39ea6962517df9581d48191d2a1ab4bd9989c98b/353_103_2335_1401/500.jpg', 'https://www.theguardian.com/film/2023/feb/20/golda-review-lifeless-meir-biopic-hides-helen-mirrens-talent-in-a-cloud-of-cigarette-smoke', '2023-02-20 21:58:46', NULL, NULL),
(27, 'The Boogeyman review – deftly made yet derivative Stephen King horror', 'The Boogeyman review – deftly made yet derivative Stephen King horror', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/ff35ca295cbb96ff5d699c0ede4377adffef6e43/0_202_6240_3744/500.jpg', 'https://www.theguardian.com/film/2023/may/30/the-boogeyman-movie-review-stephen-king', '2023-05-30 19:49:23', NULL, NULL),
(28, 'Amsterdam review – turn of the screwball in David O Russell’s starry muddle', 'Amsterdam review – turn of the screwball in David O Russell’s starry muddle', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/7a1e5457b97038dc2f9bd3d7df4e12a14aa0f3a2/424_207_3300_1981/500.jpg', 'https://www.theguardian.com/film/2022/sep/28/amsterdam-review-david-o-russell-john-david-washington-christian-bale-margot-robbie', '2022-09-28 15:39:56', NULL, NULL),
(29, 'The Harbinger review – lockdown horror makes neat use of Covid-19', 'The Harbinger review – lockdown horror makes neat use of Covid-19', 'Film', 3, 7, 3, 13, 'https://media.guim.co.uk/4f8dedb545ab0d84713ebd1ea1a3874fd95e5f0f/136_0_3223_1934/500.jpg', 'https://www.theguardian.com/film/2023/jan/17/the-harbinger-review-lockdown-horror-makes-neat-use-of-covid-19', '2023-01-17 11:00:31', NULL, NULL),
(30, 'Mia and Me: The Hero of Centopia review – kids TV show upscaled for big screen', 'Mia and Me: The Hero of Centopia review – kids TV show upscaled for big screen', 'Film', 3, 7, 3, 8, 'https://media.guim.co.uk/bfacaba94dcd351ce4abb37956d10f6e98c85f11/526_0_3703_2222/500.jpg', 'https://www.theguardian.com/film/2022/oct/17/mia-and-me-the-hero-of-centopia-review-pastel-coloured-paradise-under-threat', '2022-10-23 16:30:03', NULL, NULL),
(31, 'Inland Empire review – David Lynch’s fascinatingly unwholesome altered-states horror', 'Inland Empire review – David Lynch’s fascinatingly unwholesome altered-states horror', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/22d28376bb62dcb2e75cc87d3ed5eb45ca78dc01/0_47_1400_840/500.jpg', 'https://www.theguardian.com/film/2007/mar/09/thriller', '2023-05-24 11:10:10', NULL, NULL),
(32, 'Lyra review – brilliant life and tragic death of Northern Ireland’s fearless young reporter ', 'Lyra review – brilliant life and tragic death of Northern Ireland’s fearless young reporter ', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/80f4a9150fee611aad78cf3a0db9814d1d07cb4d/305_137_1340_804/500.jpg', 'https://www.theguardian.com/film/2022/nov/02/lyra-review-brilliant-life-and-tragic-death-of-northern-irelands-fearless-young-reporter', '2022-11-02 09:00:00', NULL, NULL),
(33, 'The Woman King review – a thunderously cinematic good time', 'The Woman King review – a thunderously cinematic good time', 'Film', 3, 7, 3, 9, 'https://media.guim.co.uk/7b5f4e06359b59a8264ce801307dd5b2bde6a8d9/691_18_2369_1421/500.jpg', 'https://www.theguardian.com/film/2022/oct/01/the-woman-king-review-a-thunderously-cinematic-good-time-viola-davis-gina-prince-bythewood-sheila-atim', '2022-10-01 14:00:10', NULL, NULL),
(34, 'The Swimmers review – inspiring Olympian refugee story told in broad strokes', 'The Swimmers review – inspiring Olympian refugee story told in broad strokes', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/19b0a7305bd946ed2e59fca18ef0c5dbcdb034d5/0_240_3600_2160/500.jpg', 'https://www.theguardian.com/film/2022/sep/09/the-swimmers-review-sally-el-hosaini-netflix', '2022-09-09 19:41:07', NULL, NULL),
(35, 'Dry Ground Burning review – engrossing portrait of all-female gang in Brasilia favela', 'Dry Ground Burning review – engrossing portrait of all-female gang in Brasilia favela', 'Film', 3, 7, 3, 15, 'https://media.guim.co.uk/a66f108c5d40ffefd9e37e8108c24a5f229ced97/370_0_3598_2160/500.jpg', 'https://www.theguardian.com/film/2022/aug/29/dry-ground-burning-review-engrossing-portrait-of-all-female-gang-in-brasilia-favela', '2022-08-29 08:00:21', NULL, NULL),
(36, 'Enys Men review – Mark Jenkin’s Cornish psychodrama will sweep you away', 'Enys Men review – Mark Jenkin’s Cornish psychodrama will sweep you away', 'Film', 3, 7, 3, 16, 'https://media.guim.co.uk/69a9b8f7e829d3e0f057ff643d87c523d9cd2032/0_214_3764_2259/500.jpg', 'https://www.theguardian.com/film/2023/jan/15/enys-men-review-mark-jenkin-cornish-psychodrama-will-sweep-you-away', '2023-01-15 08:00:08', NULL, NULL),
(37, 'Creed III review – hugely entertaining threequel packs a mighty punch', 'Creed III review – hugely entertaining threequel packs a mighty punch', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/8e4b8472af38eb477b77f4709d5dcc4e90cd23b7/0_150_4500_2700/500.jpg', 'https://www.theguardian.com/film/2023/feb/23/creed-iii-michael-b-jordan-and-jonathan-majors-review', '2023-02-24 03:00:11', NULL, NULL),
(38, 'All Quiet on the Western Front review – anti-war nightmare of bloodshed and chaos', 'All Quiet on the Western Front review – anti-war nightmare of bloodshed and chaos', 'Film', 3, 7, 3, 7, 'https://media.guim.co.uk/2d7aaf5af5a4ecf2531fe90d4d8231bff93ea29e/0_2_6048_3627/500.jpg', 'https://www.theguardian.com/film/2022/oct/12/all-quiet-on-the-western-front-review-anti-war-nightmare-of-bloodshed-and-chaos', '2022-10-12 08:00:27', NULL, NULL),
(39, 'Navalny review – extraordinary documentary about the attempt to kill Putin’s rival', 'Navalny review – extraordinary documentary about the attempt to kill Putin’s rival', 'Film', 3, 7, 3, 9, 'https://media.guim.co.uk/a7561d2802431870b73cee6456be1952f31104be/138_95_1514_908/500.jpg', 'https://www.theguardian.com/film/2022/apr/10/navalny-review-alexei-extraordinary-documentary-assassination-attempt-poisoning', '2022-04-10 11:00:18', NULL, NULL),
(40, 'She Will review – atmospheric tale of post-menopausal revenge fantasies', 'She Will review – atmospheric tale of post-menopausal revenge fantasies', 'Film', 3, 7, 3, 13, 'https://media.guim.co.uk/ae3fdf20882447a232aa35f546141f1f694a576b/427_0_1933_1160/500.jpg', 'https://www.theguardian.com/film/2022/jul/19/she-will-review-thriller-horror-charlotte-colbert-alice-krige', '2022-07-19 12:00:00', NULL, NULL),
(41, 'Barry & Joan review – all-singing all-dancing vaudevillians get their moment in the sun', 'Barry & Joan review – all-singing all-dancing vaudevillians get their moment in the sun', 'Film', 3, 7, 3, 13, 'https://media.guim.co.uk/729515836feaf7d1142ceb4af65742ab206b1841/88_0_1799_1080/500.jpg', 'https://www.theguardian.com/film/2022/may/03/barry-joan-review-joyful-celebration-of-eccentric-entertainers', '2022-05-08 08:22:25', NULL, NULL),
(42, 'Hell Hath No Fury review – cleverly choreographed violence in a search for Nazi loot ', 'Hell Hath No Fury review – cleverly choreographed violence in a search for Nazi loot ', 'Film', 3, 7, 3, 15, 'https://media.guim.co.uk/0700ff234efff4496b4d7c4060b2d280f0f52fd7/0_0_1257_754/500.jpg', 'https://www.theguardian.com/film/2022/may/10/hell-hath-no-fury-review-cleverly-choreographed-violence-in-a-search-for-nazi-loot', '2022-05-10 08:00:32', NULL, NULL),
(43, 'The School for Good and Evil review – Netflix’s Harry Potter rip-off is a disaster', 'The School for Good and Evil review – Netflix’s Harry Potter rip-off is a disaster', 'Film', 3, 7, 3, 14, 'https://media.guim.co.uk/bea88147feaeb4af640bcbfab85bc4b0ad17d344/0_160_6000_3600/500.jpg', 'https://www.theguardian.com/film/2022/oct/19/the-school-for-good-and-evil-review-netflix-harry-potter-rip-off', '2022-10-19 13:24:07', NULL, NULL),
(44, 'Madly, Deeply: The Alan Rickman Diaries review – great actor, keen shopper, sharp wit', 'Madly, Deeply: The Alan Rickman Diaries review – great actor, keen shopper, sharp wit', 'Books', 3, 7, 3, 17, 'https://media.guim.co.uk/b185b43c4dfcc56a017a13b5d3230fb7d22073f5/0_72_1788_1073/500.jpg', 'https://www.theguardian.com/books/2022/oct/16/madly-deeply-the-alan-rickman-diaries-review-great-actor-keen-shopper-sharp-wit', '2022-10-16 14:00:37', NULL, NULL),
(45, 'Hello Dankness review – Tom Hanks becomes a Bernie bro in Soda Jerk’s latest triumph', 'Hello Dankness review – Tom Hanks becomes a Bernie bro in Soda Jerk’s latest triumph', 'Film', 3, 7, 3, 18, 'https://media.guim.co.uk/4db21a2974fb7c32a814711e13877f8c15cfd8ee/60_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2022/oct/20/hello-dankness-review-tom-hanks-becomes-a-bernie-bro-in-soda-jerks-latest-triumph', '2022-10-19 15:00:27', NULL, NULL),
(46, 'What’s Love Got to Do with It? review – slick Richard Curtis-esque Britcom ', 'What’s Love Got to Do with It? review – slick Richard Curtis-esque Britcom ', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/c4c96823e4e1f9ba7926d6700ec7bc56a91dc8cc/124_0_1000_600/500.jpg', 'https://www.theguardian.com/film/2022/sep/13/whats-love-got-to-do-with-it-review-slick-richard-curtis-esque-britcom', '2022-09-13 21:42:57', NULL, NULL),
(47, 'Cannon Arm and the Arcade Quest review – lovable gamers on mission to break record', 'Cannon Arm and the Arcade Quest review – lovable gamers on mission to break record', 'Film', 3, 7, 3, 13, 'https://media.guim.co.uk/2770e07ab0e768da090f95ff26787c29f3846831/60_0_1800_1080/500.jpg', 'https://www.theguardian.com/film/2022/jun/21/cannon-arm-and-the-arcade-quest-review-lovable-geeks-on-mission-to-break-record', '2022-06-21 12:00:00', NULL, NULL),
(48, 'Berlin film festival 2023 roundup – prestige, politics and ethical starpower', 'Berlin film festival 2023 roundup – prestige, politics and ethical starpower', 'Film', 3, 7, 3, 19, 'https://media.guim.co.uk/28a05f4b4f9e3f96c06702b32364b72fb9174c9e/0_0_6325_3795/500.jpg', 'https://www.theguardian.com/film/2023/feb/25/berlin-film-festival-2023-roundup-prestige-politics-and-ethical-starpower', '2023-02-25 08:00:46', NULL, NULL),
(49, 'The Inspection review – military drama mixes queerness with convention', 'The Inspection review – military drama mixes queerness with convention', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/272fb08ab0ca00a48db15f24ab0c2a470d07d91a/52_0_937_562/500.jpg', 'https://www.theguardian.com/film/2022/sep/09/the-inspection-review-military-drama-toronto-film-festival', '2022-09-09 17:55:57', NULL, NULL),
(50, 'Wyrmwood: Apocalypse review – gnarly zombie mayhem in splatterific sequel', 'Wyrmwood: Apocalypse review – gnarly zombie mayhem in splatterific sequel', 'Film', 3, 7, 3, 18, 'https://media.guim.co.uk/13f451523a969ab82e3b5507e64c23485102ea07/0_34_2700_1621/500.jpg', 'https://www.theguardian.com/film/2022/feb/17/wyrmwood-apocalypse-review-gnarly-zombie-mayhem-in-splatterific-sequel', '2022-02-16 16:30:12', NULL, NULL),
(51, 'Love in the Villa review – immediately forgettable Netflix romcom', 'Love in the Villa review – immediately forgettable Netflix romcom', 'Film', 3, 7, 3, 11, 'https://media.guim.co.uk/da2639e015fcf5621b0ce7807dee19eacfc9cb9d/0_400_6000_3600/500.jpg', 'https://www.theguardian.com/film/2022/sep/01/love-in-the-villa-review-immediately-forgettable-netflix-rom-com', '2022-09-01 07:01:47', NULL, NULL),
(52, 'Me Time review – Kevin Hart and Mark Wahlberg’s confused Netflix comedy', 'Me Time review – Kevin Hart and Mark Wahlberg’s confused Netflix comedy', 'Film', 3, 7, 3, 14, 'https://media.guim.co.uk/7d947bb2fe93fa8188548df5e79d60ba34366beb/0_4_3000_1800/500.jpg', 'https://www.theguardian.com/film/2022/aug/25/me-time-review-kevin-hart-mark-wahlberg-netflix', '2022-08-26 01:00:19', NULL, NULL),
(53, 'The Exorcism of God review – a big gaudy altarpiece of demonic horror', 'The Exorcism of God review – a big gaudy altarpiece of demonic horror', 'Film', 3, 7, 3, 8, 'https://media.guim.co.uk/cc4e4b6e83e55c9eece2733342d540bf06ee077e/426_0_2233_1340/500.jpg', 'https://www.theguardian.com/film/2022/mar/23/the-exorcism-of-god-review-a-big-gaudy-altarpiece-of-demonic-horror', '2022-03-23 09:00:25', NULL, NULL),
(54, 'Of an Age review – this Australian film is a modern queer classic', 'Of an Age review – this Australian film is a modern queer classic', 'Film', 3, 7, 3, 20, 'https://media.guim.co.uk/efb73c60fa44610d6c25776f89841dc492358816/0_122_2339_1404/500.jpg', 'https://www.theguardian.com/film/2022/aug/08/of-an-age-review-this-australian-film-is-a-modern-queer-classic', '2022-08-08 02:08:52', NULL, NULL),
(55, 'The Woman King review – Viola Davis rules over rousing action epic', 'The Woman King review – Viola Davis rules over rousing action epic', 'Film', 3, 7, 3, 12, 'https://media.guim.co.uk/73eb2b637b43e463bfca9e8f43ad16df920191e3/333_0_2857_1716/500.jpg', 'https://www.theguardian.com/film/2022/sep/10/the-woman-king-review-viola-davis-rules-over-rousing-action-epic', '2022-09-10 17:55:31', NULL, NULL),
(56, 'DC League of Super-Pets review – all-star cast carries cute superhero romp', 'DC League of Super-Pets review – all-star cast carries cute superhero romp', 'Film', 3, 7, 3, 11, 'https://media.guim.co.uk/d38a9936d26f3eb8d51500ea78c61993140dc445/226_0_1429_858/500.jpg', 'https://www.theguardian.com/film/2022/jul/28/dc-league-of-super-pets-review-the-rock-kevin-hart', '2022-07-28 13:01:55', NULL, NULL),
(57, 'Toronto film festival 2022 roundup – Spielberg, Mendes and a deep, joyous love of cinema', 'Toronto film festival 2022 roundup – Spielberg, Mendes and a deep, joyous love of cinema', 'Film', 3, 7, 3, 9, 'https://media.guim.co.uk/59f9ff219d27a2aaaa8647f76be5d9c9eaf71335/100_0_1000_600/500.jpg', 'https://www.theguardian.com/film/2022/sep/17/toronto-film-festival-2022-review-the-fabelmans-spielberg-empire-of-light-mendes-the-good-nurse-eddie-redmayne-the-woman-king-viola-davis-glass-onion-daniel-craig-the-menu-mark-mylod', '2022-09-17 11:00:43', NULL, NULL),
(58, 'U.S.', 'For months, U.S. officials said cross-border operations risked a dangerous escalation. But those fears have ebbed.', 'During the first year of Russia’s war in Ukraine, the Biden administration fretted constantly that if Kyiv hit back inside Russian borders, President Vladimir V. Putin would retaliate against not only Ukraine, but also possibly NATO and the West.', 2, 8, 3, 21, 'images/2023/06/05/multimedia/05dc-crossborder-1-kgwv/05dc-crossborder-1-kgwv-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/us/politics/ukraine-attacks-inside-russia.html', '2023-06-05 23:42:54', NULL, NULL),
(59, 'World', 'The Kremlin said it was investigating what it called a “hack” after a bogus speech aired on some radio and television networks.', 'A faked declaration of martial law and military mobilization by President Vladimir V. Putin of Russia aired Monday on a number of Russian radio and television networks, an incident that the Kremlin described as a “hack.”', 2, 8, 3, 22, 'images/2023/06/05/multimedia/05ukraine-briefing-russia-hack-fckv/05ukraine-briefing-russia-hack-fckv-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/world/europe/putin-deep-fake-speech-hackers.html', '2023-06-05 21:41:29', NULL, NULL),
(60, 'New York', 'The former governor, with his ready wit and considerable baggage, intends to jump into the Republican presidential primary on Tuesday.', 'Chris Christie left office in New Jersey with abysmal popularity ratings. His 2016 presidential run was a short-lived flop. He has a reputation as a bully and is perhaps best known for a notorious political retribution scheme called Bridgegate.', 2, 8, 3, 23, 'images/2023/06/05/multimedia/05nj-christie-01-cpjl/05nj-christie-01-cpjl-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/nyregion/chris-christie-donald-trump-2024-new-jersey.html', '2023-06-05 21:22:07', NULL, NULL),
(61, 'U.S.', 'President Biden hosted Mette Frederiksen, the prime minister of Denmark, at the White House on Monday, and much of the discussion revolved around providing support to Kyiv.', 'President Biden hosted Prime Minister Mette Frederiksen of Denmark at the White House on Monday to discuss security initiatives, including providing military support to Ukraine, amid reports that Kyiv may be stepping up its long-planned counteroffensive against Russian forces.', 2, 8, 3, 24, 'images/2023/06/05/multimedia/05dc-prexy-wtvh/05dc-prexy-wtvh-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/us/politics/biden-ukraine-denmark.html', '2023-06-05 21:06:57', NULL, NULL),
(62, 'World', 'Poland’s justice minister called the E.U. court of justice “corrupt,” after it ruled a judicial overhaul was illegal. He vowed not to comply, though that could cost Poland billions.', 'Rattled by a protest march through Warsaw on Sunday by up to half a million people, many of them waving Polish and European Union flags, Poland’s nationalist government lashed out angrily on Monday at the latest legal setback in a long-running feud with the European bloc over the rule of law.', 2, 8, 3, 25, 'images/2023/06/05/multimedia/05poland-eu-1-mcbk/05poland-eu-1-mcbk-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/world/europe/poland-eu-rule-of-law-judicial-overhaul.html', '2023-06-05 19:49:01', NULL, NULL),
(63, 'U.S.', 'Mr. Hanssen was sentenced to life in prison in 2002, bringing to a close one of the most lurid and damaging espionage cases in American history.', 'Robert P. Hanssen, a former F.B.I. agent who spied for Moscow off and on for more than two decades during and after the Cold War in one of the most damaging espionage cases in American history, was discovered dead in his prison cell in Colorado on Monday, federal authorities announced. He was 79.', 2, 8, 3, 26, 'images/2023/06/05/multimedia/05-xp-hanssen/00xp-hanssen-gmqb-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/us/robert-hanssen-spy-dead.html', '2023-06-05 19:17:15', NULL, NULL),
(64, 'Opinion', 'Two environmental organizations criticize the approach offered in an essay. Also: Trump’s MAGA army; Erdogan’s victory; canned music; A.I.; social media.', 'To the Editor:', 2, 8, 3, 27, 'images/2023/05/28/opinion/24slat/24slat-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/opinion/letters/plastics-pollution.html', '2023-06-05 18:36:55', NULL, NULL),
(65, 'U.S.', 'Mr. Sununu, the governor of New Hampshire, is more moderate than many members of his party and would have tested Republican voters’ appetite for a self-described “normal” candidate.', 'Gov. Chris Sununu of New Hampshire will not enter the Republican presidential race, he said on Monday, forgoing a campaign that would have tested the appetite of his party’s voters for a self-described “normal” candidate.', 2, 8, 3, 28, 'images/2023/05/08/multimedia/00pol-sununu-HFO-chbw/00pol-sununu-HFO-chbw-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/us/politics/chris-sununu-wont-run-president-2024.html', '2023-06-05 16:23:02', NULL, NULL),
(66, 'U.S.', 'In earlier cases, the justices struck down provisions of the trademark law that discriminated based on the speaker’s viewpoint.', 'The Supreme Court agreed on Monday to decide whether a California lawyer may trademark the phrase “Trump too small,” a reference to a taunt from Senator Marco Rubio, Republican of Florida, during the 2016 presidential campaign. Mr. Rubio said Donald J. Trump had “small hands,” adding: “And you know what they say about guys with small hands.”', 2, 8, 3, 29, 'images/2023/06/05/multimedia/05dc-scotus-vctg/05dc-scotus-vctg-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/us/politics/trump-too-small-supreme-court.html', '2023-06-05 15:33:43', NULL, NULL),
(67, 'U.S.', 'Fayçal Ziraoui flew to California from France, believing that the serial killer may have left a rock formation near a desolate lake.', 'Late last year, Fayçal Ziraoui, a French-Moroccan business consultant, was at his home in the Paris suburbs scrolling through satellite pictures of the Sierra Nevada when he came across an image that startled him.', 2, 8, 3, 30, 'images/2023/06/05/us/05californiatoday-zodiac-2/05californiatoday-zodiac-2-articleLarge.jpg', 'https://www.nytimes.com/2023/06/05/us/zodiac-killer-sierra-nevada.html', '2023-06-05 13:00:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'main', '2b3f50535ec0a62af21adc113bbae8701743cd5ab6c4f9e812c762654c4a96b3', '[\"*\"]', '2023-06-06 03:05:36', NULL, '2023-06-06 03:01:57', '2023-06-06 03:05:36'),
(4, 'App\\Models\\User', 1, 'main', '87b76a85ae86189a5e4f12194cf4f2572197b1b88e50695996afc130bcfd178b', '[\"*\"]', '2023-06-06 03:22:12', NULL, '2023-06-06 03:17:19', '2023-06-06 03:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `real_sources`
--

CREATE TABLE `real_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `real_sources`
--

INSERT INTO `real_sources` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'News24', 'news24', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(2, 'Fox Sports', 'fox-sports', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(3, 'ABC News', 'abc-news', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(4, 'MSNBC', 'msnbc', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(5, 'Recode', 'recode', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(6, 'Spiegel Online', 'spiegel-online', '2023-06-06 03:04:52', '2023-06-06 03:04:52'),
(7, 'The Gurdian', 'the-gurdian', '2023-06-06 03:05:01', '2023-06-06 03:05:01'),
(8, 'The New York Times', 'the-new-york-times', '2023-06-06 03:05:14', '2023-06-06 03:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'The News API', 'newsapi', NULL, NULL),
(2, 'The New York Times', 'newyorktimes', NULL, NULL),
(3, 'The Gurdian', 'the-gurdian', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `preferred_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preferred_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preferred_author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `preferred_source_id`, `preferred_category_id`, `preferred_author_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ronald Kimeli', 'kimeliryans@gmail.com', '$2y$10$xAnkskeGdnkiAwMCOv/N1uyTG7faBvRnLPyxrWWEZ1FSwzWdEhvea', 1, 2, 3, '2023-06-05 10:30:55', 'aCdUQgCCrD', '2023-06-05 10:30:55', '2023-06-05 10:30:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_description_unique` (`description`) USING HASH,
  ADD KEY `news_author_id_index` (`author_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `real_sources`
--
ALTER TABLE `real_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `real_sources_slug_unique` (`slug`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sources_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `real_sources`
--
ALTER TABLE `real_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
