-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 03:53 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Item_ID` int(11) NOT NULL,
  `Page_no` int(11) DEFAULT NULL,
  `Release_Year` year(4) NOT NULL,
  `Author` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Item_ID`, `Page_no`, `Release_Year`, `Author`) VALUES
(6, 412, 1965, 'Frank Herbert'),
(7, 1000, 0000, 'Alexander Dumas'),
(8, 300, 1969, 'Kurt Vonnegut'),
(9, 300, 1929, 'Dashiel Hammet'),
(10, 223, 1997, 'J.K. Rowling'),
(11, 251, 1998, 'J.K. Rowling'),
(12, 317, 1999, 'J.K. Rowling'),
(13, 636, 2000, 'J.K. Rowling'),
(14, 766, 2003, 'J.K. Rowling'),
(15, 607, 2005, 'J.K. Rowling'),
(16, 607, 2007, 'J.K. Rowling');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` int(11) NOT NULL,
  `NAME` varchar(127) NOT NULL,
  `Price` decimal(10,2) UNSIGNED NOT NULL,
  `Description` varchar(127) DEFAULT NULL,
  `Genre` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `NAME`, `Price`, `Description`, `Genre`) VALUES
(6, 'Dune', '9.99', 'Classic Scifi Epic about the desert planet Arrakis.', 'Science Fiction'),
(7, 'The Count of Monte Cristo', '9.99', 'The classic revenge tale of Emdond Dantes', 'Adventure'),
(8, 'Slaughterhouse-Five', '9.99', 'World War II anti-war novel', 'Science Fiction'),
(9, 'Red Harvest', '9.99', 'Hard boiled detective novel', 'Crime'),
(10, 'Harry Potter and the Philosophers Stone', '14.99', 'First in the series about adolescent wizards', 'Fantasy'),
(11, 'Harry Potter and the Chamber of Secrets', '14.99', 'Second novel in the Harry Potter Series', 'Fantasy'),
(12, 'Harry Potter and the Prisoner of Azkaban', '14.99', 'Third novel in the Harry Potter Series', 'Fantasy'),
(13, 'Harry Potter and the Goblet of Fire', '14.99', 'Fourth novel in the Harry Potter Series', 'Fantasy'),
(14, 'Harry Potter and the Order of the Pheonix', '14.99', 'Fifth novel in the Harry Potter Series', 'Fantasy'),
(15, 'Harry Potter and the Half-Blood Prince', '14.99', 'Sixth novel in the Harry Potter Series', 'Fantasy'),
(16, 'Harry Potter and the Deathly Hallows', '14.99', 'Final novel in the Harry Potter Series', 'Fantasy'),
(17, 'Star Wars: Episode IV - A New Hope', '19.99', 'First Movie in the Star Wars Series', 'Science Fiction'),
(18, 'Star Wars: Episode VI - Return of the Jedi', '19.99', 'Third Movie in the Star Wars Series', 'Science Fiction'),
(19, 'Star Wars: Episode I - The Phantom Menace', '19.99', 'Fourth Movie in the Star Wars Series', 'Science Fiction'),
(20, 'Star Wars: Episode II - Attack of the Clones', '19.99', 'Fifth Movie in the Star Wars Series', 'Science Fiction'),
(21, 'Star Wars: Episode II - Revenge of the Sith', '19.99', 'Sixth Movie in the Star Wars Series', 'Science Fiction'),
(22, 'Star Wars: Episode VII - The Force Awakens', '19.99', 'Seventh Movie in the Star Wars Series', 'Science Fiction'),
(23, 'Star Wars: Episode VII - The Last Jedi', '19.99', 'Eighth Movie in the Star Wars Series', 'Science Fiction'),
(24, 'Star Wars: Episode V - The Empire Strikes Back', '19.99', 'Second Movie in the Star Wars Series', 'Science Fiction'),
(25, 'Time', '4.99', 'American weekly news magazine', 'News'),
(26, 'Popular Mechanics', '4.99', 'Technology focused magazine', 'Technology'),
(27, 'Wired', '4.99', 'American technology magazine', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Item_ID` int(11) NOT NULL,
  `LENGTH` int(11) DEFAULT NULL,
  `Director` varchar(31) NOT NULL,
  `Release_Year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Item_ID`, `LENGTH`, `Director`, `Release_Year`) VALUES
(17, 120, 'George Lucas', 1977),
(18, 120, 'George Lucas', 1983),
(19, 120, 'George Lucas', 1999),
(20, 120, 'George Lucas', 2002),
(21, 120, 'George Lucas', 2005),
(22, 120, 'J.J. Abrams', 2015),
(23, 120, 'Rian Johnson', 2017),
(24, 120, 'George Lucas', 1980);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Item_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Order_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `periodicals`
--

