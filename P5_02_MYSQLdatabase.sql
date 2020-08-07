-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 01:16 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `homeAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientId`, `firstName`, `lastName`, `phoneNumber`, `email`, `homeAddress`) VALUES
(1, 'Chinedu', 'Emesue', '07082632448', 'de.magnificent1@gmail.com', 'Plot 12 Behind Legislators quarters Apo Abuja Nigeria'),
(2, 'Joy', 'Igwilo', '08037893100', 'joy4u@yahoo.com', 'Area 5 Aso behind Golden gate academy'),
(3, 'Ben', 'Chuks', '08136740193', 'benchuks@gmail.com', 'House 57 Behind Kugbo furniture market'),
(4, 'Peace', 'Igwe', '07072045610', 'peacefulpeace@gmail.com', 'plot 45 Gudu district Apo Abuja'),
(5, 'Clara', 'Dako', '09062053850', 'clara90@yahoo.com', 'House 59 James Ojo street Nyanya Abuja');

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu`
--

CREATE TABLE `daily_menu` (
  `menuId` int(11) NOT NULL,
  `menuTitle` varchar(50) NOT NULL,
  `menuCategory` varchar(15) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `dayAvailable` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_menu`
--

INSERT INTO `daily_menu` (`menuId`, `menuTitle`, `menuCategory`, `description`, `price`, `dayAvailable`) VALUES
(1, 'Efo Riro', 'Main dish', 'Efo Riro is a mix of pumpkin green leaves, meat, like chicken and offal or smoked fish. ', 1500, 'Monday'),
(2, 'Afang Soup', 'Main dish', 'The soup is made with local Afang leaves and water leaves together with dried fish, meat and snails, as well as seasonings. Although it originated from South-southern Nigeria, Afang soup is now enjoyed across state borders in Nigeria and also in the diasp', 1700, 'Monday'),
(3, 'Coconut candy', 'Dessert', 'These are made from the coconut fruit and are chewable, crunchy and candy-like. During preparation, the coconut is thinly grated and fried in balls after being covered with caramel.', 200, 'Monday'),
(4, 'Bean cake', 'Dessert', 'This is said to be one of the most popular foods that can be eaten as a dessert in Nigeria. It is prepared from bean flour and can be spiced to taste with onions, pepper, crayfish', 200, 'Monday'),
(5, 'Pepper Soup', 'Main dish', 'Nigerian pepper soup is among the nation’s favourite dishes due to its intensely spicy flavour and the variety of meat, fish or chicken that can be used to cook it. The broth is rich, with aromatic spices, pepper, ginger, garlic and onions to give it that', 2000, 'Tuesday'),
(6, 'Nkwobi', 'Main dish', 'Nkwobi is a popular Ibo delicacy prepared from spiced cow leg marinated in a richly flavoured sauce of Utazi leaves and palm oil.', 2300, 'Tuesday'),
(7, 'Donkuwa', 'Dessert', 'This dessert is the magic of tradition and convention and is associated with the Hausa people of Northern Nigeria. Donkwa is prepared from finely ground groundnut and cornmeal, garnished with chili peppers, then mixed with small quantities of water and oi', 200, 'Tuesday'),
(8, 'Plantain Chips', 'Dessert', 'These are a very popular dessert in Nigeria. Plantain chips are made from either ripe or unripe plantain. The plantain is first peeled and sliced into thin forms before deep-frying. The chips come out crunchy and tasty. This could be one of the oldest des', 200, 'Tuesday'),
(9, 'Egg roll', 'Dessert', 'This Nigerian dessert can be easily mistaken for scotch eggs but is very different if you take a closer look. Egg rolls are prepared by enveloping boiled eggs in the dough before deep-frying in vegetable oil.', 200, 'Wednesday'),
(10, 'Kokoro', 'Dessert', 'This dessert is commonly associated with the Yoruba people of Western Nigeria. Kokoro is crunchy cornmeal made from a specially made dough comprising of sugar, water, and corn.', 200, 'Wednesday'),
(11, 'Ewa Aganyin', 'Main dish', 'Ewa Aganyin is made up of cooked beans and pepper sauce. It is a delicious beans dish, well known for its softness and tasty sauce. Every Nigerian beans lover is crazy about Ewa Aganyin and it can be served with bread or yam.', 1800, 'Wednesday'),
(12, 'Amala and Ewedu', 'Main dish', 'Amala and Ewedu soup is a classic Nigerian food, mostly eaten by the Yoruba people, especially people from Oyo state, but it is appreciated by other ethinc groups.', 1650, 'Wednesday'),
(13, 'Abacha and Ugba', 'Main dish', 'Abacha and Ugba are known as African Salad and it can be eaten as a meal or snack. Many people eat it as a meal because it fills up your stomach just like any other meal. This meal is well-known and very popular in the Eastern part of Nigeria, among the I', 1400, 'Thursday'),
(14, 'Ogbono soup', 'Main dish', 'Ogbono soup is a popular Nigerian dish made with ground Ogbono seeds, with considerable local variation. ', 1500, 'Thursday'),
(15, 'Kuli kuli', 'Dessert', 'This dessert is also native to the Hausa people of northern Nigeria. Kuli-kuli is prepared with roasted groundnuts that are ground and spiced before deep-frying.', 200, 'Thursday'),
(16, 'Shuku shuku', 'Dessert', 'This is a dessert made from coconut that is very tasty and will keep you asking for more. Shuku shuku is prepared by mixing coconut flakes with caster sugar, egg yolks, and flour.', 200, 'Thursday'),
(17, 'Ofada Rice', 'Main dish', 'Ofada Rice is produced locally in Nigeria. What makes it special is its unique flavour and aroma. Most Nigerians will jump with excitement at the sight of Ofada rice and stew.', 1900, 'Friday'),
(18, 'Kilishi', 'Dessert', 'This is a very common meat delicacy among the Hausa people of northern Nigeria.  Kilishi is made from either beef, mutton, or chevon. The lean meat is sliced into thin sheets and sun-dried for a while.', 200, 'Friday'),
(19, 'Adalu', 'Main dish', 'Adalu is a combination of beans and corn, cooked together with various seasonings and spices. Most Nigerians ate lots of this delicious meal while growing up, and they have deep love for it.', 1600, 'Friday'),
(20, 'Kpekere', 'Dessert', 'This is another Nigerian dessert made from plantain. Unripe plantain is strictly used and is very common among the Yoruba people of western Nigeria. The unripe plantain is sliced into thin sheets and then deep-fried', 200, 'Friday'),
(21, 'Egusi Soup', 'Main dish', 'This soup is widely consumed in Nigeria. Ingredients used in preparing the soup include melon seeds, red or any desired meat, seafood, fermented beans, a variety of green vegetables and onions. Egusi soup can be served alongside Garri, Pounded yam and fuf', 1950, 'Saturday'),
(22, 'Jollof Rice', 'Main dish', 'This colourful delicacy is food to many West African Countries, not just Nigeria. Ingredients of Jollof rice include rice, onions, tomatoes, chillies and a variety of spices', 2000, 'Saturday'),
(23, 'Yoyo', 'Dessert', 'These are lightly crushed and fried sprats. Sprats are very active tiny oily fish that are related to the herring family. ', 200, 'Saturday'),
(24, 'Suya', 'Dessert', 'This is simply nicely cut beef spiced and grilled over an open flame. It is served with fresh cabbage, tomatoes, and onions.', 250, 'Saturday'),
(25, 'Boli', 'Dessert', 'This is yet another tasty delicacy that is eaten as a dessert in Nigeria. The plantain is peeled and grilled on an open fire to a point where the outside gets charred. ', 300, 'Sunday'),
(26, 'Ukwa', 'Main dish', 'The seeds of the African breadfruits are also roasted and eaten as a dessert, especially among the Igbo people of EasternNigeria. Dried bread fruits come in a variety ranging from hard dried ones, which are dark brown, to the softer ones, which are a ligh', 2500, 'Sunday'),
(27, 'Date palms', 'Dessert', 'This is a very nutritious dessert eaten especially in the northern parts of Nigeria. ', 150, 'Sunday'),
(28, 'Bitter leaf Soup', 'Main dish', 'Bitterleaf soup is one of the most traditional soups in Nigeria. It is native to the Igbos of Eastern Nigeria and most Igbos will tell you that this is their favourite soup in the world.', 2300, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_biker`
--

CREATE TABLE `delivery_biker` (
  `bikerId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_biker`
--

INSERT INTO `delivery_biker` (`bikerId`, `firstName`, `lastName`, `phoneNumber`) VALUES
(1, 'Johnson', 'Offor', '08038091273'),
(2, 'Micheal', 'Jones', '08072040010'),
(3, 'Jane', 'Miller', '08038091900'),
(4, 'Babel', 'John', '09072018010'),
(5, 'Eme', 'Chinaza', '08038090700');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `orderId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `orderStatus` varchar(15) NOT NULL,
  `discount` float NOT NULL DEFAULT '0.1',
  `deliveryBiker` int(11) NOT NULL,
  `orderTime` datetime NOT NULL,
  `timeDelivered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`orderId`, `clientId`, `orderStatus`, `discount`, `deliveryBiker`, `orderTime`, `timeDelivered`) VALUES
(1, 5, 'en route', 0.1, 3, '2020-07-20 10:10:05', '2020-07-20 10:30:00'),
(2, 4, 'delivered', 0.1, 2, '2020-07-20 11:15:00', '2020-07-20 11:35:00'),
(3, 2, 'en route', 0.1, 5, '2020-07-20 12:00:00', '2020-07-20 12:20:00'),
(4, 3, 'delivered', 0.1, 1, '2020-07-20 12:45:00', '2020-07-20 01:05:00'),
(5, 1, 'delivered', 0.1, 4, '2020-07-20 01:10:00', '2020-07-20 01:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientId`);

--
-- Indexes for table `daily_menu`
--
ALTER TABLE `daily_menu`
  ADD PRIMARY KEY (`menuId`);

--
-- Indexes for table `delivery_biker`
--
ALTER TABLE `delivery_biker`
  ADD PRIMARY KEY (`bikerId`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`orderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_menu`
--
ALTER TABLE `daily_menu`
  MODIFY `menuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `delivery_biker`
--
ALTER TABLE `delivery_biker`
  MODIFY `bikerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
