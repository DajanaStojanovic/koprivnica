-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2016 at 07:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

drop database if exists KoprivnicaLifeDB;
create database KoprivnicaLifeDB character set utf8 collate utf8_general_ci;
use KoprivnicaLifeDB;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `KoprivnicaLifeDB`
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
  `start_day` varchar(2) NOT NULL,
  `start_month` varchar(2) NOT NULL,
  `start_year` varchar(4) NOT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `finish_day` varchar(2) NOT NULL,
  `finish_month` varchar(2) NOT NULL,
  `finish_year` varchar(4) NOT NULL,
  `finish_time`  varchar(50) DEFAULT NULL,
  `organizer` varchar(250) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `category` varchar(250) NOT NULL,
  `pic_extension` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `location`, `description`, `start_day`, `start_month`, `start_year`, `start_time`, `finish_day`, `finish_month`, `finish_year`, `finish_time`, `organizer`, `price`, `category`, `pic_extension`, `url`) VALUES
(1, 'Istražujemo i igramo se s tabletima', 'Zrinski trg 6, Koprivnica', 'Radionica za djecu od 5 do 7 godina\r\n\r\nDječji odjel\r\n\r\nVoditeljice: knjižničarke u Dječjem odjelu', '08', '07', '2016', 10, '08', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '1.jpg', NULL),
(2, 'Program „Zdravstveni susreti pod suncobranima“', 'Zrinski trg 6, Koprivnica', 'Terasa ispred Knjižnice i čitaonice “Fran Galović” /  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Perite ruke – spasite živote\r\n\r\nPredavač(i): Snježana Vuljak ,bacc.med.ses. i Anita Galinec,bacc.med.ses.', '08', '07', '2016', 10, '08', '07', '2016', 21, NULL, NULL, 'Zdravlje', '2.jpg', NULL),
(3, 'Ljeto u Ludensu – Predstava Od tišine do glazbe', 'Ulica Hrvatske državnosti 10, Koprivnica', 'Predstava Od tišine do glazbe (9. srpnja). U jednosatnom performansu dramski glumac i pijanist Jure Ivanušič atraktivno, virtuozno i žanrovski raznoliko vodi nas kroz fenomen glazbe. U svom ilustrativnom, duhovitom, a ipak muzikološko vjerodostojnom nastupu majstorski se transformira iz jedne glazbeno relevantne uloge u sljedeću; od pijanista do pjevača, od skladatelja do dirigenta, od muzikologa do glazbenog kritičara. Od kamenog doba do Rolling Stonesa, od klasike do moderne, od jazza do popa, od popevke do šansona, od uvertire do aplauza. Jure Ivanušič izvanredan je glumac i vrhunski glazbenik koji, polazeći od nekih elemenata kabarea, stvara rijetko viđenu svečanost kazališta, glazbe i humora.', '09', '07', '2016', 10, '09', '07', '2016', 21, NULL, NULL, 'Kultura', '3.jpg', NULL),
(4, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje', 'Zrinski trg 6, Koprivnica', 'Dječji odjel\r\n\r\nČitamo priču: Čajana na mjesecu\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica\r\n', '11', '07', '2016', 10, '11', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '4.jpg', NULL),
(5, 'Kreativna radionica STRIPA – za djecu i mlade', 'Zrinski trg 6, Koprivnica', 'Terasa ispred Knjižnice i čitaonice “Fran Galović”/ u slučaju lošeg vremena Čitaonica tiska\r\n\r\nVoditelj: Zvonimir Haramija', '13', '07', '2016', 10, '13', '07', '2016', 21, NULL, NULL, 'Zabava', '5.jpg', NULL),
(6, 'Program „Zdravstveni susreti pod suncobranima“', 'Zrinski trg 6, Koprivnica', 'Terasa ispred Knjižnice i čitaonice “Fran Galović”/  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Žene i novorođenčad : “SRCE PRIMALJSTVA“\r\n\r\nPredavač(i): Izabela Knapić, prvostupnica primaljstva i Maja Katana,dr.med.', '15', '07', '2016', 10, '15', '07', '2016', 21, NULL, NULL, 'Zdravlje', '2.jpg', NULL),
(7, 'Istražujemo i igramo se s tabletima', 'Zrinski trg 6, Koprivnica', 'Radionica za djecu od 5 do 7 godina\r\n\r\nVoditeljice: knjižničarke u Dječjem odjelu', '15', '07', '2016', 10, '15', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '1.jpg', NULL),
(8, 'Ljeto u Ludensu – Predstava SHAKEspeare na EXIT', 'Ulica Hrvatske državnosti 10, Koprivnica', 'Predstava SHAKEspeare na EXIT zagrebačkog Teatra Exit u kojoj igraju Živko Anočić, Saša Anočić i Marko Makovičić, a režiju potpisuje Matko Raguž. Što se događa kada se tri obična momka i jedan bard susretnu oči u oči, publika će moći pogledati 16. srpnja. Shakespeare je napisao 37 komada. Od čega 10 povijesnih drama i 18 komedija. Svaki od 37 komada postavljen pojedinačno na scenu traje, zavisno od kraćenja, između 3 i 5 sati. Dakle, 37 x 4 sata (prosječno) iznosi 148 sati. Jeste li znali kako je sve to moguće odigrati u manje od 2 sata?! Publika će kroz ovu predstavu upoznati Romea i Juliju, Hamleta, Ofeliju, Macbetha i njegovu krvavu Lady, Antonija i Kleopatru, Mletačkog trgovca, Tita Andronika, Kralja Leara, Richarda III, Henrika VIII i mnoge druge, kakve ih još nikada nije vidjela.', '16', '07', '2016', 10, '16', '07', '2016', 21, NULL, NULL, 'Kultura', '8.jpg', NULL),
(9, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje', 'Zrinski trg 6, Koprivnica', 'Dječji odjel\r\n\r\nČitamo priču: Čarapojedac\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica', '18', '07', '2016', 10, '18', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '4.jpg', NULL),
(10, 'Kreativna radionica „Bakina kuharica“ – izrada kuharice starih recepata', 'Zrinski trg 6, Koprivnica', 'Za djecu i odrasle\r\n\r\nTerasa ispred Knjižnice i čitaonice “Fran Galović”/  u slučaju lošeg vremena Čitaonica tiska\r\n', '20', '07', '2016', 10, '20', '07', '2016', 21, NULL, NULL, 'Zabava', '10.jpg', NULL),
(28, 'Podravski motivi', 'Gradski park, Koprivnica', 'Središnja turističko – kulturna manifestacija s isticanjem prepoznatljivih vrijednosti slikarstva naive, starih zanata, podravske glazbe, hrane i pića, rukotvorina i dr.', '01', '07', '2016', NULL, '03', '07', '2016', NULL, NULL, NULL, 'Kultura', '28.jpg', NULL),
(29, 'Dan povrća Koprivničko-križevačke županije', 'Zrinski trg, Koprivnica', '9:00 Kulturno umjetnički program\r\n\r\n Hrvatski kulturni centar „Bunjevačko kolo“, Subotica\r\n\r\n KUD „Mladi metalac“ Hadžići-Bosna i Hercegovina\r\n\r\n KUD Delovi\r\n\r\n KUD „Rudar“ Glogovac\r\n\r\n9:30 Otvaranje Dana povrća Koprivničko – križevačke županije – 29 izlagača', '02', '07', '2016', NULL, '02', '07', '2016', NULL, NULL, NULL, 'Posao', '29.jpg', NULL),
(30, 'Dan povrća Koprivničko-križevačke županije', 'Ulica Josipa Vargovića 4, Koprivnica', '10.00 Otvaranje stručnog skupa\r\n\r\n10.10 Marin Kukoč dipl. ing.\r\n\r\n Ministarstvo poljoprivrede Republike Hrvatske\r\n\r\n Mjere programa ruralnog razvoja za male i mlade poljoprivrednike\r\n\r\n10.30 Dr. sc. Dario Ivić\r\n\r\n HCPHS, Zavod za zaštitu bilja\r\n\r\n Najraširenije viroze paprike i mjere sprečavanja njihove pojave\r\n\r\n10:50 Martina Borić, dipl.ing.\r\n\r\n Pro-eco d.o.o.\r\n\r\n Kompetitori štetnim patogenima u tlu u proizvodnji povrća\r\n\r\n11.10 Dr. sc. Zdravko Matotan\r\n\r\n Podravka d.d., Istraživanje i razvoj, Razvoj poljoprivrede\r\n\r\n Mogućnosti razvoja suvremene proizvodnje graha u Podravini\r\n\r\n11.30 Ivana Erhatić dipl. ing.\r\n\r\n Udruga proizvođača povrća i voća Koprivničko-križevačke županije\r\n\r\n Proizvodnja povrća na području Strumice u Republici Makedoniji\r\n\r\n11.50 Rasprava i prijedlozi\r\n\r\n12.00 Podjela priznanja za najljepše uređeni izložbeni prostor Dana povrća 2016. godine\r\n\r\n12.15 Obilazak pokusnog polja Razvoja poljoprivrede Podravke na Danici u Koprivnici', '02', '07', '2016', NULL, '02', '07', '2016', NULL, NULL, NULL, 'Posao', '29.jpg', NULL),
(34, 'FEST JAZZA Koprivnica 2016.', 'Koprivnica', 'Fest Jazza Koprivnica najveća je jazz open-air manifestacija u sjeverozapadnoj Hrvatskoj. Ove godine očekuje nas preko 150 sudionika, 9 glazbenih sastava, glazbene radionice, predavanja, festivalska noć, projekcije i jam session, naravno, uz ugodno druženje.', '08', '07', '2016', NULL, '09', '07', '2016', NULL, NULL, NULL, 'Zabava', '34.jpg', NULL),
(35, '„Mreža plus“ – istraži korisne web stranice i alate', 'Zrinski trg 6, Koprivnica', 'Voditeljice: knjižničarke u Dječjem odjelu ', '07', '07', '2016', 10, '07', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '38.jpg', NULL),
(36, '„Mreža plus“ – istraži korisne web stranice i alate', 'Zrinski trg 6, Koprivnica', 'Voditeljice: knjižničarke u Dječjem odjelu ', '14', '07', '2016', 10, '14', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '38.jpg', NULL),
(37, '„Mreža plus“ – istraži korisne web stranice i alate', 'Zrinski trg 6, Koprivnica', 'Voditeljice: knjižničarke u Dječjem odjelu ', '21', '07', '2016', 10, '21', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '38.jpg', NULL),
(38, '„Mreža plus“ – istraži korisne web stranice i alate', 'Zrinski trg 6, Koprivnica', 'Voditeljice: knjižničarke u Dječjem odjelu ', '28', '07', '2016', 10, '28', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '38.jpg', NULL),
(39, 'Filmovi u podne', 'Zrinski trg 6, Koprivnica', 'Dječji odjel\r\n\r\nVideo projekcije prema izboru djece', '19', '07', '2016', 10, '19', '07', '2016', NULL, NULL, NULL, 'Zabava', '39.jpg', NULL),
(40, 'Program „Zdravstveni susreti pod suncobranima“', 'Zrinski trg 6, Koprivnica', 'Terasa ispred Knjižnice i čitaonice “Fran Galović” /  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Kako preživjeti menopauzu?\r\n\r\nPredavač(i): Slavica Pirc, bacc. med. techn. i Ivan Pavlović, dr. med. spec. gin.', '22', '07', '2016', 10, '22', '07', '2016', NULL, NULL, NULL, 'Zdravlje', '2.jpg', NULL),
(41, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje ', 'Zrinski trg 6, Koprivnica', 'Dječji odjel\r\n\r\nČitamo priču: Winnie pod morem\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica', '25', '07', '2016', 10, '25', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '4.jpg', NULL),
(42, 'TEDxKoprivnicaLibrary – što nam budućnost i znanost donose? ', 'Zrinski trg 6, Koprivnica', 'Dvorište Knjižnice i Kina Velebit', '26', '07', '2016', 10, '26', '07', '2016', NULL, NULL, NULL, 'Obrazovanje', '42.jpg', NULL),
(43, 'Radionica FRANCUSKOG JEZIKA za djecu od 5 do 10 godina ', 'Zrinski trg 6, Koprivnica', 'Dječji odjel\r\n\r\nVoditeljica: Irena Novak, mag. educ. francuskog jezika i književnosti i mag. etnologije i kulturne antropologije\r\n\r\nProgram JEZIČNI GLOBUS', '26', '07', '2016', 10, '26', '07', '2016', 21, NULL, NULL, 'Obrazovanje', '43.jpg', NULL),
(44, 'Program „Zdravstveni susreti pod suncobranima“', 'Zrinski trg 6, Koprivnica', 'Terasa ispred Knjižnice i čitaonice “Fran Galović” /  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Kako se nositi sa stresom?\r\n\r\nPredavač(i): Mirjana Grubić Marković, dr. med. spec. psihijatrije i Tihana Kosi, prof. psihologije', '29', '07', '2016', 10, '29', '07', '2016', NULL, NULL, NULL, 'Zdravlje', '2.jpg', NULL),
(45, '2. Ljetna tržnica knjiga', 'Gradski park, Koprivnica', 'Knjižnica i čitaonica “Fran Galović” ponovno će na prodaju ponuditi otpisane knjige iz svog amortiziranog fonda, a poznati nakladnici ponudit će svoja izdanja po povoljnijoj cijeni. Dođite i ugodno provedite subotnje jutro s knjigom!', '30', '07', '2016', 10, '30', '07', '2016', 21, NULL, NULL, 'Posao', '45.jpg', NULL),
(46, 'Međunarodni festival folklora: "Iz bakine škrinje"', 'Starogradska ulica 1, Koprivnica', 'Dvorana "Domoljub"\r\n\r\nBesplatne ulaznice za 10. međunarodni festival folklora "Iz bakine škrinje" (za koncert u Domoljubu) možete podići u Domoljubu radnim danom od 7:00 do 19:00 sati.', '09', '07', '2016', 10, '09', '07', '2016', NULL, NULL, NULL, 'Kultura', '46.jpg', NULL),
(47, '‘Ready, Steady, Go!‘ - završni event ‘GO!‘', 'Ulica Hrvatske državnosti 10, Koprivnica', 'Koprivnički poduzetnik u suradnji s partnerom Udruženjem obrtnika Koprivnica provodi projekt ‘Ready, Steady, Go!‘. U sklopu projekta dosad su organizirali tri eventa, a u sklopu završnog, ‘GO!‘, koji će se održati u petak 8. srpnja organiziraju poduzetnički panel i party s grupom Blues Messenger.\r\n\r\nNa poduzetničkom panelu svoje će priče ispričati Ivana Toth iz poduzeća iTi PARTNERI i Saša Miklošić iz projekta NANODIY. Na svojem će primjeru objasniti da u privatnom poslu ne ide uvijek sve ‘ko po loju’, ali oni uporni, oni spremni pronaći pravi biznis za sebe, uvijek uspiju.\r\n\r\nBela Ikotić koordinator je projekata u Poduzetničkom inkubatoru BIOS Osijek. S prisutnima će podijeliti zanimljive priče o uspjehu, neuspjehu i upornosti s kojima se susreo radeći s poduzetnicima.', '08', '07', '2016', 10, '08', '07', '2016', NULL, NULL, NULL, 'Posao', '47.jpg', NULL),
(48, 'DJ DLAKAVI', 'Trg mladosti 18, Koprivnica', 'Najdlakaviji među PXL Crew je Dj Dlakavi :-) Ali to znači da je jedan od najkreativnijih selektora Pixela. Kaj nam ovaj puta prema, e to treba vidjeti! :-)', '09', '07', '2016', 10, '09', '07', '2016', NULL, NULL, NULL, 'Zabava', '48.jpg', NULL),
(49, 'Lego kockice u orbiti oko Jupitera', 'Trg mladosti 18, Koprivnica', 'Svemirska sonda Juno stigla je u orbitu oko najvećeg planeta Sunčeva sustava - Jupitera. Ako je pritom sve prošlo u redu, provest će tamo nešto više od godinu dana. Što će tamo raditi i što smo najnovije otkrili o kralju bogova među planetima (i zašto sa sobom nosi lego kockice) doznajte na zanimljivom predavanju Astronomskog društva Koprivnica uz izravno promatranje Jupitera teleskopom.\r\n\r\nGostuje: Astronomsko društvo Koprivnica', '14', '07', '2016', 10, '14', '07', '2016', NULL, NULL, NULL, 'Zabava', '49.jpg', NULL),
(50, 'Otvorenje izložbe Second (II)', 'Trg mladosti 18, Koprivnica', 'Second (II) je druga zajednička izložba autorica Teodore Lukavski i Nine Mataković. Ove mlade fotografkinje bave se različitim motivima: prirodom, portretima ali i interijerima, a zajednička im je ljubav prema fotografiji kao i sklonost prema eksperimentu u okvirima tog bezvremenskog medija.\r\n\r\nGostuju: Nina Mataković i Teodora Lukavski', '21', '07', '2016', 10, '21', '07', '2016', NULL, NULL, NULL, 'Kultura', '50.jpg', NULL),
(51, 'Kup Šoderice', 'Jezero Šoderica', 'U organizaciji Športskog ribolovnog kluba Koprivnica na Šoderici će se održati Kup Šoderice u lovu ribe udicom na plovak.', '31', '07', '2016', NULL, '31', '07', '2016', NULL, NULL, NULL, 'Sport', '51.jpg', NULL),
(52, 'Ljetni kamp „Cerine“', 'Ulica Miroslava Krleže 81, Koprivnica', 'Ljetni kamp „Cerine“ za djecu pruža priliku za razvijanje sportskih vještina, kreativnih sklonosti, kupanje i sunčanje te druženje s vršnjacima', '11', '07', '2016', NULL, '15', '07', '2016', NULL, NULL, NULL, 'Sport', '52.jpg', NULL),
(53, 'Ljetne bazezancije', 'Ulica Miroslava Krleže 81, Koprivnica', 'Ljetne bazezancije na Cerinama za mališane su pripremili natjecanja u raznim disciplinama: utrkivanje u čamcu na vodi, skok u vis i skok u dalj na vodi, utrka na luftićima, delfin štafeta, zarobljeno plivanje u dvoje, velika stijena, mostovi, rocker, klackalica i razni drugi poligoni.', '06', '07', '2016', NULL, '10', '07', '2016', NULL, NULL, NULL, 'Sport', '53.jpg', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
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
