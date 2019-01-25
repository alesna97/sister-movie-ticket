-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 07:42 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiket_bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_kontak` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama`, `email`, `password`, `jenis_kelamin`, `alamat`, `no_kontak`) VALUES
('an1', 'satria', 'idsatria96pradika@gmail.com', 'matapancing', 'L', 'jl. cisirung no. 79 RT 03/RW 02', '081222220841'),
('an2', 'anjas', 'anjaskuy@gmail.com', 'jneexpress', 'L', 'jl. sekeloa', '081221595643'),
('an3', 'fikri', 'fikri69@gmail.com', 'fikfik', 'L', 'jl. tubagus ismail', '081349658742'),
('an4', 'radit', 'raditr@gmail.com', 'raditdit', 'L', 'jl. sekeloa', '081391358742'),
('an5', 'danis', 'danis@gmail.com', 'danis321', 'L', 'jl. dago', '081349658131');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `kd_jadwal` varchar(3) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`kd_jadwal`, `jam_mulai`, `jam_selesai`) VALUES
('j01', '10:00:00', '12:00:00'),
('j02', '11:00:00', '13:00:00'),
('j03', '12:00:00', '14:00:00'),
('j04', '13:00:00', '15:00:00'),
('j05', '14:00:00', '16:00:00'),
('j06', '15:00:00', '17:00:00'),
('j07', '16:00:00', '18:00:00'),
('j08', '17:00:00', '19:00:00'),
('j09', '18:00:00', '20:00:00'),
('j10', '19:00:00', '21:00:00'),
('j11', '20:00:00', '22:00:00'),
('j12', '21:00:00', '23:00:00'),
('j13', '22:00:00', '24:00:00'),
('j14', '23:00:00', '01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kursi`
--

CREATE TABLE `tb_kursi` (
  `id_kursi` varchar(3) NOT NULL,
  `nama_kursi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kursi`
--

INSERT INTO `tb_kursi` (`id_kursi`, `nama_kursi`) VALUES
('a01', 'Kursi A01'),
('a02', 'Kursi A02'),
('a03', 'Kursi A03'),
('a04', 'Kursi A04'),
('a05', 'Kursi A05'),
('a06', 'Kursi A06'),
('a07', 'Kursi A07'),
('a08', 'Kursi A08'),
('a09', 'Kursi A09'),
('a10', 'Kursi A10'),
('b01', 'Kursi B01'),
('b02', 'Kursi B02'),
('b03', 'Kursi B03'),
('b04', 'Kursi B04'),
('b05', 'Kursi B05'),
('b06', 'Kursi B06'),
('b07', 'Kursi B07'),
('b08', 'Kursi B08'),
('b09', 'Kursi B09'),
('b10', 'Kursi B10'),
('c01', 'Kursi C01'),
('c02', 'Kursi C02'),
('c03', 'Kursi C03'),
('c04', 'Kursi C04'),
('c05', 'Kursi C05'),
('c06', 'Kursi C06'),
('c07', 'Kursi C07'),
('c08', 'Kursi C08'),
('c09', 'Kursi C09'),
('c10', 'Kursi C10'),
('d01', 'Kursi D01'),
('d02', 'Kursi D02'),
('d03', 'Kursi D03'),
('d04', 'Kursi D04'),
('d05', 'Kursi D05'),
('d06', 'Kursi D06'),
('d07', 'Kursi D07'),
('d08', 'Kursi D08'),
('d09', 'Kursi D09'),
('d10', 'Kursi D10'),
('e01', 'Kursi E01'),
('e02', 'Kursi E02'),
('e03', 'Kursi E03'),
('e04', 'Kursi E04'),
('e05', 'Kursi E05'),
('e06', 'Kursi E06'),
('e07', 'Kursi E07'),
('e08', 'Kursi E08'),
('e09', 'Kursi E09'),
('e10', 'Kursi E10'),
('f01', 'Kursi F01'),
('f02', 'Kursi F02'),
('f03', 'Kursi F03'),
('f04', 'Kursi F04'),
('f05', 'Kursi F05'),
('f06', 'Kursi F06'),
('f07', 'Kursi F07'),
('f08', 'Kursi F08'),
('f09', 'Kursi F09'),
('f10', 'Kursi F10'),
('g01', 'Kursi G01'),
('g02', 'Kursi G02'),
('g03', 'Kursi G03'),
('g04', 'Kursi G04'),
('g05', 'Kursi G05'),
('g06', 'Kursi G06'),
('g07', 'Kursi G07'),
('g08', 'Kursi G08'),
('g09', 'Kursi G09'),
('g10', 'Kursi G10'),
('h01', 'Kursi H01'),
('h02', 'Kursi H02'),
('h03', 'Kursi H03'),
('h04', 'Kursi H04'),
('h05', 'Kursi H05'),
('h06', 'Kursi H06'),
('h07', 'Kursi H07'),
('h08', 'Kursi H08'),
('h09', 'Kursi H09'),
('h10', 'Kursi H10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_movie`
--

CREATE TABLE `tb_movie` (
  `film_id` int(11) NOT NULL,
  `imdb_id` int(11) NOT NULL,
  `film_name` varchar(43) NOT NULL,
  `other_titlesEN` varchar(43) DEFAULT NULL,
  `release_dates0release_date` date NOT NULL,
  `release_dates0notes` varchar(3) NOT NULL,
  `age_rating0rating` varchar(6) NOT NULL,
  `age_rating0age_rating_image` varchar(57) NOT NULL,
  `age_rating0age_advisory` varchar(71) DEFAULT NULL,
  `film_trailer` varchar(47) DEFAULT NULL,
  `synopsis_long` varchar(1169) NOT NULL,
  `imagesposter1image_orientation` varchar(8) DEFAULT NULL,
  `imagesposter1region` varchar(2) DEFAULT NULL,
  `poster` varchar(46) DEFAULT NULL,
  `imagesposter1mediumwidth` int(11) DEFAULT NULL,
  `imagesposter1mediumheight` int(11) DEFAULT NULL,
  `imagesstill2image_orientation` varchar(9) DEFAULT NULL,
  `imagesstill2mediumfilm_image` varchar(46) DEFAULT NULL,
  `imagesstill2mediumwidth` int(11) DEFAULT NULL,
  `imagesstill2mediumheight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_movie`
--

INSERT INTO `tb_movie` (`film_id`, `imdb_id`, `film_name`, `other_titlesEN`, `release_dates0release_date`, `release_dates0notes`, `age_rating0rating`, `age_rating0age_rating_image`, `age_rating0age_advisory`, `film_trailer`, `synopsis_long`, `imagesposter1image_orientation`, `imagesposter1region`, `poster`, `imagesposter1mediumwidth`, `imagesposter1mediumheight`, `imagesstill2image_orientation`, `imagesstill2mediumfilm_image`, `imagesstill2mediumwidth`, `imagesstill2mediumheight`) VALUES
(10650, 57115, 'The Great Escape', NULL, '1963-05-31', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'Contains mild language and violence', NULL, 'The Great Escape is based on the true story of a group of Allied prisoners of war who managed to escape from an allegedly impenetrable Nazi prison camp during World War II. At the beginning of the film, the Nazis gather all their most devious and troublesome POWs and place them at a new prison camp, which was designed to be impervious to escapes. Immediately, the prisoners develop a scheme where they will leave the camp by building three separate escape tunnels. Richard Attenborough is the British soldier who masterminds the whole plan, and who commands his motley squad--featuring Charles Bronson as a Polish trench-digging expert, James Garner as an American with a talent for theft, Donald Pleasence as a masterful forger, and Steve McQueen as an American rebel--through the construction of the tunnels and, eventually, their escape. An epic adventure film, The Great Escape runs nearly three hours, featuring a rousing Elmer Bernstein score and exciting action sequences -- including a notorious motorcycle chase between McQueen and the Nazis -- the likes of which had never been seen before in Hollywood productions.~ Stephen Thomas Erlewine, All Movie Guide', 'portrait', 'US', 'https://image.movieglu.com/10650/010650h1.jpg', 200, 300, NULL, NULL, NULL, NULL),
(119237, 0, 'The Royal Ballet: Romeo & Juliet', 'The Royal Ballet: Romeo and Juliet', '2015-09-22', 'GBR', 'OTHER', 'https://assets.movieglu.com/age_rating_logos/uk/other.png', NULL, 'https://trailer.movieglu.com/119237_high.mp4', 'Kenneth MacMillan\'s famous version of Shakespeare\'s romantic tragedy set to Prokofiev\'s magnificent score returns to open the 2015/16 Royal Opera House Live Cinema Season. This Romeo and Juliet is rich in the swaggering colour of Verona street life and in sword fights and celebrations, but MacMillan\'s focus is always on the complex emotions of the young lovers - especially on Juliet as she journeys through the delirious happiness of first love to a shocked, adult perception of her fate. Juliet is one of the most coveted of all ballerina roles, and as MacMillan\'s ballet enters its 50th year it resonates as deeply with audiences today as when it was first seen half a century ago.', 'portrait', 'US', 'https://image.movieglu.com/119237/119237h1.jpg', 199, 300, 'landscape', 'https://image.movieglu.com/119237/119237h2.jpg', 300, 200),
(164750, 5848272, 'Ralph Breaks the Internet: Wreck-It Ralph 2', 'Ralph Breaks the Internet', '2018-11-30', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'mild threat, rude humour', 'https://trailer.movieglu.com/164750_uk_high.mp4', 'Video-game bad guy Ralph and best friend Vanellope von Schweetz  leave the comforts of Litwak\'s arcade in an attempt to save her game, Sugar Rush. Their quest takes them to the vast, uncharted world of the internet where they rely on the citizens of the internet \"the Netizens\" to help navigate their way. Lending a virtual hand are Yesss, the head algorithm and the heart and soul of the trend-making site \"BuzzzTube,\" and Shank, a tough-as-nails driver from a gritty online auto-racing game called Slaughter Race, a place Vanellope wholeheartedly embraces - so much so that Ralph worries he may lose the only friend he\'s ever had.', 'portrait', 'US', 'https://image.movieglu.com/164750/164750h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/164750/164750h2.jpg', 300, 200),
(180055, 2709692, 'The Grinch', 'Dr. Seuss\' The Grinch', '2018-11-09', 'GBR', 'U', 'https://assets.movieglu.com/age_rating_logos/uk/u.png', 'mild slapstick, very mild bad language', 'https://trailer.movieglu.com/180055_uk_high.mp4', 'The Grinch tells the story of a cynical grump who goes on a mission to steal Christmas, only to have his heart changed by a young girl\'s generous holiday spirit. Funny, heartwarming and visually stunning, it\'s a universal story about the spirit of Christmas and the indomitable power of optimism.', 'portrait', 'US', 'https://image.movieglu.com/180055/180055h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/180055/180055h2.jpg', 300, 200),
(197405, 1477834, 'Aquaman', 'Aquaman', '2018-12-12', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'moderate violence, scenes of sustained threat', 'https://trailer.movieglu.com/197405_uk_high.mp4', 'The film reveals the origin story of half-human, half-Atlantean Arthur Curry and takes him on the journey of his lifetime - one that will not only force him to face who he really is, but to discover if he is worthy of who he was born to be... a king.', 'portrait', 'US', 'https://image.movieglu.com/197405/197405h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/197405/197405h2.jpg', 300, 199),
(197406, 4123430, 'Fantastic Beasts: The Crimes of Grindelwald', 'Fantastic Beasts: The Crimes of Grindelwald', '2018-11-16', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'moderate fantasy threat', 'https://trailer.movieglu.com/197406_uk_high.mp4', 'At the end of the first film, the powerful Dark wizard Gellert Grindelwald (Depp) was captured by MACUSA (Magical Congress of the United States of America), with the help of Newt Scamander (Redmayne).  But, making good on his threat, Grindelwald escaped custody and has set about gathering followers, most unsuspecting of his true agenda: to raise pure-blood wizards up to rule over all non-magical beings.  \r\n\r\nIn an effort to thwart Grindelwald\'s plans, Albus Dumbledore (Law) enlists his former student Newt Scamander, who agrees to help, unaware of the dangers that lie ahead.  Lines are drawn as love and loyalty are tested, even among the truest friends and family, in an increasingly divided wizarding world.', 'portrait', 'US', 'https://image.movieglu.com/197406/197406h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/197406/197406h2.jpg', 300, 200),
(230604, 3385524, 'Stan and Ollie', NULL, '2019-01-11', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'mild bad language', 'https://trailer.movieglu.com/230604_uk_high.mp4', 'Laurel & Hardy, one of the world\'s great comedy teams, set out on a variety hall tour of Britain in 1953. Diminished by age and with their golden era as the kings of Hollywood comedy now behind them, they face an uncertain future. As the charm and beauty of their performances shines through, they re-connect with their adoring fans. The tour becomes a hit, but Stan & Ollie can\'t quite shake the specter of Laurel and Hardy\'s past; the long-buried ghosts, coupled with Oliver\'s failing health, start to threaten their precious partnership. A portrait of the most tender and poignant of creative marriages, they are aware that they may be approaching their swan song, trying to rediscover just how much they mean to each other.', 'portrait', 'US', 'https://image.movieglu.com/230604/230604h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/230604/230604h2.jpg', 300, 200),
(233820, 5028340, 'Mary Poppins Returns', 'Mary Poppins Returns', '2018-12-21', 'GBR', 'U', 'https://assets.movieglu.com/age_rating_logos/uk/u.png', 'very mild threat', 'https://www.youtube.com/embed/-3jsfXDZLIY', 'The film is set in 1930s depression-era London (the time period of the original novels) and is drawn from the wealth of material in PL Travers\' additional seven books. In the story, Michael (Whishaw) and Jane (Mortimer) are now grown up, with Michael, his three children and their housekeeper, Ellen (Walters), living on Cherry Tree Lane. After Michael suffers a personal loss, the enigmatic nanny Mary Poppins (Blunt) re-enters the lives of the Banks family, and, along with the optimistic street lamplighter Jack (Miranda), uses her unique magical skills to help the family rediscover the joy and wonder missing in their lives. Mary Poppins also introduces the children to a new assortment of colorful and whimsical characters, including her eccentric cousin, Topsy (Streep).', 'portrait', 'US', 'https://image.movieglu.com/233820/233820h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/233820/233820h2.jpg', 300, 200),
(240900, 6823368, 'Glass', 'Glass', '2019-01-18', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'infrequent strong violence, bloody images', 'https://trailer.movieglu.com/240900_uk_high.mp4', 'From Unbreakable, Bruce Willis returns as David Dunn as does Samuel L. Jackson as Elijah Price, known also by his pseudonym Mr. Glass. Joining from Split are James McAvoy, reprising his role as Kevin Wendell Crumb and the multiple identities who reside within, and Anya Taylor-Joy as Casey Cooke, the only captive to survive an encounter with The Beast. Following the conclusion of Split, Glass finds Dunn pursuing Crumb\'s superhuman figure of The Beast in a series of escalating encounters, while the shadowy presence of Price emerges as an orchestrator who holds secrets critical to both men.', 'portrait', 'US', 'https://image.movieglu.com/240900/240900h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/240900/240900h2.jpg', 300, 199),
(241805, 1517451, 'A Star Is Born', 'A Star is Born', '2018-10-03', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'strong language, drug misuse', 'https://trailer.movieglu.com/241805_uk_high.mp4', 'In this new take on the tragic love story, he plays seasoned musician Jackson Maine, who discovers - and falls in love with - struggling artist Ally (Gaga). She has just about given up on her dream to make it big as a singer, until Jack coaxes her into the spotlight.  But even as Ally\'s career takes off, the personal side of their relationship is breaking down, as Jack fights an ongoing battle with his own internal demons.', 'portrait', 'US', 'https://image.movieglu.com/241805/241805h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/241805/241805h2.jpg', 300, 200),
(246043, 1255919, 'Holmes and Watson', 'Holmes and Watson', '2018-12-26', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'moderate sex references, drug references, infrequent strong language', 'https://trailer.movieglu.com/246043_uk_high.mp4', 'The Step Brothers are reunited - this time playing the world\'s greatest consulting detective and his loyal biographer - as Will Ferrell and John C. Reilly star as Holmes & Watson.', 'portrait', 'US', 'https://image.movieglu.com/246043/246043h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/246043/246043h2.jpg', 300, 199),
(249928, 1727824, 'Bohemian Rhapsody', 'Bohemian Rhapsody', '2018-10-24', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'moderate sex references, drug references, infrequent strong language', 'https://trailer.movieglu.com/249928_uk_high.mp4', 'Bohemian Rhapsody is a foot-stomping celebration of Queen, their music and their extraordinary lead singer Freddie Mercury, who defied stereotypes and shattered convention to become one of the most beloved entertainers on the planet. The film traces the meteoric rise of the band through their iconic songs and revolutionary sound, their near-implosion as Mercury\'s lifestyle spirals out of control, and their triumphant reunion on the eve of Live Aid, where Mercury, facing a life-threatening illness, leads the band in one of the greatest performances in the history of rock music. In the process, cementing the legacy of a band that were always more like a family, and who continue to inspire outsiders, dreamers and music lovers to this day.', 'portrait', 'US', 'https://image.movieglu.com/249928/249928h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/249928/249928h2.jpg', 300, 199),
(252727, 1987680, 'The Upside', NULL, '2019-01-11', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'scenes of drug misuse, moderate sex references, language', 'https://trailer.movieglu.com/252727_uk_high.mp4', 'Inspired by a true story, The Upside is a heartfelt comedy about a recently paroled ex-convict (Kevin Hart) who strikes up an unusual and unlikely friendship with a paralyzed billionaire (Bryan Cranston).', 'portrait', 'US', 'https://image.movieglu.com/252727/252727h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/252727/252727h2.jpg', 300, 200),
(254314, 5523010, 'The Nutcracker and the Four Realms', 'The Nutcracker and the Four Realms', '2018-11-02', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'mild threat', 'https://trailer.movieglu.com/254314_uk_high.mp4', 'All Clara (Mackenzie Foy) wants is a key - a one-of-a-kind key that will unlock a box that holds a priceless gift from her late mother. A golden thread, presented to her at godfather Drosselmeyer\'s (Morgan Freeman) annual holiday party, leads her to the coveted key, which promptly disappears into a strange and mysterious parallel world. It\'s there that Clara encounters a soldier named Phillip (Jayden Fowora-Knight), a gang of mice and the regents who preside over three Realms: Land of Snowflakes, Land of Flowers and Land of Sweets. Clara and Phillip must brave the ominous Fourth Realm, home to the tyrant Mother Ginger (Helen Mirren), to retrieve Clara\'s key and hopefully return harmony to the unstable world.', 'portrait', 'US', 'https://image.movieglu.com/254314/254314h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/254314/254314h2.jpg', 300, 199),
(254984, 4701182, 'Bumblebee', 'Bumblebee', '2018-12-26', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'moderate fantasy violence, mild sex references, injury detail, language', 'https://trailer.movieglu.com/254984_uk_high.mp4', 'On the run in the year 1987, Bumblebee finds refuge in a junkyard in a small Californian beach town. Charlie (Hailee Steinfeld), on the cusp of turning 18 and trying to find her place in the world, discovers Bumblebee, battle-scarred and broken.  When Charlie revives him, she quickly learns this is no ordinary, yellow VW bug.', 'portrait', 'US', 'https://image.movieglu.com/254984/254984h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/254984/254984h2.jpg', 300, 200),
(256012, 2328900, 'Mary, Queen of Scots', 'Mary Queen of Scots', '2019-01-18', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'strong violence, sex, sexual violence', 'https://trailer.movieglu.com/256012_uk_high.mp4', 'Mary Queen of Scots explores the turbulent life of the charismatic Mary Stuart. Queen of France at 16 and widowed at 18, Mary defies pressure to remarry. Instead, she returns to her native Scotland to reclaim her rightful throne. But Scotland and England fall under the rule of the compelling Elizabeth 1.  Each young Queen beholds her \"sister\" in fear and fascination. Rivals in power and in love, and female regents in a masculine world, the two must decide how to play the game of marriage versus independence. Determined to rule as much more than a figurehead, Mary asserts her claim to the English throne, threatening Elizabeth\'s sovereignty. Betrayal, rebellion, and conspiracies within each court imperil both thrones - and change the course of history.', 'portrait', 'US', 'https://image.movieglu.com/256012/256012h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/256012/256012h2.jpg', 300, 199),
(261090, 6343314, 'Creed 2', 'Creed II', '2018-11-30', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'moderate violence, language', 'https://trailer.movieglu.com/261090_uk_high.mp4', 'Life has become a balancing act for Adonis Creed. Between personal obligations and training for his next big fight, he is up against the challenge of his life. Facing an opponent with ties to his family\'s past only intensifies his impending battle in the ring. Rocky Balboa is there by his side through it all and, together, Rocky and Adonis will confront their shared legacy, question what\'s worth fighting for, and discover that nothing\'s more important than family. Creed II is about going back to basics to rediscover what made you a champion in the first place, and remembering that, no matter where you go, you can\'t escape your history.', 'portrait', 'US', 'https://image.movieglu.com/261090/261090h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/261090/261090h2.jpg', 300, 200),
(261374, 0, 'Hey Duggee Program', NULL, '2019-01-18', 'GBR', 'U', 'https://assets.movieglu.com/age_rating_logos/uk/u.png', 'no material likely to offend or harm', NULL, 'Join Duggee and the Squirrels for the first time on the big screen for one big hour of woofs, sing-a-longs and fun! Featuring brand new episodes and exclusive interactive content for your little Squirrel to dance, sing and groove along with Duggee and the Squirrels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263659, 4633694, 'Spider-Man: Into the Spider-Verse', 'Spider-Man: Into the Spider-Verse', '2018-12-12', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'moderate fantasy violence, mild threat, injury detail, innuendo', 'https://www.youtube.com/embed/tg52up16eq0', 'Spider-Man: Into the Spider-Verse introduces Brooklyn teen Miles Morales, and the limitless possibilities of the Spider-Verse, where more than one can wear the mask.', 'portrait', 'US', 'https://image.movieglu.com/263659/263659h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/263659/263659h2.jpg', 300, 200),
(263829, 5437928, 'Colette', 'Colette', '2019-01-09', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'sexual scenes, nudity', 'https://trailer.movieglu.com/263829_uk_high.mp4', 'After marrying a successful Parisian writer known commonly as \'Willy\' (Dominic West), Sidonie-Gabrielle Colette (Keira Knightley) is transplanted from her childhood home in rural France to the intellectual and artistic splendor of Paris. Soon after, Willy convinces Colette to ghostwrite for him. She pens a semi-autobiographical novel about a witty and brazen country girl named Claudine, sparking a bestseller and a cultural sensation. After its success, Colette and Willy become the talk of Paris and their sexual adventures with other women inspire additional Claudine novels. Colette\'s fight over creative ownership and gender roles drives her to overcome societal constraints, revolutionizing literature, fashion and sexual expression.', 'portrait', 'US', 'https://image.movieglu.com/263829/263829h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/263829/263829h2.jpg', 300, 200),
(264825, 5083738, 'The Favourite', 'The Favourite', '2018-12-26', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'very strong language, strong sex', 'https://trailer.movieglu.com/264825_uk_high.mp4', 'Early 18th century.  England is at war with the French.  Nevertheless, duck racing and pineapple eating are thriving.  A frail Queen Anne occupies the throne and her close friend Lady Sarah governs the country in her stead while tending to Anne\'s ill health and mercurial temper. When a new servant Abigail arrives, her charm endears her to Sarah.  Sarah takes Abigail under her wing and Abigail sees a chance at a return to her aristocratic roots.  As the politics of war become quite time consuming for Sarah, Abigail steps into the breach to fill in as the Queen\'s companion.  Their burgeoning friendship gives her a chance to fulfil her ambitions and she will not let woman, man, politics or rabbit stand in her way.', 'portrait', 'US', 'https://image.movieglu.com/264825/264825h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/264825/264825h2.jpg', 300, 199),
(267184, 1226837, 'Beautiful Boy', 'Beautiful Boy', '2019-01-18', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'drug misuse, frequent drug references, strong language, sex', 'https://trailer.movieglu.com/267184_uk_high.mp4', 'Based on the best-selling pair of memoirs from father and son David and Nic Sheff, Beautiful Boy chronicles the heartbreaking and inspiring experience of survival, relapse, and recovery in a family coping with addiction over many years.', 'portrait', 'US', 'https://image.movieglu.com/267184/267184h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/267184/267184h2.jpg', 300, 200),
(277854, 7775622, 'Free Solo', NULL, '2018-12-14', 'GBR', '12A', 'https://assets.movieglu.com/age_rating_logos/uk/12a.png', 'infrequent strong language', 'https://trailer.movieglu.com/277854_uk_high.mp4', 'FREE SOLO is an edge-of-your seat thriller and an inspiring portrait of an athlete who challenges both his body and his beliefs on a quest to triumph over the impossible, revealing the personal toll of excellence. As the climber begins his training, the armor of invincibility he\'s built up over decades unexpectedly breaks apart when Honnold begins to fall in love, threatening his focus and giving way to injury and setbacks. Vasarhelyi and Chin succeed in beautifully capturing deeply human moments with Honnold as well as the death-defying climb with exquisite artistry and masterful, vertigo-inducing camerawork.', 'portrait', 'US', 'https://image.movieglu.com/277854/277854h1.jpg', 200, 300, 'landscape', 'https://image.movieglu.com/277854/277854h2.jpg', 300, 199),
(279424, 7961060, 'Dragon Ball Super: Broly', NULL, '2019-01-23', 'GBR', 'PG', 'https://assets.movieglu.com/age_rating_logos/uk/pg.png', 'moderate fantasy violence, mild bad language', 'https://trailer.movieglu.com/279424_uk_high.mp4', 'A planet destroyed, a powerful race reduced to nothing. After the devastation of Planet Vegeta, three Saiyans were scattered among the stars, destined for different fates. While two found a home on Earth, the third was raised with a burning desire for vengeance and developed an unbelievable power. And the time for revenge has come. Destinies collide in a battle that will shake the universe to its very core!\r\n\r\nGoku is back to training hard so he can face the most powerful foes the universes have to offer, and Vegeta is keeping up right beside him. But when they suddenly find themselves against an unknown Saiyan, they discover a terrible, destructive force.', 'portrait', 'US', 'https://image.movieglu.com/279424/279424h1.jpg', 200, 300, NULL, NULL, NULL, NULL),
(285067, 9493708, 'Underdog', NULL, '2019-01-18', 'GBR', '15', 'https://assets.movieglu.com/age_rating_logos/uk/15.png', 'very strong language, strong sex, violence, injury detail, drug misuse', NULL, 'Boris \"Kos\" Kosinski (Eryk Lubos) is a top MMA fighter. In the biggest battle of his life with his greatest rival, Denim Takaev (Mamed Khalidov), he makes a mistake that destroys his entire career. He loses everything. This failure brings him through a series of ups and downs, but it also pushes him to undertake a titanic effort to fight and win back respect and love.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `kd_pemesanan` varchar(10) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `id_anggota` varchar(5) NOT NULL,
  `kd_tiket` varchar(5) NOT NULL,
  `jumlah_tiket` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`kd_pemesanan`, `tgl_pemesanan`, `id_anggota`, `kd_tiket`, `jumlah_tiket`, `total_harga`) VALUES
('pe1', '2015-09-29', 'an1', 'ti1', 4, 120000),
('pe2', '2018-12-07', 'an2', 'ti2', 2, 60000),
('pe3', '2018-11-19', 'an3', 'ti3', 1, 30000),
('pe4', '2015-09-29', 'an4', 'ti4', 2, 60000),
('pe5', '2018-12-12', 'an5', 'ti5', 5, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_studio`
--

CREATE TABLE `tb_studio` (
  `kd_studio` varchar(3) NOT NULL,
  `nama_studio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_studio`
--

INSERT INTO `tb_studio` (`kd_studio`, `nama_studio`) VALUES
('s01', 'Studio 01'),
('s02', 'Studio 02'),
('s03', 'Studio 03'),
('s04', 'Studio 04'),
('s05', 'Studio 05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tayang`
--

CREATE TABLE `tb_tayang` (
  `tgl_tayang` date NOT NULL,
  `film_id` int(11) NOT NULL,
  `kd_jadwal` varchar(3) NOT NULL,
  `id_kursi` varchar(3) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tayang`
--

INSERT INTO `tb_tayang` (`tgl_tayang`, `film_id`, `kd_jadwal`, `id_kursi`, `status`) VALUES
('2019-01-26', 197405, 'j04', 'a01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'a10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'b10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'c10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'd10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'e10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'f10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'g10', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h01', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h02', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h03', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h04', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h05', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h06', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h07', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h08', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h09', 'Tersedia'),
('2019-01-26', 197405, 'j04', 'h10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'a10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'b10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'c10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'd10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'e10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'f10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'g10', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h01', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h02', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h03', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h04', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h05', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h06', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h07', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h08', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h09', 'Tersedia'),
('2019-01-26', 233820, 'j07', 'h10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'a10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'b10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'c10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'd10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'e10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'f10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'g10', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h01', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h02', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h03', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h04', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h05', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h06', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h07', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h08', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h09', 'Tersedia'),
('2019-01-26', 240900, 'j01', 'h10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'a10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'b10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'c10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'd10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'e10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'f10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'g10', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h01', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h02', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h03', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h04', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h05', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h06', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h07', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h08', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h09', 'Tersedia'),
('2019-01-26', 263659, 'j10', 'h10', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tiket`
--

CREATE TABLE `tb_tiket` (
  `kd_tiket` varchar(5) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_kursi` varchar(3) NOT NULL,
  `kd_studio` varchar(3) NOT NULL,
  `kd_jadwal` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tiket`
--

INSERT INTO `tb_tiket` (`kd_tiket`, `stok`, `harga`, `id_kursi`, `kd_studio`, `kd_jadwal`) VALUES
('ti1', 48, 30000, 'a01', 's01', 'j01'),
('ti2', 50, 30000, 'a02', 's02', 'j02'),
('ti3', 81, 30000, 'a03', 's03', 'j03'),
('ti4', 26, 30000, 'a04', 's04', 'j04'),
('ti5', 37, 30000, 'a05', 's05', 'j05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  `remember_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `updated_at`, `created_at`, `remember_token`) VALUES
(1054, 'alesna97@gmail.com', '$2y$10$lZU23zVQyznF03/aYkfIMuOLxq/MpPH85563wdTMk9cyTWc13wQhq', 'Anjas', '2019-01-25', '2019-01-25', '2XOkrcvcj5b6BjEFL1Sj1jhIzv7TSlbbEcaSvQqhSwK9UaXddONPsa8YYi7Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`);

--
-- Indexes for table `tb_kursi`
--
ALTER TABLE `tb_kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indexes for table `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`kd_pemesanan`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `kd_tiket` (`kd_tiket`);

--
-- Indexes for table `tb_studio`
--
ALTER TABLE `tb_studio`
  ADD PRIMARY KEY (`kd_studio`);

--
-- Indexes for table `tb_tayang`
--
ALTER TABLE `tb_tayang`
  ADD PRIMARY KEY (`tgl_tayang`,`film_id`,`kd_jadwal`,`id_kursi`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `id_kursi` (`id_kursi`);

--
-- Indexes for table `tb_tiket`
--
ALTER TABLE `tb_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `id_kursi` (`id_kursi`),
  ADD KEY `kd_studio` (`kd_studio`),
  ADD KEY `id_jadwal` (`kd_jadwal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`),
  ADD CONSTRAINT `tb_pemesanan_ibfk_2` FOREIGN KEY (`kd_tiket`) REFERENCES `tb_tiket` (`kd_tiket`);

--
-- Constraints for table `tb_tayang`
--
ALTER TABLE `tb_tayang`
  ADD CONSTRAINT `tb_tayang_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `tb_movie` (`film_id`),
  ADD CONSTRAINT `tb_tayang_ibfk_2` FOREIGN KEY (`kd_jadwal`) REFERENCES `tb_jadwal` (`kd_jadwal`),
  ADD CONSTRAINT `tb_tayang_ibfk_3` FOREIGN KEY (`id_kursi`) REFERENCES `tb_kursi` (`id_kursi`);

--
-- Constraints for table `tb_tiket`
--
ALTER TABLE `tb_tiket`
  ADD CONSTRAINT `tb_tiket_ibfk_1` FOREIGN KEY (`id_kursi`) REFERENCES `tb_kursi` (`id_kursi`),
  ADD CONSTRAINT `tb_tiket_ibfk_2` FOREIGN KEY (`id_kursi`) REFERENCES `tb_kursi` (`id_kursi`),
  ADD CONSTRAINT `tb_tiket_ibfk_3` FOREIGN KEY (`kd_studio`) REFERENCES `tb_studio` (`kd_studio`),
  ADD CONSTRAINT `tb_tiket_ibfk_4` FOREIGN KEY (`kd_jadwal`) REFERENCES `tb_jadwal` (`kd_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
