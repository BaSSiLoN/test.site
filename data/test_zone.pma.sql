-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 03 2020 г., 14:58
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_zone`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `block_name`, `header`, `content`) VALUES
(1, 'dolor', 'Lorem, ipsum dolor', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Modi natus in vel provident dolore officia vitae a dolorem dolorum enim, quis fugiat veniam voluptatem ratione praesentium aut maiores quasi quas.</p>'),
(2, 'adipisicing', 'amet consectetur adipisicing', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Modi natus in vel provident dolore officia vitae a dolorem dolorum enim, quis fugiat veniam voluptatem ratione praesentium aut maiores quasi quas.</p>'),
(3, 'consectetur', 'sit amet consectetur', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Modi natus in vel provident dolore officia vitae a dolorem dolorum enim, quis fugiat veniam voluptatem ratione praesentium aut maiores quasi quas.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `block_name`, `header`, `content`) VALUES
(1, 'address', 'Address', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut veniam quo repellat saepe eius quia reiciendis? Odio aspernatur reprehenderit dolorem dicta nam doloremque consequuntur dolorum. Dolor, impedit? Iure, obcaecati delectus.</p>'),
(2, 'map', 'Map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22423.841876341197!2d36.50455495!3d45.3693939!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40eebb849a63d633%3A0x9272e5d4baf7c42!2z0JrQvtC80YHQvtC80L7Qu9GM0YHQutC40Lkg0L_QsNGA0Lo!5e0!3m2!1sru!2s!4v1603797287665!5m2!1sru!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>');

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `id` int(10) UNSIGNED NOT NULL,
  `header` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`id`, `header`, `content`) VALUES
(1, 'amet consectetur adipisicing', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quod maiores ratione autem, explicabo magnam deleniti! Reiciendis officia, nulla commodi possimus odio rem officiis harum, natus ducimus dolore, aperiam cum!</p>\n    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quod maiores ratione autem, explicabo magnam deleniti! Reiciendis officia, nulla commodi possimus odio rem officiis harum, natus ducimus dolore, aperiam cum!</p>\n    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quod maiores ratione autem, explicabo magnam deleniti! Reiciendis officia, nulla commodi possimus odio rem officiis harum, natus ducimus dolore, aperiam cum!</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `subheader` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `title`, `header`, `subheader`) VALUES
(1, 'Main', 'main', 'Test Site - Main Page', 'Hello! This is Test.Zone site.', 'You are on Main page!'),
(2, 'Products', 'products', 'Test Site - Products Page', 'Hello! This is Test.Zone site.', 'You are on Products page!'),
(3, 'About', 'about', 'Test Site - About Page', 'Hello! This is Test.Zone site.', 'You are on About page!'),
(4, 'Contacts', 'contacts', 'Test Site - Contacts Page', 'Hello! This is Test.Zone site.', 'You are on Contacts page!');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `header` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `img`, `alt`, `header`, `text`) VALUES
(1, 'image.jpeg', 'sed lectus', 'Lorem impsum sed lectus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(2, 'image.jpeg', 'pharetra diam sit', 'Sem nulla pharetra diam sit', 'Eleifend mi in nulla posuere. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Ornare suspendisse sed nisi lacus sed viverra.'),
(3, 'image.jpeg', 'purus faucibus', 'Tortor vitae purus faucibus', 'Sed id semper risus in hendrerit gravida rutrum quisque non. Eu nisl nunc mi ipsum faucibus vitae aliquet nec. Feugiat vivamus at augue eget.'),
(4, 'image.jpeg', 'nam libero justo', 'Semper viverra nam libero justo', 'Orci sagittis eu volutpat odio. Ut sem viverra aliquet eget sit amet. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus.'),
(5, 'image.jpeg', 'orci porta non pulvinar', 'Leo vel orci porta non pulvinar', 'Cursus euismod quis viverra nibh cras. Viverra nam libero justo laoreet. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD UNIQUE KEY `link_UNIQUE` (`link`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `main`
--
ALTER TABLE `main`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
