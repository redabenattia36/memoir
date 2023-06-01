-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 30 mai 2023 à 14:23
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecom_store`
--

-- --------------------------------------------------------

--
-- Structure de la table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Project', 'mémoire fin d\'étude de barech marouan nouaim et ben attia reda \r\n', 'le projet est un site  e-commerce basee sur des microservice \r\n\r\nCo-encadrant : Dr.Kherissi Farida\r\nEncadrant : Dr.Taleb Nada ');

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'benatttia', 'ridabenattia36@gmail.com', '123456789', 'rida.jpg', '+213792962223', 'algeria', 'Front-End Developer', ' etudiant de badji mokhtar - sidi ammar - annaba '),
(3, 'nouaim', 'nouaim@gmail.com', 'nouaim123456', 'nouaim.jpg', '0550304015', 'alger', 'fournisseur', ' said hamdulah');

-- --------------------------------------------------------

--
-- Structure de la table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Feminine', 'no', 'feminelg.png'),
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'yes', 'othericon.png'),
(5, 'Men', 'yes', 'malelg.png');

-- --------------------------------------------------------

--
-- Structure de la table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ridabenattia36@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 14, 'Sale', '65', 'CODEASTRO', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(1, 'reda', 'ridaben@gmail.com', 'rida2336', 'alge', 'annaba', '0792962223', 'sidi ammar', 'rida.jpg', '::1', '2014354775');

-- --------------------------------------------------------

--
-- Structure de la table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 03:52:58', 'pending'),
(33, 7, 35, 1422807346, 1, 'Select a Size', '2023-05-18 05:50:18', 'Complete'),
(34, 7, 0, 1894975166, 0, 'Select a Size', '2023-05-25 10:23:03', 'Complete'),
(35, 1, 0, 835118675, 0, 'Select a Size', '2023-05-26 00:17:07', 'Complete'),
(36, 1, 0, 835118675, 0, 'Select a Size', '2023-05-28 12:24:59', 'Complete'),
(37, 1, 245, 348361211, 1, 'Select a Size', '2023-05-26 15:40:30', 'pending'),
(38, 1, 0, 1233195979, 0, 'Select a Size', '2023-05-26 20:00:27', 'pending'),
(39, 1, 0, 1233195979, 0, 'Select a Size', '2023-05-26 20:00:27', 'pending'),
(40, 1, 120, 1186361523, 1, 'Select a Size', '2023-05-26 22:40:10', 'pending'),
(41, 1, 0, 1186361523, 0, 'Select a Size', '2023-05-26 22:40:48', 'Complete'),
(42, 1, 0, 407284481, 0, 'Select a Size', '2023-05-27 22:08:20', 'pending'),
(43, 1, 100, 2089966625, 1, 'Select a Size', '2023-05-27 22:54:27', 'pending'),
(44, 1, 0, 1483000529, 0, 'Select a Size', '2023-05-28 12:22:03', 'pending'),
(45, 1, 241, 1816339401, 1, 'Select a Size', '2023-05-28 12:23:35', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Structure de la table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'adilg.png'),
(3, 'Nike', 'no', 'niketransl.png'),
(4, 'Philip Plein', 'no', 'pplg.png'),
(5, 'Lacoste', 'no', 'lacostelg.png'),
(7, 'Polo', 'no', 'polobn.jpg'),
(8, 'Gildan 1800', 'no', 'sample_img360.png');

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(27, 11, 1111, 'Select Payment Mode', 111, 111, '1111'),
(28, 123, 123, 'Bank Code', 123, 123, '123'),
(29, 9999, 8888, 'Western Union', 2123456, 159, '26/05/2023'),
(30, 0, 0, 'Bank Code', 0, 0, 'ddd'),
(31, 123, 220, 'Bank Code', 1235, 1205, '26/05/2023');

-- --------------------------------------------------------

--
-- Structure de la table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(42, 1, 407284481, '32', 0, 'Select a Size', 'pending'),
(43, 1, 2089966625, '27', 1, 'Select a Size', 'pending'),
(44, 1, 1483000529, '33', 0, 'Select a Size', 'pending'),
(45, 1, 1816339401, '33', 1, 'Select a Size', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(18, 6, 2, 8, '2023-05-27 17:32:50', 'jupe ', 'jupe-femme', 'thrift.lov3r-20230527-0001.jpg', 'thrift.lov3r-20230527-0002.jpg', 'thrift.lov3r-20230527-0003.jpg', 35, 35, '\r\n\r\njupe ventage femme old dress\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'jupe', 'New', 'product'),
(19, 6, 2, 8, '2023-05-27 15:58:43', 'chemise', 'chemis-old', 'thrift.lov3r-20230527-0004.jpg', 'thrift.lov3r-20230527-0005.jpg', 'thrift.lov3r-20230527-0006.jpg', 65, 65, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'chemise', 'New', 'product'),
(20, 6, 2, 4, '2023-05-27 17:27:42', 'robe', 'robe - sweet', 'thrift.lov3r-20230527-0007.jpg', 'thrift.lov3r-20230527-0008.jpg', 'thrift.lov3r-20230527-0009.jpg', 100, 100, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'robe', 'old', 'product'),
(21, 4, 2, 7, '2023-05-27 16:26:32', 'jupe', 'jupe-polo', 'thrift.lov3r-20230527-0012.jpg', 'thrift.lov3r-20230527-0013.jpg', 'thrift.lov3r-20230527-0014.jpg', 220, 220, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jupe', 'old', 'product'),
(22, 6, 2, 2, '2023-05-27 22:57:11', 'pulle-primarque', 'primarque-t-sherrt', 'thrift.lov3r-20230527-0017.jpg', 'thrift.lov3r-20230527-0018.jpg', 'thrift.lov3r-20230527-0019.jpg', 150, 150, '\r\n\r\nold  pull\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'old', 'new', 'product'),
(23, 4, 2, 4, '2023-05-27 22:57:44', 'robe- jeans', 'primarque-jeans', 'thrift.lov3r-20230527-0020.jpg', 'thrift.lov3r-20230527-0021.jpg', 'thrift.lov3r-20230527-0022.jpg', 160, 160, '\r\nneveau\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'neveau', 'new', 'product'),
(24, 5, 3, 2, '2023-05-27 22:58:12', 'pull-puma', 'puma-portugal', 'thrift.lov3r-20230527-0023.jpg', 'thrift.lov3r-20230527-0024.jpg', 'thrift.lov3r-20230527-0025.jpg', 350, 350, '\r\n\r\n\r\nold\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'pull', 'old', 'product'),
(25, 4, 2, 4, '2023-05-27 22:58:29', 'robe', 'o-v-s', 'thrift.lov3r-20230527-0026.jpg', 'thrift.lov3r-20230527-0027.jpg', 'thrift.lov3r-20230527-0028.jpg', 260, 260, '\r\n\r\n\r\nneveau\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'neveau', 'old', 'product'),
(26, 8, 2, 4, '2023-05-27 22:59:12', 'jup', 'jupe-o-v-s', 'thrift.lov3r-20230527-0030.jpg', 'thrift.lov3r-20230527-0031.jpg', 'thrift.lov3r-20230527-0032.jpg', 158, 158, '\r\n\r\nneveau\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'jupe', 'neveau', 'product'),
(27, 8, 2, 4, '2023-05-27 22:59:32', 'robe', 'robe-o-v-s-robe', 'thrift.lov3r-20230527-0037.jpg', 'thrift.lov3r-20230527-0038.jpg', 'thrift.lov3r-20230527-0039.jpg', 100, 100, '\r\n\r\nold\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'robe', 'old', 'product'),
(28, 6, 2, 8, '2023-05-27 23:01:45', 'jup', 'jup-vet-meletaire', 'thrift.lov3r-20230527-0042.jpg', 'thrift.lov3r-20230527-0043.jpg', 'thrift.lov3r-20230527-0044.jpg', 150, 150, '\r\n\r\n\r\n\r\nold\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'jup', 'old', 'product'),
(29, 8, 2, 8, '2023-05-27 23:02:14', 'chemise', 'chemise-TSS', 'thrift.lov3r-20230527-0046.jpg', 'thrift.lov3r-20230527-0047.jpg', 'thrift.lov3r-20230527-0047.jpg', 120, 120, '\r\n\r\n\r\nold\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'chemise', 'old', 'product'),
(30, 8, 2, 7, '2023-05-27 23:02:36', 'sous-vetement', 'sous-vetemant -primarque', 'thrift.lov3r-20230527-0048.jpg', 'thrift.lov3r-20230527-0049.jpg', 'thrift.lov3r-20230527-0050.jpg', 200, 200, '\r\n\r\nneveau\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'sous-vetement', 'neveau', 'product'),
(31, 9, 4, 8, '2023-05-27 23:03:00', 'sous-vetemant jeans', 'sous-vetemant-jeans', 'thrift.lov3r-20230527-0051.jpg', 'thrift.lov3r-20230527-0052.jpg', 'thrift.lov3r-20230527-0053.jpg', 200, 200, '\r\n\r\n\r\nold\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'old', 'old', 'product'),
(32, 8, 4, 8, '2023-05-27 23:03:19', 'jup', 'jup-primarque-old', 'thrift.lov3r-20230527-0057.jpg', 'thrift.lov3r-20230527-0056.jpg', 'thrift.lov3r-20230527-0057.jpg', 140, 140, '\r\n\r\n\r\nold\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'jup', 'old', 'product'),
(33, 5, 5, 2, '2023-05-27 23:03:34', 'tée -shirt sportif', 'tshirtss-ss', 'thrift.lov3r-20230527-0059.jpg', 'thrift.lov3r-20230527-0059.jpg', 'thrift.lov3r-20230527-0060.jpg', 241, 241, '\r\n\r\n\r\n\r\n\r\n\r\nold\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'tée -shirt sportif', 'old', 'product');

-- --------------------------------------------------------

--
-- Structure de la table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'coaticn.png'),
(5, 'T-Shirts', 'no', 'tshirticn.png'),
(6, 'Sweater', 'no', 'sweatericn.png'),
(7, 'jackets', 'yes', 'jacketicn.png'),
(8, 'Sneakers', 'yes', 'sneakericn.png'),
(9, 'Trousers', 'no', 'trousericn.png');

-- --------------------------------------------------------

--
-- Structure de la table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(6, 7, 9),
(8, 1, 32);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Index pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Index pour la table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Index pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Index pour la table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111100003;

--
-- AUTO_INCREMENT pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
