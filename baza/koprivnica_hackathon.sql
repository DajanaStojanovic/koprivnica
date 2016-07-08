-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2016 at 01:44 PM
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
  `category` varchar(250) NOT NULL,
  `pic_extension` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `location`, `description`, `start_day`, `start_month`, `start_year`, `start_time`, `finish_day`, `finish_month`, `finish_year`, `finish_time`, `organizer`, `price`, `category`, `pic_extension`) VALUES
(1, 'Istražujemo i igramo se s tabletima', 'Knjižnica i čitaonica “Fran Galović”', 'Radionica za djecu od 5 do 7 godina\r\n\r\nDječji odjel\r\n\r\nVoditeljice: knjižničarke u Dječjem odjelu', '08', '07', '2016', '10:00:00', '08', '07', '2016', '10:45:00', NULL, NULL, 'Obrazovanje', NULL),
(2, 'Program „Zdravstveni susreti pod suncobranima“', 'Knjižnica i čitaonica “Fran Galović”', 'Terasa ispred Knjižnice i čitaonice “Fran Galović” /  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Perite ruke – spasite živote\r\n\r\nPredavač(i): Snježana Vuljak ,bacc.med.ses. i Anita Galinec,bacc.med.ses.', '08', '07', '2016', '10:00:00', '08', '07', '2016', NULL, NULL, NULL, 'Zdravlje', NULL),
(3, 'Ljeto u Ludensu – Predstava Od tišine do glazbe', 'Atrij Doma mladih Koprivnica', 'Predstava Od tišine do glazbe (9. srpnja). U jednosatnom performansu dramski glumac i pijanist Jure Ivanušič atraktivno, virtuozno i žanrovski raznoliko vodi nas kroz fenomen glazbe. U svom ilustrativnom, duhovitom, a ipak muzikološko vjerodostojnom nastupu majstorski se transformira iz jedne glazbeno relevantne uloge u sljedeću; od pijanista do pjevača, od skladatelja do dirigenta, od muzikologa do glazbenog kritičara. Od kamenog doba do Rolling Stonesa, od klasike do moderne, od jazza do popa, od popevke do šansona, od uvertire do aplauza. Jure Ivanušič izvanredan je glumac i vrhunski glazbenik koji, polazeći od nekih elemenata kabarea, stvara rijetko viđenu svečanost kazališta, glazbe i humora.', '09', '07', '2016', '21:00:00', '09', '07', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(4, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje', 'Knjižnica i čitaonica “Fran Galović”', 'Dječji odjel\r\n\r\nČitamo priču: Čajana na mjesecu\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica\r\n', '11', '07', '2016', '17:30:00', '11', '07', '2016', '18:30:00', NULL, NULL, 'Obrazovanje', NULL),
(5, 'Kreativna radionica STRIPA – za djecu i mlade', 'Knjižnica i čitaonica “Fran Galović”', 'Terasa ispred Knjižnice i čitaonice “Fran Galović”/ u slučaju lošeg vremena Čitaonica tiska\r\n\r\nVoditelj: Zvonimir Haramija', '13', '07', '2016', '10:00:00', '13', '07', '2016', NULL, NULL, NULL, 'Zabava', NULL),
(6, 'Program „Zdravstveni susreti pod suncobranima“', 'Knjižnica i čitaonica “Fran Galović”', 'Terasa ispred Knjižnice i čitaonice “Fran Galović”/  u slučaju lošeg vremena Čitaonica tiska\r\n\r\nTema: Žene i novorođenčad : “SRCE PRIMALJSTVA“\r\n\r\nPredavač(i): Izabela Knapić, prvostupnica primaljstva i Maja Katana,dr.med.', '15', '07', '2016', '10:00:00', '15', '07', '2016', NULL, NULL, NULL, 'Zdravlje', NULL),
(7, 'Istražujemo i igramo se s tabletima', 'Knjižnica i čitaonica “Fran Galović”', 'Radionica za djecu od 5 do 7 godina\r\n\r\nVoditeljice: knjižničarke u Dječjem odjelu', '15', '07', '2016', '10:00:00', '15', '07', '2016', '10:45:00', NULL, NULL, 'Obrazovanje', NULL),
(8, 'Ljeto u Ludensu – Predstava SHAKEspeare na EXIT', 'Atrij Doma mladih Koprivnica', 'Predstava SHAKEspeare na EXIT zagrebačkog Teatra Exit u kojoj igraju Živko Anočić, Saša Anočić i Marko Makovičić, a režiju potpisuje Matko Raguž. Što se događa kada se tri obična momka i jedan bard susretnu oči u oči, publika će moći pogledati 16. srpnja. Shakespeare je napisao 37 komada. Od čega 10 povijesnih drama i 18 komedija. Svaki od 37 komada postavljen pojedinačno na scenu traje, zavisno od kraćenja, između 3 i 5 sati. Dakle, 37 x 4 sata (prosječno) iznosi 148 sati. Jeste li znali kako je sve to moguće odigrati u manje od 2 sata?! Publika će kroz ovu predstavu upoznati Romea i Juliju, Hamleta, Ofeliju, Macbetha i njegovu krvavu Lady, Antonija i Kleopatru, Mletačkog trgovca, Tita Andronika, Kralja Leara, Richarda III, Henrika VIII i mnoge druge, kakve ih još nikada nije vidjela.', '16', '07', '2016', '21:00:00', '16', '07', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(9, 'Pričaonica za djecu predškolske dobi od 4 godine nadalje', 'Knjižnica i čitaonica “Fran Galović”', 'Dječji odjel\r\n\r\nČitamo priču: Čarapojedac\r\n\r\nVoditeljica: Marta Jagušić, odgajateljica', '18', '07', '2016', '17:30:00', '18', '07', '2016', '18:30:00', NULL, NULL, 'Obrazovanje', NULL),
(10, 'Kreativna radionica „Bakina kuharica“ – izrada kuharice starih recepata', 'Knjižnica i čitaonica “Fran Galović”', 'Za djecu i odrasle\r\n\r\nTerasa ispred Knjižnice i čitaonice “Fran Galović”/  u slučaju lošeg vremena Čitaonica tiska\r\n', '20', '07', '2016', '09:30:00', '20', '07', '2016', NULL, NULL, NULL, 'Zabava', NULL),
(11, 'Izložba i sajam cvijeća', 'Zrinski trg, Koprivnica', 'Sajam cvijeća je prodajna izložba cvijeća, sadnica, dendrološkog materijala, gdje će posjetitelji u toj doista živopisnoj ponudi pronaći nešto za svoj dom. Uz već spomenutu prodajnu izložbu cvijeća, samu manifestaciju će upotpuniti i prezentacija Starih zanata koji se tematski uklapaju u event.\r\n\r\nKao i svake godine, 01. svibnja na Praznik rada, Zrinski će trg biti prepun zabavnih sadržaja koje Grad poklanja svojim sugrađanima, što će obogatiti već spomenuto događanje na Jelačićevom trgu i zaokružiti cijelu priču.', '01', '05', '2016', NULL, '01', '05', '2016', NULL, NULL, NULL, 'Kultura', '11.jpg'),
(12, 'Jagnjedovečka legenda', 'Jagnjedovec, Koprivnica', 'Jagnjedovečka legenda (Jagnjedovec) je legenda kojom se oživljava ponovno naseljavanje kraja i uspomena na gozbu 26. travnja 1642. kada su mještani ugostili koprivničkog kapetana koji im je dopustio naseljavanje i održat će se 5. svibnja u Jagnjedovcu (Koprivnica).\r\n\r\nJagnjedovec se prvi puta spominje 1351. godine. Napušteno je u vrijeme osmanskih provala. Ponovno je bilo naseljeno 1642. godine Slavoncima (kajkavskim hrvatskim stanovništvom). Koprivnički veliki kapetan Ivan Vilim Galler je “na stoviteh slovenskeh sinov prošnju”, želeći naseliti prostor Koprivničke kapetanije, “vu Jagnedovec poslal gledati obkotariti” koprivničkog vicekapetana Sigmunda Iglla, te vojvode Androka (vjerojatno Mojsesa), (Ivana) Krupca i Radmana (od Poganca). Tada su određene međe jagnjedovečkog područja.\r\n\r\nOd potoka Jagnjedovca “nekem jarkom iduć na Ivančićevo zaglavje, od tud Draganovem bregom stezom na veliko bilo križevečke megje, od onud zopet stezom na Kamenski breg, bregom do neke ravnice, od tud pojduć starem putem na Vrankovićeve steze, od onud stezom pustivši se dolu vu imenovani gore Jagnedovec potok.” Kapetan je “spomenutem stanovitem Slovencem” dopustio da se nastane “vu miru i slobode”.', '05', '05', '2016', NULL, '05', '05', '2016', NULL, NULL, NULL, 'Kultura', '12.jpg'),
(13, 'Galovićeva jesen', 'Koprivnica', 'U dva desetljeća postojanjafestival književnosti „Galovićeva jesen“,kojeg organiziraju Podravsko-prigorski ogranak Društva hrvatskih književnika i Grad Koprivnica, izrastao je u najznačajniju književnu manifestaciju Podravine i Prigorja. Danas zauzima visoko mjesto i na karti zbivanja u hrvatskoj kulturi općenito, a Nagrada „Fran Galović“ za najbolje književno djelo zavičajne tematike nagrada je iznimno cijenjena i na nacionalnoj razini.\r\n\r\nTemelj „Galovićeve jeseni“ očuvanje je i vrednovanje djela Frana Galovića, ali i vrednovanje suvremene hrvatske književnosti, i to prije svega dodjelom Nagrade „Fran Galović“ te poticanjem književnog stvaralaštva kod učenika osnovnih i srednjih škola dodjelom Nagrade „Mali Galović“.\r\n\r\nU sklopu manifestacije organiziraju mnoga događanja povezana s književnošću, ali i knjigom i čitanjem općenito, kao što su književni susreti, javna čitanja, predstavljanja knjiga, okrugli stolovi, stručni i znanstveni kolokviji, izložbe, predstave, ekskurzije i slično.\r\nGodine 2011. ova književna manifestacija prekoračila je granice Hrvatske i prerasla u Međunarodni festival književnosti. Festival je do sada ugostio velik broj književnika iz Hrvatske, kao i pisce iz Francuske, Španjolske, Italije, Poljske, Rusije, Bugarske i Slovenije.\r\nNagradu „Fran Galović“ do sada su, između ostalih, osvojili Ludwig Bauer, Ivana Šojat-Kuči, Boris Domagoj Biletić, Daniel Načinović, Daša Drndić i Lidija Bajuk.\r\n\r\nViše o „Galovićevoj jeseni“ možete saznati na stranicama www.dhk-koprivnica.com.hr ', '23', '10', '2016', NULL, '25', '10', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(14, 'Noć muzeja - Muzej grada Koprivnice', 'Muzej grada Koprivnice', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', '14.jpg'),
(15, 'Noć muzeja - Franjevačka crkva', 'Franjevačka crkva, Koprivnica', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', NULL),
(16, 'Noć muzeja - Crkva sv. Nikole', 'Crkva sv. Nikole, Koprivnica', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', NULL),
(17, 'Noć muzeja - Pravoslavna crkv', 'Pravoslavna crkva, Koprivnica', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', NULL),
(18, 'Noć muzeja - Stara sinagoga', 'Stara sinagoga, Koprivnica', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', NULL),
(19, 'Noć muzeja - Galerija Koprivnica ', 'Galerija Koprivnica ', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', NULL),
(20, 'Noć muzeja - Galerija Hlebine', 'Galerija Hlebine, Koprivnica', 'Muzejska prešenjcija – tragovima sakralne umjetnosti\r\n\r\nIzložbe, razgled sakralnih objekata uz stručna vodstva, zborovi, promocije', '29', '01', '2016', '18:00:00', '30', '01', '2016', '00:00:00', NULL, NULL, 'Kultura', NULL),
(21, 'Koprivnički fašnik ', 'Zrinski trg, Koprivnica', 'Koprivničke maškare, velika fašnička povorka s maskiranom djecom, ali i odraslima, program se nastavlja uz ples pod maskama i zabavne igre.\r\n', '06', '02', '2016', NULL, '06', '02', '2016', NULL, NULL, NULL, 'Kultura', '21.jpg'),
(22, 'U susret Uskrsu', 'Zrinski trg, Koprivnica', 'Izložba velikih pisanica ', '11', '03', '2016', NULL, '20', '03', '2016', NULL, NULL, NULL, 'Kultura', '22.jpg'),
(23, 'Ribolovci svome gradu', 'Zrinski trg, Koprivnica', 'Natjecanje u pripremi fiš paprikaša. Velika gastronomska ponuda ribe (kotlovina, fiš paprikaš, pečena riba na rašljama) uz mogućnost pecanja u bazenu.', '19', '03', '2016', NULL, '20', '03', '2016', NULL, NULL, NULL, 'Zabava', '23.jpg'),
(24, 'Klimatski tjedan', 'Zrinski trg, Koprivnica', 'Koprivnički klimatski tjedan, manifestacija kojom podižemo svijest javnosti o opasnosti od klimatskih promjena, potrebi osobnog i zajedničkog djelovanja u smjeru smanjivanja negativnog utjecaja na klimu te mjerama prilagodbe novim uvjetima.', '01', '04', '2016', NULL, '07', '04', '2016', NULL, NULL, NULL, 'Obrazovanje', NULL),
(25, 'Tradicija naših starih', 'Zrinski trg, Koprivnica', 'Prezentacija starih zanata', '16', '04', '2016', NULL, '16', '04', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(26, 'XCM Koprivnica 2016', 'Zrinski trg, Koprivnica', 'Međunarodna brdsko-biciklistička utrka', '08', '05', '2016', NULL, '08', '05', '2016', NULL, NULL, NULL, 'Sport', NULL),
(27, 'Festival biciklističke rekreacije Hrvatske', 'Zrinski trg, Koprivnica', '"Biciklom po Podravini" - "Dan bicikla i biciklizma Grada Koprivnice"', '05', '06', '2016', NULL, '05', '06', '2016', NULL, NULL, NULL, 'Sport', NULL),
(28, 'Podravski motivi', 'Gradski park, Koprivnica', 'Središnja turističko – kulturna manifestacija s isticanjem prepoznatljivih vrijednosti slikarstva naive, starih zanata, podravske glazbe, hrane i pića, rukotvorina i dr.', '01', '07', '2016', NULL, '03', '07', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(29, 'Dan povrća Koprivničko-križevačke županije', 'Zrinski trg, Koprivnica', '9:00 Kulturno umjetnički program\r\n\r\n Hrvatski kulturni centar „Bunjevačko kolo“, Subotica\r\n\r\n KUD „Mladi metalac“ Hadžići-Bosna i Hercegovina\r\n\r\n KUD Delovi\r\n\r\n KUD „Rudar“ Glogovac\r\n\r\n9:30 Otvaranje Dana povrća Koprivničko – križevačke županije – 29 izlagača', '02', '07', '2016', NULL, '02', '07', '2016', NULL, NULL, NULL, 'Kulutra', NULL),
(30, 'Dan povrća Koprivničko-križevačke županije', 'HGK Županijska komora Koprivnica', '10.00 Otvaranje stručnog skupa\r\n\r\n10.10 Marin Kukoč dipl. ing.\r\n\r\n Ministarstvo poljoprivrede Republike Hrvatske\r\n\r\n Mjere programa ruralnog razvoja za male i mlade poljoprivrednike\r\n\r\n10.30 Dr. sc. Dario Ivić\r\n\r\n HCPHS, Zavod za zaštitu bilja\r\n\r\n Najraširenije viroze paprike i mjere sprečavanja njihove pojave\r\n\r\n10:50 Martina Borić, dipl.ing.\r\n\r\n Pro-eco d.o.o.\r\n\r\n Kompetitori štetnim patogenima u tlu u proizvodnji povrća\r\n\r\n11.10 Dr. sc. Zdravko Matotan\r\n\r\n Podravka d.d., Istraživanje i razvoj, Razvoj poljoprivrede\r\n\r\n Mogućnosti razvoja suvremene proizvodnje graha u Podravini\r\n\r\n11.30 Ivana Erhatić dipl. ing.\r\n\r\n Udruga proizvođača povrća i voća Koprivničko-križevačke županije\r\n\r\n Proizvodnja povrća na području Strumice u Republici Makedoniji\r\n\r\n11.50 Rasprava i prijedlozi\r\n\r\n12.00 Podjela priznanja za najljepše uređeni izložbeni prostor Dana povrća 2016. godine\r\n\r\n12.15 Obilazak pokusnog polja Razvoja poljoprivrede Podravke na Danici u Koprivnici', '02', '07', '2016', NULL, '02', '07', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(31, 'Renesansni festival – žive slike iz povijesti', 'Koprivnica', 'Renesansni festival je TOP manifestacija i najkompleksnije organizirana manifestacija u Hrvatskoj.\r\n\r\nPovijesno turistički mega spektakl Renesansni festival sljubljivanje je kasno srednjovijekovnih fakata i originalnosti Koprinice, Podravine i Hrvatske s baštinskim vrijednostima zapadnoeuropskog kulturnog civilizacijskog kruga (čiji je dio i Hrvatska), koje se manifestiraju kroz brojne viteške, obrtničke i muzičke skupine iz gotovo deset europskih zemalja. Manifestacija je pravi primjer razvijanja europskog identiteta Grada i Regije.', '25', '08', '2016', NULL, '28', '08', '2016', NULL, NULL, NULL, 'Kultura', NULL),
(32, 'Europski tjedan kretanja', 'Koprivnica', 'Manifestacija poticanja žitelja na zdraviji život i aktivnosti korištenja bicikla, šetnje, trčanje – kao doprinos čistoći zraka i očuvanju prirode koja nas okružuje.', '16', '09', '2016', NULL, '22', '09', '2016', NULL, NULL, NULL, 'Zdravlje', NULL),
(33, 'Dan Grada', 'Koprivnica', 'Prigodan program prigodom obilježavanja rođendana Grada', '04', '11', '2016', NULL, '04', '11', '2016', NULL, NULL, NULL, 'Zabava', NULL),
(34, 'FEST JAZZA Koprivnica 2016.', 'Koprivnica', 'Fest Jazza Koprivnica najveća je jazz open-air manifestacija u sjeverozapadnoj Hrvatskoj. Ove godine očekuje nas preko 150 sudionika, 9 glazbenih sastava, glazbene radionice, predavanja, festivalska noć, projekcije i jam session, naravno, uz ugodno druženje.', '08', '07', '2016', NULL, '09', '07', '2016', NULL, NULL, NULL, 'Zabava', NULL),
(35, '„Mreža plus“ – istraži korisne web stranice i alate', 'Knjižnica i čitaonica “Fran Galović”', 'Voditeljice: knjižničarke u Dječjem odjelu ', '07', '07', '2016', '13:00:00', '07', '07', '2016', NULL, NULL, NULL, 'Obrazovanje', NULL),
(36, '„Mreža plus“ – istraži korisne web stranice i alate', 'Knjižnica i čitaonica “Fran Galović”', 'Voditeljice: knjižničarke u Dječjem odjelu ', '14', '07', '2016', '13:00:00', '14', '07', '2016', NULL, NULL, NULL, 'Obrazovanje', NULL),
(37, '„Mreža plus“ – istraži korisne web stranice i alate', 'Knjižnica i čitaonica “Fran Galović”', 'Voditeljice: knjižničarke u Dječjem odjelu ', '21', '07', '2016', '13:00:00', '21', '07', '2016', NULL, NULL, NULL, 'Obrazovanje', NULL),
(38, '„Mreža plus“ – istraži korisne web stranice i alate', 'Knjižnica i čitaonica “Fran Galović”', 'Voditeljice: knjižničarke u Dječjem odjelu ', '28', '07', '2016', '13:00:00', '28', '07', '2016', NULL, NULL, NULL, 'Obrazovanje', NULL),
(39, 'Filmovi u podne', 'Knjižnica i čitaonica “Fran Galović”', 'Dječji odjel\r\n\r\nVideo projekcije prema izboru djece', '19', '07', '2016', '12:00:00', '19', '07', '2016', NULL, NULL, NULL, 'Zabava', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
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
