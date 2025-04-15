-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 02:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories_subcategories`
--

CREATE TABLE `accessories_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accessories_subcategories`
--

INSERT INTO `accessories_subcategories` (`subcategory_id`, `name`, `image_file`) VALUES
(1, 'MousePads', '/images/subcategories/accessory-mousepads.jpg'),
(2, 'Wrist Rest', '/images/subcategories/accessory-wristrest.jpg'),
(3, 'Headset', '/images/subcategories/accessory-headset.jpg'),
(4, 'Others', '/images/subcategories/accessory-others.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `addon_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barebone_subcategories`
--

CREATE TABLE `barebone_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barebone_subcategories`
--

INSERT INTO `barebone_subcategories` (`subcategory_id`, `name`, `image_file`) VALUES
(1, 'Gasket', '/images/subcategories/barebone-gasket.jpg'),
(2, 'Spring', '/images/subcategories/barebone-spring.jpg'),
(3, 'Top', '/images/subcategories/barebone-top.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`, `image_file`) VALUES
(1, 'Keyboard', '', '/images/category-keyboard.jpg'),
(2, 'Key Switches', '', '/images/category-key-switches.jpg'),
(3, 'Mouse', '', '/images/category-mouse.jpg'),
(4, 'Keycaps', '', '/images/category-keycaps.jpg'),
(5, 'BareBone Kit', '', '/images/category-barebone-kit.jpg'),
(6, 'Accessories', '', '/images/categories/accessories.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `featured_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_file` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured_products`
--

INSERT INTO `featured_products` (`featured_id`, `product_id`, `product_image_file`, `start_date`, `end_date`, `sort_order`, `created_at`) VALUES
(2, 1, '/images/products/keyboard1.jpg', '2025-04-03', NULL, 1, '2025-04-03 03:53:02'),
(3, 6, '/images/products/switch1.jpg', '2025-04-03', NULL, 2, '2025-04-03 03:53:02'),
(4, 11, '/images/products/mouse1.jpg', '2025-04-03', NULL, 3, '2025-04-03 03:53:02'),
(5, 16, '/images/products/mouse1.jpg', '2025-04-03', NULL, 4, '2025-04-03 03:53:02'),
(6, 21, '/images/products/barebone1.jpg', '2025-04-03', NULL, 5, '2025-04-03 03:53:02'),
(7, 26, '/images/products/accessory1.jpg', '2025-04-03', NULL, 6, '2025-04-03 03:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `keyboard_subcategories`
--

CREATE TABLE `keyboard_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyboard_subcategories`
--

INSERT INTO `keyboard_subcategories` (`subcategory_id`, `name`, `image_file`) VALUES
(1, '100%', '/images/subcategories/keyboard-100.jpg'),
(2, '1800 Compact', '/images/subcategories/keyboard-1800.jpg'),
(3, 'TKL', '/images/subcategories/keyboard-tkl.jpg'),
(4, '75%', '/images/subcategories/keyboard-75.jpg'),
(5, '65%', '/images/subcategories/keyboard-65.jpg'),
(6, '60%', '/images/subcategories/keyboard-60.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keycaps_subcategories`
--

CREATE TABLE `keycaps_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keycaps_subcategories`
--

INSERT INTO `keycaps_subcategories` (`subcategory_id`, `name`, `image_file`) VALUES
(1, 'Cherry', '/images/subcategories/keycaps-cherry.jpg'),
(2, 'OEM', '/images/subcategories/keycaps-oem.jpg'),
(3, 'ASA', '/images/subcategories/keycaps-asa.jpg'),
(4, 'JDA', '/images/subcategories/keycaps-jda.jpg'),
(5, 'OSA', '/images/subcategories/keycaps-osa.jpg'),
(6, 'MOG', '/images/subcategories/keycaps-mog.jpg'),
(7, 'MOA', '/images/subcategories/keycaps-moa.jpg'),
(8, 'MAO', '/images/subcategories/keycaps-mao.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mouse_subcategories`
--

CREATE TABLE `mouse_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mouse_subcategories`
--

INSERT INTO `mouse_subcategories` (`subcategory_id`, `name`, `image_file`) VALUES
(1, 'Pulse 01', '/images/subcategories/mouse-pulse01.jpg'),
(2, 'AG One', '/images/subcategories/mouse-agone.jpg'),
(3, 'Cat Theme', '/images/subcategories/mouse-cat.jpg'),
(4, 'AG325', '/images/subcategories/mouse-ag325.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `shipping_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_file` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price_at_purchase` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `description`, `price`, `stock_quantity`, `sku`, `image_url`, `image_file`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 1, 'Mechanical Gaming Keyboard', '', 129.99, 50, 'KB001', NULL, '/images/products/Hatsune-Miku-5108B-Plus-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:10:53', NULL),
(2, 1, 'Wireless Mechanical Keyboard', '', 149.99, 40, 'KB002', NULL, '/images/products/Ink-Green-5098B-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:10:39', NULL),
(3, 1, 'Compact 60% Keyboard', '', 99.99, 60, 'KB003', NULL, '/images/products/MU02-Mountain-Seclusion-GX-1-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:10:02', NULL),
(4, 1, 'RGB Backlit Keyboard', '', 89.99, 70, 'KB004', NULL, '/images/products/Pompompurin-5108B-Plus--600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:09:32', NULL),
(5, 1, 'Hot-swappable Keyboard', '', 119.99, 45, 'KB005', NULL, '/images/products/MG108B-Bun-Wonderland-GX.png', '2025-04-03 03:48:58', '2025-04-12 11:08:46', NULL),
(6, 2, 'Red Linear Switches (Pack of 35)', '', 19.99, 100, 'SW001', NULL, '/images/products/Akko-x-Monsgeek-Green-Fog-Switch-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:31:14', NULL),
(7, 2, 'Blue Clicky Switches (Pack of 35)', '', 22.99, 90, 'SW002', NULL, '/images/products/Akko-V3-Creamy-Purple-Pro-Switch-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:31:27', NULL),
(8, 2, 'Brown Tactile Switches (Pack of 35)', '', 21.99, 80, 'SW003', NULL, '/images/products/Akko-Fairy-Switch-Silent-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:31:40', NULL),
(9, 2, 'Silent Red Switches (Pack of 35)', '', 24.99, 70, 'SW004', NULL, '/images/products/Akko-V3-Creamy-Yellow-Pro-Switch-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:31:52', NULL),
(10, 2, 'Speed Silver Switches (Pack of 35)', '', 26.99, 60, 'SW005', NULL, '/images/products/Akko-Rosewood-Switch-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:32:03', NULL),
(11, 3, 'Wireless Gaming Mouse', '', 79.99, 50, 'MO001', NULL, '/images/products/Pulse01-W-1-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:35:00', NULL),
(12, 3, 'Wired RGB Gaming Mouse', '', 49.99, 60, 'MO002', NULL, '/images/products/AG-One-8K-Pompompurin-1-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:35:11', NULL),
(13, 3, 'Ergonomic Office Mouse', '', 39.99, 70, 'MO003', NULL, '/images/products/AG-One-8K-My-Melody-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:35:21', NULL),
(14, 3, 'Ultra-lightweight Mouse', '', 59.99, 40, 'MO004', NULL, '/images/products/Akko-Cat-Theme-Mouse-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:35:31', NULL),
(15, 3, 'Ambidextrous Mouse', '', 69.99, 45, 'MO005', NULL, '/images/products/AG-One-8K-Sakura-Miku-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:35:45', NULL),
(16, 4, 'PBT Keycaps Set (Black/Red)', '', 49.99, 80, 'KC001', NULL, '/images/products/Kuromi-Keycap-Set-138-key-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:33:06', NULL),
(17, 4, 'PBT Keycaps Set (White/Pink)', '', 52.99, 70, 'KC002', NULL, '/images/products/Magic-Lop-Bunny-Keycap-set-146-key-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:33:19', NULL),
(18, 4, 'Gradient Keycaps Set', '', 54.99, 60, 'KC003', NULL, '/images/products/Bun-Wonderland-Keycap-Set-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:33:37', NULL),
(19, 4, 'Retro Keycaps Set', '', 44.99, 50, 'KC004', NULL, '/images/products/Colorful-Cats-Keycap-set-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:33:50', NULL),
(20, 4, 'Transparent Keycaps Set', '', 59.99, 55, 'KC005', NULL, '/images/products/Piggy-Party-Keycap-Set-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:34:00', NULL),
(21, 5, 'TKL Barebone Keyboard Kit', '', 79.99, 40, 'BB001', NULL, '/images/products/5075B-Via-Black-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:27:03', NULL),
(22, 5, '60% Barebone Keyboard Kit', '', 89.99, 35, 'BB002', NULL, '/images/products/SPR-67-Kit-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:27:17', NULL),
(23, 5, 'Hot-Swappable Barebone Kit', '', 99.99, 30, 'BB003', NULL, '/images/products/MOD-007-V3-VIA-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:27:27', NULL),
(24, 5, 'Custom DIY Keyboard Kit', '', 119.99, 25, 'BB004', NULL, '/images/products/5075-Via-2-1-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:27:37', NULL),
(25, 5, 'Aluminum Barebone Keyboard Kit', '', 149.99, 20, 'BB005', NULL, '/images/products/SPR-75-kit-600x600.png', '2025-04-03 03:48:58', '2025-04-12 11:29:14', NULL),
(26, 6, 'Desk Mat (Large)', '', 29.99, 100, 'AC001', NULL, '/images/products/marshall.png', '2025-04-03 03:48:58', '2025-04-12 11:39:47', NULL),
(27, 6, 'Keycap Puller', '', 9.99, 150, 'AC002', NULL, '/images/products/sony.png', '2025-04-03 03:48:58', '2025-04-12 11:40:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_addons`
--

CREATE TABLE `product_addons` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_file` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `switches_subcategories`
--

CREATE TABLE `switches_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `switches_subcategories`
--

INSERT INTO `switches_subcategories` (`subcategory_id`, `name`, `image_file`) VALUES
(1, 'Linear', '/images/subcategories/switch-linear.jpg'),
(2, 'Tactile', '/images/subcategories/switch-tactile.jpg'),
(3, 'Clicky', '/images/subcategories/switch-clicky.jpg'),
(4, 'Magnetic', '/images/subcategories/switch-magnetic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories_subcategories`
--
ALTER TABLE `accessories_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `barebone_subcategories`
--
ALTER TABLE `barebone_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`featured_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `keyboard_subcategories`
--
ALTER TABLE `keyboard_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `keycaps_subcategories`
--
ALTER TABLE `keycaps_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `mouse_subcategories`
--
ALTER TABLE `mouse_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_products_accessories_subcategory` (`subcategory_id`);

--
-- Indexes for table `product_addons`
--
ALTER TABLE `product_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `addon_id` (`addon_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `switches_subcategories`
--
ALTER TABLE `switches_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories_subcategories`
--
ALTER TABLE `accessories_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barebone_subcategories`
--
ALTER TABLE `barebone_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `featured_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keyboard_subcategories`
--
ALTER TABLE `keyboard_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keycaps_subcategories`
--
ALTER TABLE `keycaps_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mouse_subcategories`
--
ALTER TABLE `mouse_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_addons`
--
ALTER TABLE `product_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `switches_subcategories`
--
ALTER TABLE `switches_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD CONSTRAINT `featured_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_accessories_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `accessories_subcategories` (`subcategory_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_products_barebone_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `barebone_subcategories` (`subcategory_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_products_keyboard_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `keyboard_subcategories` (`subcategory_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_products_keycaps_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `keycaps_subcategories` (`subcategory_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_products_mouse_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `mouse_subcategories` (`subcategory_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_products_switches_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `switches_subcategories` (`subcategory_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `product_addons`
--
ALTER TABLE `product_addons`
  ADD CONSTRAINT `product_addons_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_addons_ibfk_2` FOREIGN KEY (`addon_id`) REFERENCES `addons` (`addon_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
