-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2021 lúc 06:23 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `learnjava`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `created_at`) VALUES
(2, 'Curran', 'Phasellus.fermentum@duiquis.org', '2021-08-16 21:15:31'),
(3, 'Cassidy', 'arcu.Vestibulum@luctus.com', '2021-08-16 21:15:31'),
(4, 'Halla', 'sed.consequat.auctor@magnamalesuada.edu', '2021-08-16 21:15:31'),
(5, 'Graham', 'ullamcorper.Duis@elitfermentumrisus.ca', '2021-08-16 21:15:31'),
(6, 'Ivory', 'sociosqu@ullamcorperDuiscursus.co.uk', '2021-08-16 21:15:31'),
(7, 'Justina', 'sem@ametdapibusid.com', '2021-08-16 21:15:31'),
(8, 'Mari', 'Fusce@aliquameuaccumsan.edu', '2021-08-16 21:15:31'),
(9, 'Xyla', 'Etiam@vestibulummassarutrum.com', '2021-08-16 21:15:31'),
(10, 'Yuli', 'lobortis.quis.pede@Donec.edu', '2021-08-16 21:15:31'),
(11, 'Daquan', 'malesuada.fames.ac@risusvariusorci.net', '2021-08-16 21:15:31'),
(12, 'Demetrius', 'sem@consectetuercursus.ca', '2021-08-16 21:15:31'),
(13, 'Cooper', 'mauris@mus.co.uk', '2021-08-16 21:15:31'),
(14, 'Thor', 'in@elitsed.edu', '2021-08-16 21:15:31'),
(15, 'Nicole', 'et.ultrices@penatibus.org', '2021-08-16 21:15:31'),
(16, 'Sigourney', 'gravida.sagittis.Duis@mattissemperdui.net', '2021-08-16 21:15:31'),
(17, 'Brynne', 'semper.tellus@orcilacus.ca', '2021-08-16 21:15:31'),
(18, 'Declan', 'malesuada.malesuada@tristiquepellentesquetellus.edu', '2021-08-16 21:15:31'),
(19, 'McKenzie', 'morbi.tristique@Lorem.ca', '2021-08-16 21:15:31'),
(20, 'Jelani', 'ante.lectus.convallis@felisorciadipiscing.org', '2021-08-16 21:15:31'),
(21, 'Levi', 'molestie.tellus@tinciduntDonec.net', '2021-08-16 21:15:31'),
(22, 'Cedric', 'tincidunt.neque@egestas.ca', '2021-08-16 21:15:31'),
(23, 'Nichole', 'accumsan.convallis@nonvestibulum.co.uk', '2021-08-16 21:15:31'),
(24, 'Jacqueline', 'commodo.tincidunt.nibh@a.com', '2021-08-16 21:15:31'),
(25, 'Ingrid', 'consectetuer@rutrumnon.co.uk', '2021-08-16 21:15:31'),
(26, 'Amos', 'mi@maurisipsumporta.net', '2021-08-16 21:15:31'),
(27, 'Scott', 'eu.tellus.Phasellus@etlibero.com', '2021-08-16 21:15:31'),
(28, 'Sybil', 'Vivamus.non.lorem@nibhAliquam.org', '2021-08-16 21:15:31'),
(29, 'Darius', 'risus@semper.ca', '2021-08-16 21:15:31'),
(30, 'Felix', 'Duis.ac@venenatisamagna.org', '2021-08-16 21:15:31'),
(31, 'Zephr', 'ut.pharetra.sed@Sedcongue.com', '2021-08-16 21:15:31'),
(32, 'Carly', 'Aliquam@eueuismodac.net', '2021-08-16 21:15:31'),
(33, 'Risa', 'convallis.dolor@Vivamusmolestie.edu', '2021-08-16 21:15:31'),
(34, 'Abdul', 'tortor.at.risus@dictummi.co.uk', '2021-08-16 21:15:31'),
(35, 'Aurelia', 'dolor.Nulla.semper@parturientmontesnascetur.org', '2021-08-16 21:15:31'),
(36, 'Casey', 'in@ipsumsodalespurus.ca', '2021-08-16 21:15:31'),
(37, 'Idola', 'id.erat.Etiam@Inscelerisquescelerisque.com', '2021-08-16 21:15:31'),
(38, 'Fatima', 'semper.Nam@Crasegetnisi.org', '2021-08-16 21:15:31'),
(39, 'Ethan', 'erat@milaciniamattis.org', '2021-08-16 21:15:31'),
(40, 'Jenette', 'natoque@Aliquamornare.net', '2021-08-16 21:15:31'),
(41, 'Wang', 'pede.nec@Inatpede.org', '2021-08-16 21:15:31'),
(42, 'Lacota', 'nulla.Cras.eu@semegestasblandit.org', '2021-08-16 21:15:31'),
(43, 'Brody', 'amet.orci@Etiam.com', '2021-08-16 21:15:31'),
(44, 'Lucy', 'Donec@urnajustofaucibus.co.uk', '2021-08-16 21:15:31'),
(45, 'Iola', 'magna.a.tortor@consectetuermauris.net', '2021-08-16 21:15:31'),
(46, 'Boris', 'Suspendisse@mieleifend.edu', '2021-08-16 21:15:31'),
(47, 'Lois', 'consectetuer@justoeu.org', '2021-08-16 21:15:31'),
(48, 'Gemma', 'senectus@SedmolestieSed.net', '2021-08-16 21:15:31'),
(49, 'Kermit', 'nec.urna@utodio.co.uk', '2021-08-16 21:15:31'),
(50, 'Nasim', 'Maecenas.malesuada.fringilla@ipsumnonarcu.ca', '2021-08-16 21:15:31'),
(51, 'Brendan', 'tortor@sapien.co.uk', '2021-08-16 21:15:31'),
(52, 'Noel', 'Aliquam@bibendum.co.uk', '2021-08-16 21:15:31'),
(53, 'Rina', 'nisl.sem@rhoncusid.net', '2021-08-16 21:15:31'),
(54, 'Vance', 'neque.Sed.eget@velitCras.com', '2021-08-16 21:15:31'),
(55, 'Diana', 'vel.pede.blandit@Proinmi.edu', '2021-08-16 21:15:31'),
(56, 'Porter', 'velit@Morbi.edu', '2021-08-16 21:15:31'),
(57, 'Rae', 'non.lacinia.at@scelerisqueloremipsum.org', '2021-08-16 21:15:31'),
(58, 'Yen', 'elit@purusMaecenaslibero.edu', '2021-08-16 21:15:31'),
(59, 'Mollie', 'torquent.per.conubia@elit.ca', '2021-08-16 21:15:31'),
(60, 'Brody', 'mi.Duis.risus@ipsum.org', '2021-08-16 21:15:31'),
(61, 'Iola', 'Nunc.ut@cursus.net', '2021-08-16 21:15:31'),
(62, 'Blossom', 'nec@feugiatLorem.com', '2021-08-16 21:15:31'),
(63, 'Rhonda', 'elit.elit@arcuAliquam.net', '2021-08-16 21:15:31'),
(64, 'Macon', 'sem@lobortisnisi.com', '2021-08-16 21:15:31'),
(65, 'Paki', 'neque@temporerat.edu', '2021-08-16 21:15:31'),
(66, 'Abra', 'congue.turpis@variuseteuismod.com', '2021-08-16 21:15:31'),
(67, 'Clare', 'semper.auctor.Mauris@semut.org', '2021-08-16 21:15:31'),
(68, 'Dolan', 'velit.in.aliquet@semperegestas.org', '2021-08-16 21:15:31'),
(69, 'Orson', 'ornare.lectus@pede.org', '2021-08-16 21:15:31'),
(70, 'Suki', 'montes.nascetur@disparturient.edu', '2021-08-16 21:15:31'),
(71, 'Jason', 'lorem.vehicula.et@Maurisutquam.edu', '2021-08-16 21:15:31'),
(72, 'Hilary', 'Aliquam.gravida@mieleifend.com', '2021-08-16 21:15:31'),
(73, 'Quynn', 'fringilla@Curabitur.edu', '2021-08-16 21:15:31'),
(74, 'Eleanor', 'cursus@massaSuspendisse.edu', '2021-08-16 21:15:31'),
(75, 'Dale', 'vehicula.et@utpharetrased.co.uk', '2021-08-16 21:15:31'),
(76, 'Idola', 'malesuada@nondapibus.net', '2021-08-16 21:15:31'),
(77, 'Norman', 'enim.diam.vel@velit.net', '2021-08-16 21:15:31'),
(78, 'Caesar', 'feugiat.metus@at.edu', '2021-08-16 21:15:31'),
(79, 'Jelani', 'ultricies@pharetraut.org', '2021-08-16 21:15:31'),
(80, 'Adele', 'odio@sapienimperdiet.ca', '2021-08-16 21:15:31'),
(81, 'Thaddeus', 'congue.elit@vitaealiquet.com', '2021-08-16 21:15:31'),
(82, 'Eagan', 'tristique.senectus.et@lacus.net', '2021-08-16 21:15:31'),
(83, 'Harlan', 'ornare.Fusce@ullamcorpervelitin.org', '2021-08-16 21:15:31'),
(84, 'Murphy', 'pharetra.Quisque.ac@pedePraesenteu.com', '2021-08-16 21:15:31'),
(85, 'Baxter', 'ultricies.ornare.elit@utpharetrased.co.uk', '2021-08-16 21:15:31'),
(86, 'Gage', 'ante.Nunc.mauris@interdum.com', '2021-08-16 21:15:31'),
(87, 'Gemma', 'Cum.sociis.natoque@mauris.edu', '2021-08-16 21:15:31'),
(88, 'Declan', 'Nam.porttitor.scelerisque@non.edu', '2021-08-16 21:15:31'),
(89, 'Hedda', 'fermentum.risus.at@necquam.net', '2021-08-16 21:15:31'),
(90, 'Kylie', 'tellus.sem@uteratSed.ca', '2021-08-16 21:15:31'),
(91, 'Walter', 'ipsum@dolorvitaedolor.net', '2021-08-16 21:15:31'),
(105, 'Phúc Đẹp Trai', 'lewlew@ahihi.ca', '2021-08-17 11:09:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
