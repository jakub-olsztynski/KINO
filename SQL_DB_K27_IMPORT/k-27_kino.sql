-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 08:59 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k-27_kino`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'id kina, u nas zawsze 1',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'ilosc kupiony biletow',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(16, 'BKID1116180', 3, 9, 24, 1, 2, 50, '2023-06-17', '2023-06-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'email',
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'pracownik', 'password', 1),
(20, 6, 'jakub.olsztynski@protonmail.com', 'password', 2),
(21, 7, 'jakub.olsztynski@protonmail.com', 'password', 2),
(22, 8, 'w@w.pl', 'password', 2),
(23, 9, 'a@a.pl', 'password', 2),
(24, 10, 'w@w.pl', '$2y$10$rNhJBwWBG3nvjWGTUi8j9egjiqz2tli2RYs6rECE8nElDykSExjYG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `cast` varchar(500) COLLATE utf8_polish_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8_polish_ci NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `video_url` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=aktywny, 1=nieaktywny '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(18, 1, 'Miإ›', 'Stanisإ‚aw Tym, Stanisإ‚aw Paluch, Barbara Burska, Bronisإ‚aw Pawlik, Krzysztof Kowalewski ', 'Komedia zإ‚oإ¼ona z groteskowych epizodأ³w ukazujؤ…cych rozpad PRL-owskiego systemu. Liczne sceny z barأ³w mlecznych, urzؤ™dأ³w i sklepأ³w ujawniajؤ… absurd codziennej egzystencji Polakأ³w. Wokأ³إ‚ historii Ochأ³dzkiego narasta wiele waإ¼nych, maإ‚ych opowieإ›ci charakteryzujؤ…cych rzeczywistoإ›ؤ‡ poczؤ…tku lat osiemdziesiؤ…tych.', '1981-05-04', 'images/mis.jpg', 'https://www.youtube.com/watch?v=WeW5losH_5A', 0),
(19, 1, 'Rejs', 'Stanisإ‚aw Tym, Zdzisإ‚aw Maklakiewicz, Jan Himilsbach, Jolanta Lothe, Wanda Stanisإ‚awska-Lothe, Jerzy Dobrowolski, Andrzej Dobosz', 'Na pokإ‚ad wycieczkowego statku odbywajؤ…cego rejsy po Wiإ›le wsiada pasaإ¼er bez biletu. Kapitan bierze go za instruktora kulturalno-oإ›wiatowego, a gapowicz z ochotؤ… wciela siؤ™ w tؤ™ rolؤ™.', '1970-10-19', 'images/rejs.jpg', 'https://www.youtube.com/watch?v=NasXQu3y2Z4', 0),
(20, 1, 'Chإ‚opaki nie pإ‚aczؤ…', 'Maciej Stuhr, Cezary Pazura, Michaإ‚ Milowicz, Mirosإ‚aw Zbrojewicz', 'Bohaterami filmu sؤ… dwaj mإ‚odzi przyjaciele: skrzypek Kuba i Oskar, ktأ³rzy przez przypadek zostajؤ… wplؤ…tani w aferؤ™ z gangsterami. Pewnego wieczoru Kuba postanawia pomأ³c swemu nieإ›miaإ‚emu i zakompleksionemu przyjacielowi إ›ciؤ…gajؤ…c do domu jego wuja dwie dziewczyny z agencji towarzyskiej.', '2000-02-25', 'images/chlopaki.jpg', 'https://www.youtube.com/watch?v=0Pl_vhON4A4', 0),
(21, 3, 'Ofiarowanie', 'Erland Josephson, Susan Fleetwood, Allan Edwall', 'Gdy zostaje nadany alarm zwiastujÄ…cy atak atomowy, ateista zwraca siÄ™ o pomoc do Boga. GotÃ³w jest poÅ›wiÄ™ciÄ‡ samego siebie, by zapewniÄ‡ bliskim bezpieczeÅ„stwo. ', '1986-09-05', 'images/ofiarowanie.jpg', 'https://www.youtube.com/watch?v=ODJb2-PLu7Y', 0),
(22, 3, 'IdÅº i patrz', 'Aleksiej Krawczenko, Olga Mironowa ', 'Szesnastoletni Flora wbrew woli matki zostaje partyzantem. Atak NiemcÃ³w na obÃ³z powstaÅ„cÃ³w zmusza go do ucieczki. ', '1985-07-09', 'images/comeandsee.jpg', 'https://www.youtube.com/watch?v=a7lK3hbr8h8', 0),
(23, 3, 'Ran', 'Tatsuya Nakadai,  Akira Terao, Jinpachi Nezu', 'Pan feudalny postanawia przekazaÄ‡ wÅ‚adzÄ™ najstarszemu synowi. Nie podoba siÄ™ to jego drugiemu potomkowi. ', '1985-06-01', 'images/ran.jpg', 'https://www.youtube.com/watch?v=YwP_kXyd-Rw', 0),
(24, 3, 'Andriej Rublow', 'Anatoly Solonitsyn , Ivan Lapikov, Nikolai Grinko ', 'Film opowiada o Å¼yciu rosyjskiego mnicha i pisarza ikon, Andrieja Rublowa. PrawosÅ‚awny Å›wiÄ™ty przemierza Å›redniowiecznÄ… RuÅ›, gdzie jest Å›wiadkiem wielu okrucieÅ„stw oraz zbrodni.', '1966-12-12', 'images/rublev.jpg', 'https://www.youtube.com/watch?v=t1d5FSyMEd8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `cast` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `attachment` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(11, 'Oppenheimer', 'Cillian Murphy, Emily Blunt, Matt Damon', '2023-07-21', 'Historia amerykaإ„skiego naukowca J. Roberta Oppenheimera i jego roli w stworzeniu bomby atomowej. ', 'news_images/oppie.jpg'),
(12, 'Diuna: Część druga', 'Timothée Chalamet, Rebecca Ferguson, Zendaya', '2023-11-03', 'Książę Paul Atryda przyjmuje przydomek Muad''Dib i rozpoczyna duchowo-fizyczną podróż, by stać się przepowiedzianym w proroctwie wyzwolicielem ludu Diuny. ', 'news_images/dune.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_polish_ci NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(6, 'Jakub', 'jakub.olsztynski@protonmail.com', '668200168', 36, 'gender'),
(7, 'Jakub', 'jakub.olsztynski@protonmail.com', '668200168', 36, 'gender'),
(8, 'Test', 'w@w.pl', '123456789', 22, 'gender'),
(9, 'Imietestowe', 'a@a.pl', '667200168', 25, 'gender'),
(10, 'Jan', 'w@w.pl', '123456789', 24, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) COLLATE utf8_polish_ci NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Sala 1 (Sala Wielka)', 150, 25),
(2, 3, 'Sala 2 (Sala Kameralna)', 50, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 znaczy dostepny',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(24, 22, 3, 18, '2023-03-03', 1, 1),
(25, 23, 3, 18, '2022-01-01', 1, 1),
(26, 24, 3, 18, '2022-01-01', 1, 1),
(27, 27, 3, 18, '2022-01-01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_polish_ci NOT NULL COMMENT 'podaj sale i godzine tutaj',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(22, 1, 'Sala 1, 10:00', '10:00:00'),
(23, 1, 'Sala 1, 13:00', '13:00:00'),
(24, 1, 'Sala 1, 16:00', '16:00:00'),
(25, 1, 'Sala 1, 19:00', '19:00:00'),
(26, 1, 'Sala 1, 22:00', '22:00:00'),
(27, 2, 'Sala 2, 15:00', '15:00:00'),
(28, 2, 'Sala 2, 18:00', '18:00:00'),
(29, 2, 'Sala 2, 21:00', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `place` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(1, 'KINO_K27', 'ul. Kinowa 55 Poznań', 'KINO_K27', 'KINO_K27', 60141);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