CREATE TABLE `periodicals` (
  `Item_ID` int(11) NOT NULL,
  `Issue_No` int(11) DEFAULT NULL,
  `Publisher` varchar(31) NOT NULL,
  `Release_Year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periodicals`
--

INSERT INTO `periodicals` (`Item_ID`, `Issue_No`, `Publisher`, `Release_Year`) VALUES
(25, 1, 'Meredith Corporation', 1923),
(26, 1, 'Hearst Communications', 1902),
(27, 1, 'Conde Nast Publications', 1993);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `User_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Phone_No` char(12) DEFAULT NULL,
  `Pass_word` varchar(12) NOT NULL,
  `Created_Date` date DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`User_ID`, `NAME`, `Email`, `Phone_No`, `Pass_word`, `Created_Date`, `Address`) VALUES
(4, 'R.Smith', 'rod.smith@gmail.com', '555-555-5555', 'password', '2018-04-22', '1234 1st St., Dallas, TX 75206'),
(5, 'J.Doe', 'jane.doe@gmail.com', '123-546-2134', 'asfdew', '2018-04-22', '2134 Homer St., Dallas, TX 75206'),
(6, 'J.Smith', 'john.smith@gmail.com', '234-789-2345', 'weklk', '2018-04-22', '231 Sew St., Dallas, TX 75206'),
(7, 'S.Rodney', 'steve.rodney@gmail.com', '213-789-2341', 'sdfweqzx', '2018-04-22', '213 Snide St., Dallas, TX 75206'),
(8, 'J.Reacher', 'jack.reacher@gmail.com', '768-234-7890', '234sdf', '2018-04-22', '416 Cooper St., Dallas, TX 75206'),
(9, 'P.Smtih', 'pam.smith@gmail.com', '678-234-2344', 'sdfwe3', '2018-04-22', '234 Stewart Road, Dallas, TX 75206'),
(10, 'J.Ryan', 'jack.ryan@gmail.com', '123-234-2347', 'wordpass', '2018-04-22', '234 Rocky Road, Dallas, TX 75206'),
(11, 'S.Jackson', 'steve.jackson@gmail.com', '234-987-1238', 'sadfqw', '2018-04-22', '324 Sleepy St., Dallas, TX 75206'),
(12, 'S.Little', 'stuart.little@gmail.com', '978-234-5672', 'cantguess', '2018-04-22', '234 Coup Road, Dallas, TX 75206'),
(13, 'R.Stephenson', 'ron.stephenson@gmail.com', '234-877-2345', 'idkthis', '2018-04-22', '223 3rd St., Dallas, TX 75206'),
(14, 'C.Fitz', 'conor.fitz@gmail.com', '768-234-7890', 'oopsthis', '2018-04-22', '234 Jazz St., Dallas, TX 75206'),
(15, 'J.Palmer', 'jake.palmer@gmail.com', '678-123-2345', 'dsfwe3214', '2018-04-22', '416 Cooper St., Dallas, TX 75206'),
(16, 'S.Gill', 'steph.gill@gmail.com', '324-234-7890', 'sdfqewr', '2018-04-22', '321 Lost Way, Dallas, TX 75206'),
(17, 'J.Smith', 'jennifer.smith@gmail.com', '768-345-7890', 'asdjhk76', '2018-04-22', '223 Cooper St., Dallas, TX 75206'),
(18, 'L.Dayton', 'leighton.dayton@gmail.com', '768-235-1234', '234ds2', '2018-04-22', '546 Cooper St., Dallas, TX 75206'),
(19, 'J.Clinton', 'jay.clinton@gmail.com', '767-234-1275', '23465s', '2018-04-22', '324 Coup St., Dallas, TX 75206'),
(20, 'J.Shilling', 'jack.shilling@gmail.com', '768-234-7891', '21354', '2018-04-22', '4562 Cooper St., Dallas, TX 75206'),
(21, 'L.Holmes', 'lock.holmes@gmail.com', '768-234-7895', 'sdfwe', '2018-04-22', '123 Copper St., Dallas, TX 75206'),
(22, 'R.Jauques', 'ryan.jauques@gmail.com', '768-134-7890', '23123df', '2018-04-22', '219 Long Way, Dallas, TX 75206'),
(23, 'A.Mars', 'athena.mars@gmail.com', '768-234-7990', '764sdf', '2018-04-22', '123 Sleepy Way, Dallas, TX 75206'),
(24, 'J.Side', 'john.side@gmail.com', '768-234-1890', '2323f', '2018-04-22', '123 Lake Dr., Dallas, TX 75206'),
(25, 'R.Evans', 'rachel.evans@gmail.com', '768-238-7890', '23123f', '2018-04-22', '234 Cope St., Dallas, TX 75206'),
(26, 'K.Irvin', 'kent.irvin@gmail.com', '555-575-5555', 'sadfwe', '2018-04-22', '236 Seven St., Dallas, TX 75206');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SSN` char(9) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`SSN`, `User_ID`, `Salary`, `DOB`) VALUES
('123456789', 26, '30000.00', '1990-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Item_ID` (`Item_ID`);

--
-- Indexes for table `periodicals`
--
ALTER TABLE `periodicals`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `SSN` (`SSN`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `person` (`User_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`);

--
-- Constraints for table `periodicals`
--
ALTER TABLE `periodicals`
  ADD CONSTRAINT `periodicals_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `person` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
