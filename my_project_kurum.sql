-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Oca 2020, 14:14:40
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `my_project_kurum`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Haberler', 'Haber', 'News', NULL, 'true', NULL, NULL),
(2, 1, 'Etkinlikler', 'Etkinlik', 'Events', NULL, 'true', NULL, NULL),
(3, 2, 'Duyurular', 'Duyuru', 'Announcement', NULL, 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `universityid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`id`, `subject`, `comment`, `status`, `ip`, `userid`, `created_at`, `updated_at`, `rate`, `universityid`) VALUES
(8, 'It\' amazing thing', 'It\' amazing new', 'True', '127.0.0.1', 1, NULL, NULL, 3, 8),
(9, 'Teknopark', 'Teknopark farkı..', 'True', '127.0.0.1', 1, NULL, NULL, 4, 3),
(10, 'Race', 'The race is excited', 'New', '127.0.0.1', 1, NULL, NULL, 3, 21),
(11, 'zero', 'Sıfır atık', 'New', '127.0.0.1', 1, NULL, NULL, 4, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `veri_id` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `veri_id`, `title`, `image`) VALUES
(2, 4, NULL, '6971cd06255fa3cb2a5efcd747513ec2.jpeg'),
(3, 4, NULL, 'fe614a7998d74916c5d2d157852e7f00.jpeg'),
(5, 5, NULL, '527d7d6be1448cb9681aa6ffc08db57c.jpeg'),
(6, 5, NULL, 'e07e051ecb77bba6168ba5dc707cdb02.jpeg'),
(7, 5, NULL, '67012705be113156548c6411d8d176d4.jpeg'),
(10, 8, NULL, '1d75e3464f85304630ada672507cfcdc.jpeg'),
(11, 8, NULL, '5f07f8e9aadb741ac12a6a4d93364785.jpeg'),
(12, 8, NULL, '6777743763af4a34096beb57a8fa06bf.jpeg'),
(13, 8, NULL, '297f4ef9fc8be23aa4e5dda6d310a4d4.jpeg'),
(14, 8, NULL, 'f12ca5cec39080f5f444b835e41637c3.jpeg'),
(15, 17, NULL, 'f3ddcf9b029fad38bf23d32aec992628.jpeg'),
(16, 17, NULL, '4f84983514e75ec9767bab866b13c20c.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `message`, `status`, `ip`, `note`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Ali CAN', 'test subject', 'hello', 'New', '127.0.0.1', NULL, NULL, NULL, 'sumeyraisik34@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200110151437', '2020-01-10 15:14:54'),
('20200110200449', '2020-01-10 20:05:27'),
('20200110213949', '2020-01-10 21:40:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `aboutus`, `contact`, `reference`, `status`) VALUES
(1, 'OMU', 'OMU UNIVERSITY', 'OMU UNIVERSITY', 'OMU', 'Ondokuz Mayıs Üniversitesi Rektörlüğü Yazışma Adresi :  Ondokuz Mayıs Üniversitesi Rektörlük Binası Kurupelit Kampüsü, 55139 Atakum / SAMSUN', '(362) 312 19 19', '(362) 457 60 91', 'iletisim@omu.edu.tr', NULL, 'karabuktest@gmail.com', 'Marabalar2019*', '578', 'https://www.facebook.com/ondokuzmayis1975?ref=hl', 'https://www.instagram.com/ondokuz_mayis_universitesi/', 'https://twitter.com/omurektorluk', '<p><span style=\"font-size:14px\">Samsun Ondokuz Mayıs &Uuml;niversitesi (OM&Uuml;), Karadeniz B&ouml;lgesi&rsquo;nin ekonomik, k&uuml;lt&uuml;rel ve sosyal yaşamına yeni bir soluk getirmek ve katkı yapmak amacıyla 1975 yılında kurulan k&ouml;kl&uuml; bir&nbsp;<strong>devlet &uuml;niversitesidir</strong>.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">B&ouml;lge &uuml;niversitesi olarak kurulan ve misyonuna uygun olarak 44 yılı geride bırakan &uuml;niversite, bireylerin ve toplumun yararına yenilikler kazandırmak i&ccedil;in evrensel değerleri benimseyen, entelekt&uuml;el titizlikle &ccedil;alışan &uuml;lkemizin en g&uuml;&ccedil;l&uuml; araştırma ve &ouml;ğretim kurumlarından biridir.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Adını&nbsp;<strong>Mustafa Kemal Atat&uuml;rk</strong>&rsquo;&uuml;n Bandırma vapuru ile Samsun&rsquo;a ayak bastığı &ldquo;19 Mayıs 1919&rdquo; tarihinden alan Ondokuz Mayıs &Uuml;niversitesinde,&nbsp;<strong>19&nbsp;fak&uuml;lte, 1 y&uuml;ksekokul, 12 meslek y&uuml;ksekokulu, 6 enstit&uuml;, 1 konservatuvar ve 24 uygulama araştırma merkezi</strong>&nbsp;bulunmaktadır</span>.</p>\r\n\r\n<h1><strong>Uluslararası &Uuml;niversite</strong></h1>\r\n\r\n<p><span style=\"font-size:14px\"><strong>118</strong>&nbsp;&uuml;lkeden gelen&nbsp;<strong>5205</strong>&nbsp;uluslararası &ouml;ğrencisiyle de OM&Uuml;, uluslararası bir &uuml;niversite olma yolunda emin adımlarla ilerlemektedir.</span></p>\r\n\r\n<h1><strong>Akademisyen Sayısıyla İlk Sıralarda</strong></h1>\r\n\r\n<p><span style=\"font-size:14px\">OM&Uuml;, akademik ve idari birimleri, dalında uzman, deneyimli &ouml;ğretim kadrosuyla &ouml;ğrencilerine &ouml;nlisans, lisans ve lisans&uuml;st&uuml; seviyelerinde eğitim-&ouml;ğretim vermektedir. &Uuml;niversitenin&nbsp;<strong>52566</strong>&nbsp;&ouml;ğrencisi,&nbsp;<strong>2470</strong>&nbsp;akademik personeli ve&nbsp;<strong>3893</strong>&nbsp;&ccedil;alışanı bulunmaktadır. 2018 itibariyle 43 yılda yaklaşık&nbsp;<strong>170 bin mezun</strong>&nbsp;vermiştir.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">OM&Uuml;, &ouml;d&uuml;ll&uuml; g&uuml;zide akademisyenlerini ve &ouml;ğrencilerini tutkuları peşinde koşmaları, sorgulayan, soruşturan, sorumluluk alan, girişimci, yaratıcı, keşfeden&nbsp; araştırmacılar olmaları ve en zorlu sorunları &ccedil;&ouml;zmeleri i&ccedil;in disiplinlerarası bir yaklaşımla teşvik etmektedir.</span></p>\r\n\r\n<h1><strong><strong>En &Ouml;zel Yerleşke</strong></strong></h1>\r\n\r\n<p><span style=\"font-size:14px\">Yeşil doğası, g&ouml;letleri ile eşsiz bir doğa manzarası sunan Merkez Kurupelit Yerleşkesine (8 bin 800 d&ouml;n&uuml;m),&nbsp; Karadeniz kıyısından ilerleyerek &ccedil;ıkıyor, tepeden mavi sonsuzluğu izliyorsunuz. &nbsp;Ballıca yerleşkesinde ise denize doğru uzanan pistinden mavi ufka doğru kanat a&ccedil;an OM&Uuml; u&ccedil;aklarını seyre dalıyorsunuz.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&Uuml;niversitenin ayrıca şehir girişinde, deniz kenarında konuşlanmış G&uuml;zel Sanatlar Kamp&uuml;s&uuml;, &Ccedil;arşamba il&ccedil;esinde Mustafa Kemal G&uuml;neşdoğdu Yerleşkesi bulunmaktadır. Bunlardan başka &Uuml;niversitenin diğer il&ccedil;elerde irili ufaklı&nbsp;<strong>10 adet kamp&uuml;s&uuml;</strong>&nbsp;daha vardı</span>r.&nbsp;</p>\r\n\r\n<h1><strong><strong>Engelsiz &uuml;niversite</strong></strong></h1>\r\n\r\n<p><span style=\"font-size:14px\">OM&Uuml; engelsiz &uuml;niversite olma yolunda yoğun bir &ccedil;alışma i&ccedil;indedir. Eğitim, &ouml;ğretim ve yaşam alanlarının engelli &ouml;ğrencilerin &ouml;zelliklerine uygun hale getirilmesi &uuml;niversitenin &ouml;ncelikli hizmet alanlarından biridir.</span></p>\r\n\r\n<h1><strong><strong>&Ouml;ğrenci toplulukları</strong></strong></h1>\r\n\r\n<p><span style=\"font-size:14px\">&Ouml;ğrenci topluluklarını destekleyen &uuml;niversitemizde, k&uuml;lt&uuml;r, sanat, spor, d&uuml;ş&uuml;nce ve kariyer alanlarında faaliyetlerde bulunan&nbsp;<strong>90 &ouml;ğrenci topluluğu</strong>&nbsp;bulunmaktadır.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Web sitemiz &uuml;zerinden &uuml;niversitemizi ziyaret ettiğiniz i&ccedil;in teşekk&uuml;r ederiz.&nbsp;Sizleri OM&Uuml; d&uuml;nyasını keşfetmeye davet ediyoruz.</span></p>', '<p><strong>Ondokuz Mayıs &Uuml;niversitesi Rekt&ouml;rl&uuml;ğ&uuml; Yazışma Adresi :</strong></p>\r\n\r\n<p>Ondokuz Mayıs &Uuml;niversitesi Rekt&ouml;rl&uuml;k Binası Kurupelit Kamp&uuml;s&uuml;, 55139 Atakum / SAMSUN<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>E-Posta :</strong>&nbsp;iletisim@omu.edu.tr</p>\r\n\r\n<p><strong>KEP</strong>&nbsp;: omu@hs01.kep.tr</p>\r\n\r\n<p><strong>Telefon :&nbsp;</strong>(362) 312 19 19 Santral</p>\r\n\r\n<p><strong>Faks :</strong>&nbsp;(362) 457 60 91</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/hakkimizda/acil-durum-telefonlari\">ACİL Durum :&nbsp;&nbsp;2020</a></p>\r\n\r\n<p><a href=\"http://oidb.omu.edu.tr/\" target=\"_blank\">&Ouml;ĞRENCİ Danışma Hattı :&nbsp;&nbsp;312 19 40</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe height=\"620\" src=\"https://www.google.com/maps/d/embed?mid=zWepAqfoI1ps.kDm-0nrZ09-g\" width=\"100%\"></iframe></p>', NULL, 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `university`
--

INSERT INTO `university` (`id`, `category_id`, `title`, `keywords`, `description`, `image`, `address`, `phone`, `fax`, `email`, `city`, `status`, `created_at`, `updated_at`, `detail`, `userid`) VALUES
(3, 1, 'Samsun Teknopark’tan BİGG’de Büyük Başarı', NULL, NULL, '6b5c3d8867ca3f93f0d055596c9a5500.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>Samsun Teknopark uygulayıcı kuruluş olduğu T&Uuml;BİTAK 1512 Bireysel Gen&ccedil; Girişim (BİGG) Programı ile gen&ccedil; ve yenilik&ccedil;i girişimci adaylarının hayallerini ger&ccedil;ekleştirmeye devam ediyor. BİGG Samsun adıyla y&uuml;r&uuml;t&uuml;lmekte olan programda, T&Uuml;BİTAK tarafından desteklenmeye hak kazanan projelerde y&uuml;zde 60 başarı sağlandı.</p>\r\n\r\n<p>Girişimciler, başvuru s&uuml;reci ve devamında Samsun Teknopark&rsquo;ın BİGG programı kapsamında sağladığı eğitim ve mentorluk hizmetlerinden faydalandılar. Tamamı hibe olmak &uuml;zere 200 bin TL almaya hak kazanan girişimciler aynı zamanda Samsun Teknopark&rsquo;tan bir yıl boyunca &uuml;cretsiz olarak kullanabilecekleri kulu&ccedil;ka ofisi kazandılar.</p>\r\n\r\n<p>Samsun Teknopark, BİGG uygulayıcı kuruluşu olarak yeni d&ouml;nem i&ccedil;in 15 Ocak tarihine kadar başvuru almaya devam edecek, aynı zamanda iş fikirlerine eğitim ve mentorluk hizmetleri sağlayarak girişimcilere destek olmayı s&uuml;rd&uuml;recek.</p>', NULL),
(4, 1, 'OMÜ’de Sıfır Atık Bilinci Yaygınlaşıyor', NULL, NULL, 'b3cfbf375ffca040f45e788b44bef078.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<h2 style=\"font-style:italic\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>OM&Uuml;&rsquo;de Sıfır Atık Bilinci Yaygınlaşıyor</strong></span></span></h2>\r\n\r\n<p>Ondokuz Mayıs &Uuml;niversitesi (OM&Uuml;) G&uuml;zel Sanatlar Kamp&uuml;s&uuml; Sahnesi&rsquo;nde Sıfır Atık Projesi tanıtıldı. Projenin tanıtımını, Rekt&ouml;r Danışmanı ve Sıfır Atık Proje Sorumlusu Prof. Dr. Y&uuml;ksel Ardalı yaptı.</p>\r\n\r\n<p>Programa; Samsun Meslek Y&uuml;ksekokulu (MYO) M&uuml;d&uuml;r&uuml; ve Kamp&uuml;s Koordinat&ouml;r&uuml; Prof. Dr. G&uuml;ray Erener, G&uuml;zel Sanatlar Fak&uuml;ltesi Dekanı Prof. Dr. Ali Tomak, Devlet Konservatuvarı M&uuml;d&uuml;r&uuml; Prof. Dr. Ferit Bulut ile G&uuml;zel Sanatlar Kamp&uuml;s&uuml;&rsquo;nde bulunan birimlerin &ccedil;alışanları ile &ouml;ğrenciler katıldı.</p>\r\n\r\n<h2>&ldquo;Proje i&ccedil;in altyapı hazır&rdquo;</h2>\r\n\r\n<p>Program a&ccedil;ılış konuşmasında s&ouml;z alan Kamp&uuml;s Koordinat&ouml;r&uuml; ve Samsun MYO M&uuml;d&uuml;r&uuml; Prof. Dr. Erener, projenin &ouml;neminin ve ciddiyetinin farkında olduklarını belirterek &ldquo;OM&Uuml; genelinde uygulanan Sıfır Atık Projesi; israfın &ouml;nlenmesini, kaynakların daha verimli kullanılmasını, oluşan atığın miktarının azaltılmasını ve buna ilişkin etkin toplama sisteminin kurulmasını, atıkların geri d&ouml;n&uuml;şt&uuml;r&uuml;lmesini kapsayan ve atık &ouml;nleme yaklaşımı olarak tanımlanan bir hedefler dizisi. &Uuml;niversitemiz de bu konuda olabildiğince hassasiyet g&ouml;steriyor. Sıfır Atık Projesi&rsquo;nin gelecek nesillere aktarılarak s&uuml;rd&uuml;r&uuml;lebilir h&acirc;le getirilmesinde hepimizin &uuml;zerine d&uuml;şen sorumluluklar var. Y&uuml;ksekokulumuzda da proje i&ccedil;in gerekli altyapı hazır ve bu y&ouml;nde &ccedil;alışmalarımız devam ediyor.&rdquo; s&ouml;zlerine yer verdi.</p>\r\n\r\n<h2>&ldquo;&Uuml;lkemizin doğal kaynaklarını heba etmeden bilin&ccedil;li ve verimli kullanmak hepimizin g&ouml;revi ve &ouml;devi&rdquo;</h2>\r\n\r\n<p>Ardından Sıfır Atık Projesi hakkında detaylı bilgiler aktaran Proje Sorumlusu Prof. Dr. Y&uuml;ksel Ardalı ise s&uuml;rd&uuml;r&uuml;lebilir kalkınma ilkeleri doğrultusunda atıkların kontrol edilerek geri d&ouml;n&uuml;ş&uuml;mle ekonomiye kazandırılmasının daha temiz bir &ccedil;evre ve daha gelişmiş bir T&uuml;rkiye i&ccedil;in gerekli olduğunu vurguladı.</p>\r\n\r\n<p>Projeye dair yaptıkları &ccedil;alışmalardan bahseden Prof. Dr. Ardalı, bilin&ccedil;li t&uuml;ketime y&ouml;nelik davranışları ve alışkanlıkları &Uuml;niversite genelinde yaygınlaştırmayı ama&ccedil;ladıklarına dikkat &ccedil;ekerek &ldquo;&Uuml;lkemizin doğal kaynaklarını heba etmeden bilin&ccedil;li ve verimli kullanmak birey olarak hepimizin g&ouml;revi ve aynı zamanda &ouml;devi. Dolayısıyla proje &ccedil;er&ccedil;evesinde d&uuml;zenleyeceğimiz etkinliklerle bu bilinci aşılamaya &ouml;zen g&ouml;steriyoruz.&rdquo; dedi.&nbsp;</p>\r\n\r\n<p>Prof. Dr. Ardalı, toplantıya g&ouml;sterilen ilginin projenin y&uuml;r&uuml;t&uuml;lmesi esnasında da g&ouml;sterilmesi i&ccedil;in &ccedil;ağrıda bulunarak katılımcılara teşekk&uuml;r etti.</p>\r\n\r\n<p>Etkinlik, hatıra fotoğrafı &ccedil;ekimiyle son buldu.</p>', NULL),
(5, 1, '100. Yılda Gazetecilerden OMÜ\'ye Üç Ödül', NULL, NULL, '53c1152578aedbd3ab3ec6cac0c49342.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><em><strong>100. Yılda Gazetecilerden OM&Uuml;&#39;ye &Uuml;&ccedil; &Ouml;d&uuml;l</strong></em></span></span></p>\r\n\r\n<p>Samsun Gazeteciler Cemiyeti tarafından 10 Ocak &Ccedil;alışan Gazeteciler G&uuml;n&uuml;&rsquo;nde &ldquo;Milli M&uuml;cadele&rsquo;nin 100. Yılı Etkinlikleri &Ouml;d&uuml;l T&ouml;reni&rdquo; d&uuml;zenlendi.</p>\r\n\r\n<p>Milli M&uuml;cadele&rsquo;nin 100. yılında Samsun&rsquo;da yılın gazetecilerine, b&uuml;rokratlarına, siyaset&ccedil;ilerine, iş adamlarına, sanat&ccedil;ılarına ve uluslararası derece alan sporcularına &ouml;d&uuml;ller verildi.</p>\r\n\r\n<p>&Ouml;d&uuml;l t&ouml;reninde Ondokuz Mayıs &Uuml;niversitesine (OM&Uuml;) &uuml;&ccedil; &ouml;d&uuml;l birden geldi. Yılın Bilim Kadını&rdquo; &ouml;d&uuml;l&uuml;ne Prof. Dr Nalan Kızıltan, &ldquo;Yılın G&uuml;zel Sanatlar &Ouml;d&uuml;l&uuml;&rdquo;ne Prof. Dr. Metin Eker, &ldquo;Yılın Akademi &Ouml;d&uuml;l&uuml;&rdquo;ne Do&ccedil;. Dr. Ayşenur B&uuml;y&uuml;kg&ouml;ze Kavas değer g&ouml;r&uuml;ld&uuml;.</p>\r\n\r\n<p>Samsun protokol&uuml;n&uuml;n yoğun katılım g&ouml;sterdiği gecede Samsun Valisi Osman Kaymak, Samsun B&uuml;y&uuml;kşehir Belediye Başkanı Mustafa Demir, Rekt&ouml;r Prof. Dr. Sait Bilgi&ccedil;&rsquo;in yanı sıra Genel Sekreter Do&ccedil;. Dr. Menderes Kabadayı&#39;da davetliler arasında yer aldı.</p>\r\n\r\n<p>Sunuculuğunu gazeteci ve televizyon programcısı Mesut Yar&rsquo;ın yaptığı gece, Samsun Gazeteciler Cemiyeti Başkanı Mehmet Yazıcı&rsquo;nın a&ccedil;ılış konuşmasıyla başladı. Gecede Vocavoice Grubu ve Hande D&ouml;nmez de sahneye &ccedil;ıktı.</p>\r\n\r\n<h2>&ldquo;&Ouml;zellikle internet gazeteciliği yazılı gazeteciliğin aleyhine bir durum ortaya &ccedil;ıkardı&rdquo;</h2>\r\n\r\n<p>&Ouml;d&uuml;l gecesinde konuşan Samsun Valisi Osman Kaymak, &ldquo;B&uuml;t&uuml;n gazeteci arkadaşlarımızın Gazeteciler G&uuml;n&uuml;&rsquo;n&uuml; kutluyorum. Her mesleğin sorunları var. Ancak şunu hep g&ouml;r&uuml;yoruz: Ger&ccedil;ekten &ccedil;alışan gazeteciler a&ccedil;ısından &ouml;zellikle internet gazeteciliği yazılı gazeteciliğin aleyhine bir durum ortaya &ccedil;ıkardı. Tabii ki ortada bir sorumsuzluk var. İnsanlar klavyenin başına ge&ccedil;ince kendilerini kahraman zannedip her istediklerinin yazamaya &ccedil;alışıyorlar. Bu da insanların kişi haklarına onurlarına dokunabiliyor. &Uuml;mit ediyorum hazırlanmakta olan internet medya gazeteciliği yasasının da &ccedil;ıkması ile bu konu inşallah d&uuml;zene girecek. Sosyal medya da ayrı bir sorun. Kişilerin h&uuml;rriyeti başkalarının h&uuml;rriyetin başladığı yerde biter&rdquo; diye konuştu.</p>\r\n\r\n<p>&Ouml;d&uuml;l almak i&ccedil;in &ccedil;ıktığı sahnede bir m&uuml;jde veren Samsun B&uuml;y&uuml;kşehir Belediye Başkanı Mustafa Demir ise &ldquo;Samsunspor 20 Ocak anıtı konusunda kararı verdik. 20 Ocak 1989 futbol şehitlerimizin anıtının yerini meclisten ge&ccedil;ireceğiz. İnşallah &ccedil;ok g&uuml;zel bir tasarımla bir anıt yapacağız&rdquo; ifadelerini kullandı.</p>\r\n\r\n<h2>Gecede 35 kişiye &ouml;d&uuml;l</h2>\r\n\r\n<p>Gecede 35 kişiye &ouml;d&uuml;l&uuml;ler verildi. Gecede &ldquo;Yılın B&uuml;rokratı&rdquo; &ouml;d&uuml;l&uuml; Samsun Valisi Osman Kaymak&rsquo;a, &ldquo;Yılın Siyaset&ccedil;isi&rdquo; &ouml;d&uuml;l&uuml; Samsun B&uuml;y&uuml;kşehir Belediye Başkanı Mustafa Demir&rsquo;e, &ldquo;Yılın Belediye Başkanı&rdquo; &ouml;d&uuml;l&uuml; İlkadım Belediye Başkanı Necattin Demirtaş&rsquo;a, &ldquo;Yılın İl&ccedil;e Belediye Başkanı&rdquo; &ouml;d&uuml;l&uuml; Kavak Belediye Başkanı İbrahim Sarıcaoğlu&rsquo;na, &ldquo;Yılın K&uuml;lt&uuml;r Sanat &Ouml;d&uuml;l&uuml;&rdquo; Atakum Belediyesine, &ldquo;Yılın Onur &Ouml;d&uuml;l&uuml;&rdquo; Yılport Samsunspor Futbol Kul&uuml;b&uuml; Y&ouml;netim Kurulu Başkanı Y&uuml;ksel Yıldırım&rsquo;a, uluslararası temsil &ouml;d&uuml;l&uuml; AK Parti İstanbul Milletvekili Akif &Ccedil;ağatay Kılı&ccedil;&rsquo;a, &ldquo;Milli M&uuml;cadele &Ouml;zel &Ouml;d&uuml;l&uuml;&rdquo; AK Parti Genel Başkan Yardımcısı ve Samsun Milletvekili &Ccedil;iğdem Karaaslan&rsquo;a, &ldquo;Yılın Sağlık Kurumu&rdquo; &ouml;d&uuml;l&uuml; VM Medical Park Samsun Hastanesi Genel M&uuml;d&uuml;r&uuml; Dr. &Ouml;ğr. &Uuml;yesi Hakan &Ouml;zcan&rsquo;a, &ldquo;Yılın Bilim Kadını&rdquo; &ouml;d&uuml;l&uuml; Prof. Dr. Nalan Kızıltan&rsquo;a, &ldquo;Cesur Kadın &Ouml;d&uuml;l&uuml;&rdquo; Do&ccedil;. Dr. Deniz Sarı&rsquo;ya, &ldquo;Doğal Yaşam &Ouml;d&uuml;l&uuml;&rdquo; Nazlı Uyanık&rsquo;a, &ldquo;Yılın &Ouml;ğretmeni&rdquo; &ouml;d&uuml;l&uuml; Nurten Akkuş&rsquo;a, &ldquo;Yılın Fotoğraf Sanat&ccedil;ısı&rdquo; &ouml;d&uuml;l&uuml; Samsun Cumhuriyet Savcısı Vedat Soğukpınar&rsquo;a, &ldquo;Yılın G&uuml;zel Sanatlar &Ouml;d&uuml;l&uuml;&rdquo; Prof. Dr. Metin Eker&rsquo;e, &ldquo;Yılın Akademi &Ouml;d&uuml;l&uuml;&rdquo; Do&ccedil;. Dr. Ayşenur B&uuml;y&uuml;kg&ouml;ze Kavas&rsquo;a, &ldquo;Yılın Devlet Okulu&rdquo; &ouml;d&uuml;l&uuml; Baruthane Ortaokulu adına okul m&uuml;d&uuml;r&uuml; S&uuml;leyman &Ccedil;iftli&rsquo;ye verildi.</p>', NULL),
(8, 1, 'Sağlık Bakan Yardımcısı Sağlığın Bugününü ve Geleceğini Anlattı', NULL, NULL, '9f56e57d572af17f4e36756e449ff06e.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<h2><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><em><strong>Sağlık Bakan Yardımcısı Sağlığın Bug&uuml;n&uuml;n&uuml; ve Geleceğini Anlattı</strong></em></span></span></h2>\r\n\r\n<p>Sağlık Bakanı Yardımcısı Dr. Şuayip Birinci, &ldquo;Sağlıkta Bug&uuml;n ve Gelecek&rdquo; konulu konferans sebebiyle, mezunu olduğu Ondokuz Mayıs &Uuml;niversitesi (OM&Uuml;) Tıp Fak&uuml;ltesinde; protokol &uuml;yeleri, &ouml;ğrenciler ve akademisyenlerle bir araya geldi.</p>\r\n\r\n<p>Konferansa; Samsun milletvekili Orhan Kırcalı, Rekt&ouml;r Prof. Dr. Sait Bilgi&ccedil;, Tıp Fak&uuml;ltesi Dekanı Prof. Dr. Ayhan Dağdemir, Sağlık Bilimleri Fak&uuml;ltesi Dekanı Prof. Dr. Murat Terzi, Rekt&ouml;r Başdanışmanı Prof. Dr. Fatih &Ouml;zkan, Tıp Fak&uuml;ltesi Hastanesi Başhekimi Prof. Dr. &Uuml;nsal &Ouml;zgen, Sağlık İl M&uuml;d&uuml;r&uuml; Dr. Muhammet Ali Oru&ccedil;, akademisyenler ve &ouml;ğrenciler katıldı.</p>\r\n\r\n<p>Mezun-&ouml;ğrenci buluşması kapsamında ger&ccedil;ekleşen konferansta Sağlık Bakanı Yardımcısı Dr. Şuayip Birinci, Sağlık Bakanlığının bu zamana kadar yaptığı faaliyetler ve kaydettiği gelişmelerin yanı sıra, devam eden &ccedil;alışmaları ile ilgili de ayrıntılı bir sunum yaptı.</p>\r\n\r\n<p>Konferansın a&ccedil;ılışında, 1998 yılında OM&Uuml; Tıp Fak&uuml;ltesinin mezun olan Bakan Yardımcısı Dr. Şuayip Birinci&rsquo;nin &ouml;zge&ccedil;mişi ve &ldquo;e-nabız&rdquo; gibi projeleri hakkında bilgi veren Tıp Fak&uuml;ltesi Dekan Yardımcısı Prof. Dr. Levent G&uuml;ng&ouml;r, Dr. Şuayip Birinci&rsquo;nin &ouml;ğrencilik yıllarına ait g&uuml;zel anılarını da g&ouml;rseller eşliğinde katılımcılarla paylaştı.</p>\r\n\r\n<h2>&ldquo;En y&uuml;ksek hasta memnuniyetine sahip &uuml;lkelerden biriyiz&rdquo;</h2>\r\n\r\n<p>OM&Uuml;&rsquo;deki yıllarını hatırlamaktan duyduğu memnuniyeti dile getiren Sağlık Bakanı Yardımcısı Dr. Şuayip Birinci &ldquo;Bug&uuml;n sizlerle T&uuml;rkiye&rsquo;de sağlığın nereden nereye geldiğini ve gelecekte sağlığı nelerin beklediğini konuşmak istiyorum. Geldiğimiz noktada m&uuml;thiş bir sağlık ordusuna sahibiz.&rdquo; dedi.</p>\r\n\r\n<p>Harcadığı paraya g&ouml;re en y&uuml;ksek hasta memnuniyetine sahip &uuml;lkelerden biri olduğumuzu işaret eden Bakan Yardımcısı Dr. Şuayip Birinci, son 15 yılda Sağlık Bakanlığının sağlık sisteminde ve sağlık uygulamalarında yaptığı d&uuml;zenlemelerle azalan olumsuzlukları, veri ve istatistiklerle a&ccedil;ıkladı. Anne ve bebek &ouml;l&uuml;mlerinde &ouml;nemli &ouml;l&ccedil;&uuml;de azalma olduğuna dikkat &ccedil;eken Şuayip Birinci, diyabet gibi T&uuml;rkiye&rsquo;de yaygın g&ouml;r&uuml;len kronik hastalıkların azalması i&ccedil;in de &ccedil;alışmalar yaptıklarını kaydetti.</p>\r\n\r\n<h2>&ldquo;Amacımız değer odaklı ve nitelikli hizmet&rdquo;</h2>\r\n\r\n<p>Randevulu sistem, mobil sağlık hizmeti, engellilerin sağlık hizmetlerine kolay ulaşmasını sağlayan uygulamalar gibi faaliyetlerle Sağlık Bakanlığının değer odaklı ve nitelikli hizmeti ama&ccedil;ladığının altını &ccedil;izen Şuayip Birinci, Sağlık Bakanlığının uluslararası alanda yaptığı &ccedil;alışmalara da değindi. Verilen nitelikli hizmetle d&uuml;nya sağlık turizminde iyi bir noktada olduğumuzu ifade eden Şuayip Birinci, bir&ccedil;ok &uuml;lkede de kapasitesi y&uuml;ksek T&uuml;rk hastanelerinin bulunduğunu s&ouml;zlerine ekledi.</p>\r\n\r\n<p>Bilişim teknolojisinin sağlık alanında uygulanmasıyla verilerin kayıt altına alınarak hastalıkların tanı, tedavi ve takip s&uuml;recinin kolaylaştığını belirten Dr. Şuayip Birinci, bu sayede ila&ccedil; kullanımın da izlenebilir olduğunu dile getirdi.</p>\r\n\r\n<p>Tıbbi cihazların verimli kullanılmasına &ouml;zen g&ouml;sterdiklerini de dile getiren Bakan Yardımcısı Dr. Şuayip Birinci, gelecekte yapılması planlanan sağlık hizmetleri hakkında da bilgi verdi. Ger&ccedil;ekten işini iyi yapanların &ouml;ne &ccedil;ıkacağı bir sistem kurmayı hedeflediklerini belirten Dr. Şuayip Birinci, &ldquo;İnşallah bundan sonra sağlık sekt&ouml;r&uuml; siz hekim adaylarıyla daha da başarılı bir s&uuml;re&ccedil; yaşayacak. Ben de sizlerin her &ouml;nerisini dinlemeye hazırım.&rdquo; diye konuştu.</p>\r\n\r\n<h2>Bakan Yardımcısı Birinci&rsquo;ye &ouml;ğrenci kimliği s&uuml;rprizi</h2>\r\n\r\n<p>Sunumun ardından katılımcıların sorularını yanıtlayan Sağlık Bakanı Yardımcısı Dr. Şuayip Birinci&rsquo;ye Rekt&ouml;r Prof. Dr. Sait Bilgi&ccedil;, Birinci&rsquo;nin Tıp Fak&uuml;ltesi &ouml;ğrenciliğindeki kimlik kartını takdim ederken Samsun milletvekili Orhan Kırcalı da fidan setifikası takdim etti.</p>\r\n\r\n<p>Hatıra fotoğrafıyla etkinlik sona erdi.</p>', 1),
(15, 3, 'OMÜ 2020 Yılı Norm Kadro Planlaması', NULL, '1', '4e78685cca242d586776cccf6c0f6243.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>Devlet Y&uuml;ksek&ouml;ğretim Kurumlarında &Ouml;ğretim Elemanı Norm Kadrolarının Belirlenmesine ve Kullanılmasına İlişkin Y&ouml;netmelik&#39;in 4/8 maddesi uyarınca &Uuml;niversitemize ait 2020 yılı norm kadro planlaması ekli dosyada yer almaktadır.</p>', NULL),
(16, 3, 'Tuzak E-Postalara Dikkat', NULL, '2', '91182e0af770fa8a3d7db437b46428fa.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>Son d&ouml;nemlerde kurumsal e-posta adreslerinize, hesaplarınızı ele ge&ccedil;irmek amacıyla oltalama (phishing) yolu ile tuzak e-postaların g&ouml;nderildiği g&ouml;r&uuml;lmektedir. Hi&ccedil;bir nedenle Bilgi İşlem Daire Başkanlığı tarafından kullanıcı adınız, şifreniz gibi bilgiler istenmemektedir. &ldquo;Kotanız doldu&rdquo; veya &ldquo;kotanız dolmaktadır&rdquo; tarzı i&ccedil;erikteki e-postalara itibar etmeyiniz.<br />\r\n<br />\r\nŞifreniz size &ouml;zeldir ve sizin sorumluluğunuzdadır.&nbsp; L&uuml;tfen şifrenizi kesinlikle kimse ile paylaşmayınız.<br />\r\n<br />\r\n<strong>Bilgi İşlem Daire Başkanlığı</strong></p>', NULL),
(17, 3, 'Akademik Biniş Takdim Töreni', NULL, '3', '202ca754da2b8c7839927a5c6fa2b81e.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, NULL, NULL),
(18, 3, 'Erasmus Personel Başvuruları Sonuçları', NULL, '4', '0bc02676c9bcd93b8f57b36e904aa912.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>&ldquo;Erasmus Personel Hareketliliği&quot; Başvuru değerlendirme s&uuml;reci tamamlanmıştır. L&uuml;tfen tıklayınız.</p>\r\n\r\n<p><a href=\"http://erasmus.omu.edu.tr/tr/haber/erasmus-personel-basvurulari-sonuclari-aciklanmistir/57\">http://erasmus.omu.edu.tr/tr/haber/erasmus-personel-basvurulari-sonuclar...</a></p>', NULL),
(19, 2, 'Tarımsal Öğretimin 174. Yıl Dönümü Kutlama Programı', NULL, NULL, '7ed81a8fb32582048945b0a788bfb4aa.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<h5>Tarımsal &Ouml;ğretimin 174. Yıl D&ouml;n&uuml;m&uuml; Kutlama Programı</h5>\r\n\r\n<p>Ziraat Fak&uuml;ltesi</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/icerik/etkinlik/etkinlik-turu/T%C3%B6ren\">T&Ouml;REN</a></p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/icerik/etkinlik/taxonomy/term/238\">OM&Uuml; Ziraat Fak&uuml;ltesi Fahrettin Tosun Konferans Salonu</a></p>\r\n\r\n<p>PAZARTESİ, 13 OCAK, 2020 - 10:00</p>\r\n\r\n<p>husnud@omu.edu.tr [Prof. Dr. H&uuml;sn&uuml; DEMİRSOY (Dekan Vekili)]</p>\r\n\r\n<h2><strong>Program :</strong></h2>\r\n\r\n<p><strong>A&ccedil;ılış - Saygı Duruşu ve İstiklal Marşı</strong></p>\r\n\r\n<p><strong>Protokol Konuşmaları</strong></p>\r\n\r\n<p><strong>Rahim Demirbaş &quot; &Ccedil;&ouml;lden Ormana &quot; İsimli S&ouml;yleşi</strong></p>\r\n\r\n<p><strong>M&uuml;zik Dinletisi ( Başak Orkestrası )</strong></p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/takvim\" tabindex=\"1\">&nbsp;Etkinlik Takvimi&#39;ne g&ouml;zat</a></p>', NULL),
(20, 2, 'Teorik ve Uygulamalı Moleküler Genetik Kursu-1', NULL, NULL, '40d7cd1b8ca91ccd2b173b75cc80568d.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>Karadeniz İleri Teknoloji Araştırma ve Uygulama Merkezi (KİTAM)</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/etkinlik-turu/E%C4%9Fitim\">EĞİTİM</a></p>\r\n\r\n<p>KİTAM</p>\r\n\r\n<p>PAZARTESİ, 20 OCAK, 2020 (T&Uuml;M G&Uuml;N)&nbsp;-&nbsp;&Ccedil;ARŞAMBA, 22 OCAK, 2020 (T&Uuml;M G&Uuml;N)</p>\r\n\r\n<p>6 g&uuml;n kaldı</p>\r\n\r\n<p>kubilay.yildirim@omu.edu.tr</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/takvim\" tabindex=\"1\">&nbsp;Etkinlik Takvimi&#39;ne g&ouml;zat</a></p>', NULL),
(21, 2, 'Fikrinle İz Bırak İş Fikri Yarışması', NULL, NULL, '3d0b061e7ea93fbf4da31bf5009a9f7b.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>Atılım &Uuml;niversitesi</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/etkinlik-turu/Yar%C4%B1%C5%9Fma\">YARIŞMA</a></p>\r\n\r\n<p>&Ccedil;ARŞAMBA, 11 ARALIK, 2019 (T&Uuml;M G&Uuml;N)&nbsp;-&nbsp;&Ccedil;ARŞAMBA, 15 OCAK, 2020 (T&Uuml;M G&Uuml;N)</p>\r\n\r\n<p><a href=\"http://fikrinleizbirak.atilim.edu.tr/\" target=\"_blank\">http://fikrinleizbirak.atilim.edu.tr</a></p>\r\n\r\n<p>Atılım &Uuml;niversitesi ve T&uuml;rkiye Gen&ccedil; İşadamları Derneği (T&Uuml;GİAD) Ankara Şubesi işbirliği ile &quot;Fikrinle İz Bırak İş Fikri Yarışması&quot; d&uuml;zenlenecektir.</p>\r\n\r\n<p>Yarışmaya son başvuru tarihi 15 Ocak 2020 olup detaylı bilgi&nbsp;<a href=\"http://fikrinleizbirak.atilim.edu.tr/\">http://fikrinleizbirak.atilim.edu.tr/</a>&nbsp;adresinde yer almaktadır.</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/takvim\" tabindex=\"1\">&nbsp;Etkinlik Takvimi&#39;ne g&ouml;zat</a></p>', NULL),
(22, 2, '3. Gençlik Farkında Proje Yarışması', NULL, NULL, 'e79ad0faa4ff32fe1e794ea29fc31fc9.jpeg', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, '<p>Ankara Hacı Bayram Veli &Uuml;niversitesi</p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/etkinlik-turu/Yar%C4%B1%C5%9Fma\">YARIŞMA</a></p>\r\n\r\n<p>Ankara</p>\r\n\r\n<p>SALI, 31 ARALIK, 2019 - 14:45</p>\r\n\r\n<p><a href=\"https://www.genclikfarkinda.net/\" target=\"_blank\">https://www.genclikfarkinda.net/</a></p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/takvim\" tabindex=\"1\">&nbsp;Etkinlik Takvimi&#39;ne g&ouml;zat</a></p>', NULL),
(23, 2, 'Kişisel Verilerin Korunması Kanunu Eğitimi', NULL, NULL, 'a2eb74d4f1e501cc9d76302a88dc520f.jpeg', NULL, NULL, NULL, NULL, NULL, 'New', NULL, NULL, '<p><a href=\"http://www.omu.edu.tr/tr/icerik/etkinlik-turu/E%C4%9Fitim\">EĞİTİM</a></p>\r\n\r\n<p>PAZARTESİ, 20 OCAK, 2020 (T&Uuml;M G&Uuml;N)</p>\r\n\r\n<p>0332 241 30 44-8012</p>\r\n\r\n<p>selcuksem.bilgi@selcuk.edu.tr</p>\r\n\r\n<p><a href=\"http://selcuksem.selcuk.edu.tr/\" target=\"_blank\">http://selcuksem.selcuk.edu.tr/</a></p>\r\n\r\n<p><a href=\"http://www.omu.edu.tr/tr/takvim\" tabindex=\"1\">&nbsp;Etkinlik Takvimi&#39;ne g&ouml;zat</a></p>', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `surname`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ahmet@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$S0ZyR3VVNmRFYm1ZWjhUdA$2VZOduwrwZkFtN4nx/7jdgTC3PCz/4q/HGtBDUn9d2E', 'Ahmet', 'Al', '124413577e71ac3e5ec465c762f5f958.jpeg', 'True', NULL, NULL),
(2, 'ayse@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$U0RTVXN5cENVVkIyLldpag$obXIknjitQ93qEy1PlPnOMoB4YDP7IbZPPNll3yFAx0', 'Ayse', 'CAN', '253c08d8ba967407c9b9ea9b04ce551c.jpeg', 'True', NULL, NULL),
(3, 'omer@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$YXk2c3Qwb2t5ZW9uT3cudg$sHMUESzo3pfjgqFpL+RnmO8eYJt9tnw0NSwCl9KfcrM', 'Ömer', 'Şahin', 'bf0b7cdd4624e0624bf698bcf02314fe.jpeg', 'True', NULL, NULL),
(4, 'su@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Y0QyUFpvZklnd1RGYTFFNw$E2+XS3eDdQBFylQYlq8mFirKCXsjOA9aR3lijTd6xa4', 'Su', 'Al', '1720647fc5d60071cc7c96d4b5a99e12.jpeg', 'True', NULL, NULL),
(5, 'nur@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$VmlZcVVZT3d5ZERQb2pmQg$bOvgLeAFfTyAjwPiWPHJ4LuN9GkHAjguAaDGP71AMok', 'Nur', 'Yılmaz', 'f6156d62458c5538b5e535b3610bb943.jpeg', 'True', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F16D1B382` (`veri_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A07A85EC12469DE2` (`category_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F16D1B382` FOREIGN KEY (`veri_id`) REFERENCES `university` (`id`);

--
-- Tablo kısıtlamaları `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `FK_A07A85EC12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
