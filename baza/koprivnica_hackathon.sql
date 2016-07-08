-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2016 at 11:43 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

drop database if exists koprivnica_hackathon;
create database koprivnica_hackathon character set utf8 collate utf8_general_ci;
use koprivnica_hackathon;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koprivnica_hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `start_day` varchar(250) NOT NULL,
  `start_month` varchar(250) NOT NULL,
  `start_year` varchar(250) NOT NULL,
  `start_time` time DEFAULT NULL,
  `finish_day` varchar(250) NOT NULL,
  `finish_month` varchar(250) NOT NULL,
  `finish_year` varchar(250) NOT NULL,
  `finish_time` time DEFAULT NULL,
  `organizer` varchar(250) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `category` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `location`, `description`, `start_day`, `start_month`, `start_year`, `start_time`, `finish_day`, `finish_month`, `finish_year`, `finish_time`, `organizer`, `price`, `category`) VALUES
(1, 'Istražujemo i igramo se s tabletima', 'Knjižnica i čitaonica “Fran Galović”', 'Radionica za djecu od 5 do 7 godina\r\n\r\nDječji odjel\r\n\r\nVoditeljice: knjižničarke u Dječjem odjelu', '08', '07', '2016', '10:00:00', '08', '07', '2016', '10:45:00', NULL, NULL, 'Obrazovanje'),
(2, 'Program „Zdravstveni susreti pod suncobranima“', 'Knjižnica i čitaonica “Fran Galović”', 'Terasa ispred Knjižnice i čitaonice “Fran Galović” /  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Perite ruke – spasite živote\r\n\r\nPredavač(i): Snježana Vuljak ,bacc.med.ses. i Anita Galinec,bacc.med.ses.', '08', '07', '2016', '10:00:00', '08', '07', '2016', NULL, NULL, NULL, 'Zdravlje'),
(3, 'Ljeto u Ludensu – Predstava Od tišine do glazbe', 'Atrij Doma mladih Koprivnica', 'Predstava Od tišine do glazbe (9. srpnja). U jednosatnom performansu dramski glumac i pijanist Jure Ivanušič atraktivno, virtuozno i žanrovski raznoliko vodi nas kroz fenomen glazbe. U svom ilustrativnom, duhovitom, a ipak muzikološko vjerodostojnom nastupu majstorski se transformira iz jedne glazbeno relevantne uloge u sljedeću; od pijanista do pjevača, od skladatelja do dirigenta, od muzikologa do glazbenog kritičara. Od kamenog doba do Rolling Stonesa, od klasike do moderne, od jazza do popa, od popevke do šansona, od uvertire do aplauza. Jure Ivanušič izvanredan je glumac i vrhunski glazbenik koji, polazeći od nekih elemenata kabarea, stvara rijetko viđenu svečanost kazališta, glazbe i humora.', '09', '07', '2016', '21:00:00', '09', '07', '2016', NULL, NULL, NULL, 'Kultura'),
(4, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje', 'Knjižnica i čitaonica “Fran Galović”', 'Dječji odjel\r\n\r\nČitamo priču: Čajana na mjesecu\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica\r\n', '11', '07', '2016', '17:30:00', '11', '07', '2016', '18:30:00', NULL, NULL, 'Obrazovanje'),
(5, 'Kreativna radionica STRIPA – za djecu i mlade', 'Knjižnica i čitaonica “Fran Galović”', 'Terasa ispred Knjižnice i čitaonice “Fran Galović”/ u slučaju lošeg vremena Čitaonica tiska\r\n\r\nVoditelj: Zvonimir Haramija', '13', '07', '2016', '10:00:00', '13', '07', '2016', NULL, NULL, NULL, 'Zabava'),
(6, 'Program „Zdravstveni susreti pod suncobranima“', 'Knjižnica i čitaonica “Fran Galović”', 'Terasa ispred Knjižnice i čitaonice “Fran Galović”/  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Žene i novorođenčad : “SRCE PRIMALJSTVA“\r\n\r\nPredavač(i): Izabela Knapić, prvostupnica primaljstva i Maja Katana,dr.med.', '15', '07', '2016', '10:00:00', '15', '07', '2016', NULL, NULL, NULL, 'Zdravlje'),
(7, 'Istražujemo i igramo se s tabletima', 'Knjižnica i čitaonica “Fran Galović”', 'Radionica za djecu od 5 do 7 godina\r\n\r\nVoditeljice: knjižničarke u Dječjem odjelu', '15', '07', '2016', '10:00:00', '15', '07', '2016', '10:45:00', NULL, NULL, 'Obrazovanje'),
(8, 'Ljeto u Ludensu – Predstava SHAKEspeare na EXIT', 'Atrij Doma mladih Koprivnica', 'Predstava SHAKEspeare na EXIT zagrebačkog Teatra Exit u kojoj igraju Živko Anočić, Saša Anočić i Marko Makovičić, a režiju potpisuje Matko Raguž. Što se događa kada se tri obična momka i jedan bard susretnu oči u oči, publika će moći pogledati 16. srpnja. Shakespeare je napisao 37 komada. Od čega 10 povijesnih drama i 18 komedija. Svaki od 37 komada postavljen pojedinačno na scenu traje, zavisno od kraćenja, između 3 i 5 sati. Dakle, 37 x 4 sata (prosječno) iznosi 148 sati. Jeste li znali kako je sve to moguće odigrati u manje od 2 sata?! Publika će kroz ovu predstavu upoznati Romea i Juliju, Hamleta, Ofeliju, Macbetha i njegovu krvavu Lady, Antonija i Kleopatru, Mletačkog trgovca, Tita Andronika, Kralja Leara, Richarda III, Henrika VIII i mnoge druge, kakve ih još nikada nije vidjela.', '16', '07', '2016', '21:00:00', '16', '07', '2016', NULL, NULL, NULL, 'Kultura'),
(9, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje', 'Knjižnica i čitaonica “Fran Galović”', 'Dječji odjel\r\n\r\nČitamo priču: Čarapojedac\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica', '18', '07', '2016', '17:30:00', '18', '07', '2016', '18:30:00', NULL, NULL, 'Obrazovanje'),
(10, 'Kreativna radionica „Bakina kuharica“ – izrada kuharice starih recepata', 'Knjižnica i čitaonica “Fran Galović”', 'Za djecu i odrasle\r\n\r\nTerasa ispred Knjižnice i čitaonice “Fran Galović”/  u slučaju lošeg vremena Čitaonica tiska\r\n', '20', '07', '2016', '09:30:00', '20', '07', '2016', NULL, NULL, NULL, 'Zabava'),
(11, 'Izložba i sajam cvijeća', 'Zrinski trg, Koprivnica', 'Sajam cvijeća je prodajna izložba cvijeća, sadnica, dendrološkog materijala, gdje će posjetitelji u toj doista živopisnoj ponudi pronaći nešto za svoj dom. Uz već spomenutu prodajnu izložbu cvijeća, samu manifestaciju će upotpuniti i prezentacija Starih zanata koji se tematski uklapaju u event.\r\n\r\nKao i svake godine, 01. svibnja na Praznik rada, Zrinski će trg biti prepun zabavnih sadržaja koje Grad poklanja svojim sugrađanima, što će obogatiti već spomenuto događanje na Jelačićevom trgu i zaokružiti cijelu priču.', '01', '05', '2016', NULL, '01', '05', '2016', NULL, NULL, NULL, 'Kultura'),
(12, 'Jagnjedovečka legenda', 'Jagnjedovec, Koprivnica', 'Jagnjedovečka legenda (Jagnjedovec) je legenda kojom se oživljava ponovno naseljavanje kraja i uspomena na gozbu 26. travnja 1642. kada su mještani ugostili koprivničkog kapetana koji im je dopustio naseljavanje i održat će se 5. svibnja u Jagnjedovcu (Koprivnica).\r\n\r\nJagnjedovec se prvi puta spominje 1351. godine. Napušteno je u vrijeme osmanskih provala. Ponovno je bilo naseljeno 1642. godine Slavoncima (kajkavskim hrvatskim stanovništvom). Koprivnički veliki kapetan Ivan Vilim Galler je “na stoviteh slovenskeh sinov prošnju”, želeći naseliti prostor Koprivničke kapetanije, “vu Jagnedovec poslal gledati obkotariti” koprivničkog vicekapetana Sigmunda Iglla, te vojvode Androka (vjerojatno Mojsesa), (Ivana) Krupca i Radmana (od Poganca). Tada su određene međe jagnjedovečkog područja.\r\n\r\nOd potoka Jagnjedovca “nekem jarkom iduć na Ivančićevo zaglavje, od tud Draganovem bregom stezom na veliko bilo križevečke megje, od onud zopet stezom na Kamenski breg, bregom do neke ravnice, od tud pojduć starem putem na Vrankovićeve steze, od onud stezom pustivši se dolu vu imenovani gore Jagnedovec potok.” Kapetan je “spomenutem stanovitem Slovencem” dopustio da se nastane “vu miru i slobode”.', '05', '05', '2016', NULL, '05', '05', '2016', NULL, NULL, NULL, 'Kultura'),
(13, 'Galovićeva jesen', 'Koprivnica', 'U dva desetljeća postojanjafestival književnosti „Galovićeva jesen“,kojeg organiziraju Podravsko-prigorski ogranak Društva hrvatskih književnika i Grad Koprivnica, izrastao je u najznačajniju književnu manifestaciju Podravine i Prigorja. Danas zauzima visoko mjesto i na karti zbivanja u hrvatskoj kulturi općenito, a Nagrada „Fran Galović“ za najbolje književno djelo zavičajne tematike nagrada je iznimno cijenjena i na nacionalnoj razini.\r\n\r\nTemelj „Galovićeve jeseni“ očuvanje je i vrednovanje djela Frana Galovića, ali i vrednovanje suvremene hrvatske književnosti, i to prije svega dodjelom Nagrade „Fran Galović“ te poticanjem književnog stvaralaštva kod učenika osnovnih i srednjih škola dodjelom Nagrade „Mali Galović“.\r\n\r\nU sklopu manifestacije organiziraju mnoga događanja povezana s književnošću, ali i knjigom i čitanjem općenito, kao što su književni susreti, javna čitanja, predstavljanja knjiga, okrugli stolovi, stručni i znanstveni kolokviji, izložbe, predstave, ekskurzije i slično.\r\nGodine 2011. ova književna manifestacija prekoračila je granice Hrvatske i prerasla u Međunarodni festival književnosti. Festival je do sada ugostio velik broj književnika iz Hrvatske, kao i pisce iz Francuske, Španjolske, Italije, Poljske, Rusije, Bugarske i Slovenije.\r\nNagradu „Fran Galović“ do sada su, između ostalih, osvojili Ludwig Bauer, Ivana Šojat-Kuči, Boris Domagoj Biletić, Daniel Načinović, Daša Drndić i Lidija Bajuk.\r\n\r\nViše o „Galovićevoj jeseni“ možete saznati na stranicama www.dhk-koprivnica.com.hr ', '23', '10', '2016', NULL, '25', '10', '2016', NULL, NULL, NULL, 'Kultura');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email_guest` varchar(250) NOT NULL,
  `event` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `extension` varchar(250) NOT NULL,
  `event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `operater`
--

CREATE TABLE `operater` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `tel` varchar(250) DEFAULT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operater`
--

INSERT INTO `operater` (`id`, `username`, `password`, `email`, `tel`, `type`) VALUES
(1, 'kpadmin', '07e8291e8d4ef45d1e8cda6f645140dd', 'kpadmin@gmail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `streetnames`
--

CREATE TABLE `streetnames` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `streetnames`
--

INSERT INTO `streetnames` (`id`, `name`) VALUES
(1, 'Ulica Ante Starčevića'),
(2, 'Istarska ulica'),
(3, 'Pavelinska ulica'),
(4, 'Ulica Antuna Mihanovića'),
(5, 'Križevačka ulica'),
(6, 'Ulica Augusta Šenoe'),
(7, 'Frankopanska ulica'),
(8, 'Ulica Braće Radić'),
(9, 'Zagrebačka ulica'),
(10, 'Ulica Ivana Česmičkog'),
(11, 'Bjelovarska cesta'),
(12, 'Starogradska ulica'),
(13, 'Peteranska cesta'),
(14, 'Ulica Antuna Gustava Matoša'),
(15, 'Ulica Adolfa Dančića'),
(16, 'Ulica Andrije Hebranga'),
(17, 'Ulica Ante Neimarevića'),
(18, 'Bajer ulica'),
(19, 'Beč ulica'),
(20, 'Bilogorska ulica'),
(21, 'Ulica Božene Loborec'),
(22, 'Ulica Braće Malančec'),
(23, 'Braće Wolf'),
(24, 'Ulica Brune Bušića'),
(25, 'Ciglana ulica'),
(26, 'Cinderišće'),
(27, 'Crnogorska ulica'),
(28, 'Cvjetna ulica'),
(32, 'Čakovečka ulica'),
(33, 'Čarda ulica'),
(34, 'Čomborov put'),
(35, 'Dalmatinska ulica'),
(36, 'Danica ulica'),
(37, 'Domžalska ulica'),
(38, 'Ulica Donji Banovec'),
(39, 'Ulica Dore Pejačević'),
(40, 'Ulica dr. Nikole Sertića'),
(41, 'Ulica dr. Željka Selingera'),
(42, 'Dravska ulica'),
(43, 'Dubovec ulica'),
(44, 'Dubovečki dol'),
(45, 'Duga ulica'),
(46, 'Đelekovečka cesta'),
(47, 'Ulica Đure Basaričeka'),
(48, 'Ulica Đure Estera'),
(49, 'Ulica Đure Sudete'),
(50, 'Ulica Ferde Rusana'),
(51, 'Florijanski trg'),
(52, 'Ulica Fortunata Pintarića'),
(53, 'Ulica Frana Galovića'),
(54, 'Ulica Franje Gažija'),
(55, 'Ulica Franje Mraza'),
(56, 'Franjevačka ulica'),
(57, 'Gibanična ulica'),
(58, 'Ulica Gorana Kovačića'),
(59, 'Gorička ulica'),
(60, 'Ulica Gornji Banovec'),
(61, 'Gospodarska ulica'),
(62, 'Ulica Grgura Karlovčana'),
(63, 'Hercegovačka ulica'),
(64, 'Herešinska ulica'),
(65, 'Ulica Hrvatske državnosti'),
(66, 'Ulica Hrvatskih branitelja'),
(67, 'I Vinodolski odvojak'),
(68, 'I Vinogradski odvojak'),
(69, 'II Vinogradski odvojak'),
(70, 'III Vinogradski odvojak'),
(71, 'Ulica Ivana Đurkana'),
(72, 'Ulica Ivana Generalića'),
(73, 'IV Vinogradski odvojak'),
(74, 'II Vinodolski odvojak'),
(75, 'Ulica Ivana Mažuranića'),
(76, 'Ulica Ivana Meštrovića'),
(77, 'Ulica Ivana Sabolića'),
(78, 'Ulica Ivana Trnskog'),
(79, 'Ulica Ivana Trubelje'),
(80, 'Ivanjska ulica'),
(81, 'Ivanjska cesta'),
(82, 'Ulica Ive Pevaleka'),
(83, 'Ulica Ivice Hiršala'),
(84, 'Ulica Josipa Bukovčana'),
(85, 'Ulica Josipa J. Strossmayera'),
(86, 'Ulica Josipa Kozarca'),
(87, 'Ulica Josipa Reša'),
(88, 'Ulica Josipa Sirutke'),
(89, 'Ulica Josipa Vargovića'),
(90, 'Ulica Jurja Bedenika'),
(91, 'Kalnička ulica'),
(92, 'Ulica Katarine Zrinski'),
(93, 'Ulica kneza Branimira'),
(94, 'Ulica kneza Domagoja'),
(95, 'Kolodvorska ulica'),
(96, 'Kozarnjak ulica'),
(97, 'Ulica kraljice Jelene'),
(98, 'Križevačka cesta'),
(99, 'Ulica Krste Hegedušića'),
(100, 'Ledinska ulica'),
(101, 'Ludbreška ulica'),
(102, 'Ludbreški odvojak'),
(103, 'Ulica Ljudevita Gaja'),
(104, 'Ulica Ljudevita Posavskog'),
(105, 'Magdalenska ulica'),
(106, 'Marijanska ulica'),
(107, 'Mariškina ulica'),
(108, 'Marofska ulica'),
(109, 'Ulica Matije Gupca'),
(110, 'Ulica Mihovila Pavleka Miškine'),
(111, 'Ulica Mije Šimeka'),
(112, 'Miklinovec ulica'),
(113, 'Ulica Milana Grafa'),
(114, 'Ulica Milana Krmpotića'),
(115, 'Ulica Mirka Viriusa'),
(116, 'Ulica Miroslava Krleže'),
(117, 'Ulica Močile'),
(118, 'Močilski odvojak I'),
(119, 'Močilski odvojak II'),
(120, 'Ulica Mosna'),
(121, 'Nemčićeva ulica'),
(122, 'Ulica Nikole Selaka'),
(123, 'Ulica Nikole Tesle'),
(124, 'Ulica Novi Brežanec'),
(125, 'Obrtnička ulica'),
(126, 'Omladinska ulica'),
(127, 'Opatička ulica'),
(128, 'Oružanska ulica'),
(129, 'Ulica Pavla Vuka Pavlovića'),
(130, 'Ulica Petra Svačića'),
(131, 'Planinarska ulica'),
(132, 'Podolice ulica'),
(133, 'Podravska ulica'),
(134, 'Potočna ulica'),
(135, 'Ulica Pravednika među narodima'),
(136, 'Preložna ulica'),
(137, 'Proljetna ulica'),
(138, 'Radnička cesta'),
(139, 'Reberinska ulica'),
(140, 'Rečko polje'),
(141, 'Ulica Rudešinkin breg'),
(142, 'Ulica Rudolfa Horvata'),
(143, 'Sajmišna ulica'),
(144, 'Severovec ulica'),
(145, 'Ulica Slavka Lowyja'),
(146, 'Sokolska ulica'),
(147, 'Ulica Stanka Sulimanovića'),
(148, 'Ulica Stari Brežanec'),
(149, 'Starogradska ulica'),
(150, 'Ulica Stjepana Kukeca'),
(151, 'Ulica Stjepana Miklaužića'),
(152, 'Supilova ulica'),
(153, 'Svilarska ulica'),
(154, 'Ulica Širovice'),
(155, 'Školska ulica'),
(156, 'Špoljarska ulica'),
(157, 'Taraščice ulica'),
(158, 'Ulica Tina Ujevića'),
(159, 'Ulica Tome Blažeka'),
(160, 'Ulica Tome Čikovića'),
(161, 'Ulica Tome Prosenjaka'),
(162, 'Ulica Tome Šestaka'),
(163, 'Trakošćanska ulica'),
(164, 'Trg bana Josipa Jelačića'),
(165, 'Trg Eugena Kumičića'),
(166, 'Trg Ivana Pavla II'),
(167, 'Trg kralja Krešimira'),
(168, 'Trg kralja Tomislava'),
(169, 'Trg kralja Zvonimira'),
(170, 'Trg dr. Leandera Brozovića'),
(171, 'Trg mladoosti'),
(172, 'Trg podravskih heroja'),
(173, 'Trg slobode'),
(174, 'Trg Tomislava Bardeka'),
(175, 'Trg Zlate Bartl'),
(176, 'Ulica Hrastova'),
(177, 'Ulica Vrbica'),
(178, 'Varaždinska cesta'),
(179, 'V Vinogradski odvojak'),
(180, 'Ulica Vijećnička'),
(181, 'Vinica'),
(182, 'Vinička ulica'),
(183, 'Vinički dol'),
(184, 'Vinički odvojak I'),
(185, 'Vinički odvojak II'),
(186, 'Vinički put'),
(187, 'Ulica Vinka Česija'),
(188, 'Ulica Vinka Vošickog'),
(189, 'Vinodolska ulica'),
(190, 'Vinogradska ulica'),
(191, 'Ulica Vladimira Nazora'),
(192, 'Voćarski put'),
(193, 'Zagorska ulica'),
(194, 'Zvirišće ulica'),
(196, 'Zrinski trg'),
(197, 'Ulica Zvonimira Goloba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_organizer` (`organizer`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_event` (`event`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD KEY `index_event` (`event`) USING BTREE;

--
-- Indexes for table `operater`
--
ALTER TABLE `operater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `streetnames`
--
ALTER TABLE `streetnames`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `operater`
--
ALTER TABLE `operater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `streetnames`
--
ALTER TABLE `streetnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
