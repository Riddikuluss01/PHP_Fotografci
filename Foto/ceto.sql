-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Eyl 2017, 01:25:25
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ceto`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(1) NOT NULL DEFAULT '0',
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_header` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_recapctha` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_googlemap` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_instagram` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_header`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_mail`, `ayar_adres`, `ayar_il`, `ayar_ilce`, `ayar_mesai`, `ayar_recapctha`, `ayar_googlemap`, `ayar_analystic`, `ayar_facebook`, `ayar_twitter`, `ayar_instagram`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`) VALUES
(0, 'resimler/29803logo-yok.png', '#990000', 'http://localhost/Foto/', 'Foto Çetin', 'Geyve\'nin fotoğraf stüdyosu Foto Çetin web sitesi', 'foto, çetin, fotoğraf, stüdyo, geyve, sakarya, düğün, sünnet, vesikalık, kamera', '', '0555 555 55 55', 'info@fotogeyve.com', 'Camikebir Mahallesi, Dere Sk., 54700 ', 'SAKARYA', 'Geyve', '7x24 açığız başgan', '', '', '', 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.instagram.com/', 'mail.siteadresiniz.com', 'eposta@siteadresiniz.com', '1234', '25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyuru`
--

CREATE TABLE `duyuru` (
  `duyuru_id` int(11) NOT NULL,
  `duyuru_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `duyuru_zaman` datetime NOT NULL,
  `duyuru_resimyolu` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `duyuru_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `duyuru_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `duyuru_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `duyuru`
--

INSERT INTO `duyuru` (`duyuru_id`, `duyuru_ad`, `duyuru_zaman`, `duyuru_resimyolu`, `duyuru_detay`, `duyuru_keyword`, `duyuru_durum`) VALUES
(3, 'Deneme', '2017-06-09 23:00:43', 'resimler/duyuru/22831220562369531056slider01.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in libero nunc. Phasellus scelerisque tempor accumsan. Donec finibus a turpis in scelerisque. Curabitur vitae dolor ut ipsum molestie sagittis. Aenean sollicitudin odio metus, sit amet imperdiet elit luctus sit amet. Vivamus neque diam, tempor sed est non, ullamcorper fermentum justo. Praesent pulvinar tempor ex, quis lacinia dui varius nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed volutpat urna nec mauris maximus pharetra id vitae diam. Vivamus viverra metus id aliquet dignissim. In massa mi, semper vel mauris eget, iaculis feugiat orci. Donec bibendum, nibh eu sollicitudin ornare, odio justo hendrerit arcu, in molestie magna dolor nec ex. Sed efficitur mi vel ex euismod volutpat. Aliquam placerat scelerisque augue in commodo. Nunc id lorem mi.</p>\r\n\r\n<p>Aenean pellentesque ipsum vel justo blandit lacinia. Quisque semper arcu nec porttitor aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent eu luctus turpis. Donec scelerisque eros nibh, ac sagittis neque scelerisque ut. Mauris lacinia dolor vitae libero tempor fermentum. Proin tempus nisi purus, vitae consequat massa hendrerit sed. Fusce luctus leo ac eros eleifend dignissim. Ut tincidunt commodo dignissim.</p>\r\n', 'deneme, lorem, foto, çetin', '1'),
(4, 'Sitemiz Hizmetinizde', '2017-06-09 17:06:18', 'resimler/duyuru/26825281642395330510duyuru01.jpg', '<p>Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.&nbsp;Sitemiz hizmetinize girmiştir bu siteden bizimle ilgili istediğiniz bilgilere ulaşabilirsiniz.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'merhaba, foto, çetin, geyve', '1'),
(5, 'Deneme', '2017-06-09 23:00:43', 'resimler/duyuru/22831220562369531056slider01.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in libero nunc. Phasellus scelerisque tempor accumsan. Donec finibus a turpis in scelerisque. Curabitur vitae dolor ut ipsum molestie sagittis. Aenean sollicitudin odio metus, sit amet imperdiet elit luctus sit amet. Vivamus neque diam, tempor sed est non, ullamcorper fermentum justo. Praesent pulvinar tempor ex, quis lacinia dui varius nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed volutpat urna nec mauris maximus pharetra id vitae diam. Vivamus viverra metus id aliquet dignissim. In massa mi, semper vel mauris eget, iaculis feugiat orci. Donec bibendum, nibh eu sollicitudin ornare, odio justo hendrerit arcu, in molestie magna dolor nec ex. Sed efficitur mi vel ex euismod volutpat. Aliquam placerat scelerisque augue in commodo. Nunc id lorem mi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Aenean pellentesque ipsum vel justo blandit lacinia. Quisque semper arcu nec porttitor aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent eu luctus turpis. Donec scelerisque eros nibh, ac sagittis neque scelerisque ut. Mauris lacinia dolor vitae libero tempor fermentum. Proin tempus nisi purus, vitae consequat massa hendrerit sed. Fusce luctus leo ac eros eleifend dignissim. Ut tincidunt commodo dignissim.</p>\r\n', 'deneme, lorem, foto, çetin', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `galeri_resimyolu` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `galeri_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `galeri_sira` int(2) NOT NULL,
  `galeri_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `galeri_ad`, `galeri_resimyolu`, `galeri_link`, `galeri_sira`, `galeri_durum`) VALUES
(1, 'Deneme 66', 'resimler/galeri/30999276613038022075qam.png', '1', 1, '1'),
(4, 'Deneme 2', 'resimler/galeri/22677226892531923025veri yapilari.jpg', '2', 2, '1'),
(5, 'Deneme 3', 'resimler/galeri/25543227042212031016duyuru01.jpg', '3', 3, '1'),
(6, 'Deneme 4', 'resimler/galeri/29872242733187529995slider03.jpg', '4', 4, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(1) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_hedef` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_hedef`) VALUES
(0, 'Foto Çetin Hakkımızda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et purus nec augue consectetur viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a vestibulum felis. Donec sed pellentesque dui. Aliquam dignissim scelerisque mi, eget interdum lectus aliquam eu. Pellentesque rutrum tortor eu accumsan faucibus. Proin sagittis sagittis nisl vel aliquet. Donec luctus libero sit amet maximus feugiat. Etiam sit amet sem quis elit imperdiet consequat. Praesent a turpis commodo, venenatis magna quis, rutrum purus. Nulla facilisi. Fusce egestas nulla tellus, ac sollicitudin massa pulvinar a. Etiam eget urna tempor, sodales nibh lacinia, tristique velit. Sed felis elit, dictum id volutpat in, tincidunt non libero. Vivamus vulputate neque a sapien convallis ultrices.<img alt=\"\" src=\"http://lorempixel.com/output/technics-q-c-640-480-5.jpg\" style=\"float:right; height:225px; width:300px\" /></p>\r\n\r\n<p>Integer auctor lacus a ullamcorper pellentesque. Pellentesque quam dui, ornare at est quis, tempor vehicula orci. Proin scelerisque ligula eros, sit amet iaculis tellus scelerisque at. Mauris eleifend porta mi, non mollis lacus feugiat ac. Pellentesque tincidunt eu nulla in iaculis. Quisque consectetur metus id rutrum gravida. Donec suscipit varius finibus. Pellentesque ut condimentum lorem, vitae hendrerit enim. Nam suscipit venenatis auctor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at fringilla urna, ac dictum nulla. Suspendisse potenti. Vestibulum sollicitudin ligula commodo ligula molestie bibendum.</p>\r\n\r\n<p>Sed tempor enim sit amet ligula varius bibendum mollis vel elit. Integer consequat eros vel blandit maximus. Etiam dapibus blandit elit non luctus. Pellentesque vitae nisi convallis, accumsan augue placerat, varius lorem. Suspendisse non cursus justo. Nulla finibus porta ornare. Aliquam feugiat ex sed ex vestibulum, eu condimentum libero fringilla. Donec nibh risus, venenatis ut urna a, tincidunt aliquet felis.</p>\r\n\r\n<p>Proin a risus varius, varius purus a, interdum purus. Donec sed accumsan orci. Vivamus lorem metus, fringilla at vehicula in, rhoncus at purus. Ut molestie, nisi bibendum condimentum dapibus, ex ipsum gravida ipsum, a sagittis magna sem in nulla. Sed pulvinar metus turpis, quis rutrum est vestibulum at. Donec non leo lorem. Etiam dignissim libero sed elementum condimentum. Vestibulum quis massa sodales, pellentesque elit vel, tincidunt orci. Nullam rutrum feugiat dui, eu pharetra orci mattis eu. Pellentesque pellentesque nisi non pharetra gravida. Donec enim erat, imperdiet eget dapibus molestie, feugiat nec lacus.</p>\r\n\r\n<p>Sed accumsan varius nisi vel maximus. Nulla id risus massa. Sed eget leo ut lectus dapibus semper non eget enim. In id placerat ante. Duis sollicitudin tortor vitae quam laoreet ultricies. Nam vitae lorem in purus volutpat pulvinar nec vel felis. Phasellus egestas nisl sed risus aliquet scelerisque. Suspendisse commodo fermentum nisi, et pharetra nisl vestibulum non. Maecenas dapibus tellus sapien, quis dapibus ex suscipit quis. Vestibulum sed auctor sem, at rhoncus purus. Sed eu massa hendrerit, maximus sapien ac, varius purus. Vivamus blandit nisl ac libero efficitur vehicula. Aenean ante ex, imperdiet at ex eu, convallis molestie turpis. Sed in ex quis ipsum dapibus dictum eget at nibh. Vivamus auctor pellentesque consequat.</p>\r\n\r\n<p>5 paragraf, 468 s&ouml;zc&uuml;k, 3218 karakter&nbsp;Lorem Ipsum&nbsp;&uuml;retilmiştir</p>\r\n', 'vOulsEGvSCo', 'Öncelikli hedefimiz kaliteli ürün ve kaliteli hizmet anlayışıyla tüm müşterilerimizin memnuniyetini kazanmaktır');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_zaman` datetime NOT NULL,
  `icerik_resimyolu` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `icerik_ad`, `icerik_zaman`, `icerik_resimyolu`, `icerik_detay`, `icerik_keyword`, `icerik_durum`) VALUES
(7, 'Fotoğrafçılık', '2017-06-06 03:27:19', 'resimler/icerik/28055215802220025842icerik01.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis lorem lacinia libero vulputate posuere. Sed id lacus eu ipsum interdum congue. Quisque sed ex eu massa viverra tincidunt. Maecenas dictum ut mauris et egestas. Sed egestas feugiat scelerisque. Ut accumsan viverra tortor, vitae imperdiet elit suscipit id. Nulla vel tortor turpis. Nulla mauris libero, varius laoreet fermentum quis, lacinia nec purus. Quisque nunc lectus, consequat ut convallis vitae, porttitor in neque. Maecenas accumsan ut justo vitae interdum. Suspendisse scelerisque nisi elit, eu sagittis mauris tincidunt ut. Nunc sodales efficitur tellus a varius. Maecenas dictum magna varius nibh dictum tristique.</p>\r\n\r\n<p>Proin ultrices diam eget libero consequat dictum ut non turpis. Curabitur sed finibus massa, vel dignissim nibh. Donec quis erat vel ante ultrices ullamcorper ac ac risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tempus vehicula egestas. Integer et arcu tempus, egestas enim non, commodo neque. Etiam iaculis vehicula augue, non varius nisi fermentum in. Donec maximus turpis et urna pellentesque laoreet. Nunc sodales eleifend lacinia. Donec imperdiet metus in rhoncus faucibus. Maecenas lectus lacus, fermentum eu dictum id, laoreet in leo. Mauris dolor sapien, maximus nec ultrices vitae, rhoncus a lorem.</p>\r\n\r\n<p>In quis leo non nisi euismod pretium. Fusce bibendum enim sem, sed hendrerit tortor faucibus sed. Vivamus sed lacus in ipsum consectetur suscipit. Curabitur egestas gravida ligula, id lobortis augue euismod non. Duis rhoncus tellus sagittis malesuada bibendum. Fusce blandit, tellus eget consequat ornare, nibh velit finibus mauris, in finibus tortor lectus ac turpis. Donec orci sapien, sodales eget pretium id, sollicitudin in nibh.</p>\r\n\r\n<p>Maecenas nec consectetur mi. Etiam nunc augue, consequat sit amet ex et, eleifend tempor eros. Sed commodo, risus quis ullamcorper rutrum, enim risus posuere lectus, at tempus mi dolor sit amet purus. Nam auctor, ipsum blandit sodales fermentum, eros ante elementum odio, et malesuada libero mi quis metus. Ut sed nibh at lectus interdum feugiat et vel lorem. Vivamus a mattis lectus. Suspendisse molestie augue nec laoreet elementum. Integer et efficitur lorem. Quisque ornare tincidunt hendrerit. Maecenas venenatis, elit vitae varius semper, massa nulla lobortis odio, sed fermentum velit ipsum quis nulla. Vestibulum pulvinar augue diam, varius tristique purus luctus et. Curabitur viverra tincidunt molestie. Sed iaculis urna nisl, quis sagittis tortor suscipit non. Morbi in elementum nisi. Donec vitae magna at diam tempus vestibulum sit amet at ante. Nulla vehicula convallis mattis.</p>\r\n\r\n<p>Duis ullamcorper dolor ac turpis tincidunt porttitor sit amet non leo. Curabitur eget elementum lacus. Nam bibendum sapien lorem, id sodales lectus posuere id. Sed nec sem ullamcorper, egestas sapien iaculis, consectetur nunc. Mauris et viverra est. Quisque pulvinar pretium eros, et lobortis leo scelerisque eu. Aliquam molestie mauris mauris, a placerat urna varius at. Etiam facilisis purus sem, et porttitor augue mollis id. Cras vehicula neque non orci vulputate, ac varius arcu maximus. Fusce elit libero, venenatis sed orci eu, rhoncus pulvinar nibh. Donec a hendrerit justo, sed iaculis dolor. Donec egestas est neque, et viverra arcu blandit ut.</p>\r\n\r\n<p>Nulla porttitor pulvinar mi. Vivamus accumsan, lacus porttitor dapibus auctor, ipsum risus pharetra dolor, eget pellentesque ligula leo euismod libero. Pellentesque eget tortor dignissim, sollicitudin mauris nec, feugiat dolor. Praesent sit amet finibus orci, vel tincidunt nisi. Mauris at interdum ante. Nunc at dictum nunc. Quisque volutpat odio fringilla auctor tristique. In velit magna, rutrum a gravida et, rutrum in odio. Nullam vel massa at ex auctor tincidunt. Praesent commodo, velit vitae finibus pharetra, orci nisl pulvinar sem, sed gravida lacus urna nec turpis. Suspendisse nec volutpat mi. Curabitur iaculis metus metus, quis vulputate nibh ultrices eget. Sed imperdiet ex lorem, id egestas tellus tempus non. Donec id venenatis justo.</p>\r\n\r\n<p>In quis cursus augue, in blandit risus. Donec at ligula vehicula, dictum augue nec, consectetur ante. Sed in massa convallis mauris iaculis vehicula vitae ac tortor. In luctus scelerisque augue ut ullamcorper. Nunc vitae urna iaculis, consectetur urna vel, scelerisque orci. Donec sed dolor nulla. Morbi pharetra ipsum nibh, nec tempus turpis ornare et. Maecenas condimentum nec dui ac fermentum. Donec eu pretium sapien. Curabitur facilisis erat quam, ut tristique ante semper et. Nam purus magna, consectetur nec accumsan vitae, semper a nibh.</p>\r\n\r\n<p>Proin euismod rhoncus nisi at mollis. Etiam in dapibus nisi. Donec magna turpis, rhoncus sed volutpat et, porttitor id lectus. Integer euismod tortor ipsum, in efficitur justo malesuada non. Aenean commodo mi tellus, a vestibulum arcu pellentesque ac. Etiam at est nunc. Nullam imperdiet nulla ante, id cursus sem blandit id. Cras sit amet varius ex. Maecenas eu mi tortor. Nam tempus nisl sit amet lacinia elementum. Etiam auctor elementum tempor.</p>\r\n\r\n<p>8 paragraf, 760 s&ouml;zc&uuml;k, 5082 karakter&nbsp;Lorem Ipsum&nbsp;&uuml;retilmiştir</p>\r\n', 'lorem, içerik, deneme, falan, filan', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_sifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_ad`, `kullanici_sifre`, `kullanici_adsoyad`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2017-06-17 16:00:00', 'resimler/kullanici/26430profilfoto.jpg', 'admin', '9c8d5b3b854fb183697c4122a1bf6024', 'Çetin Kazdal', '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `menu_ust` int(11) NOT NULL,
  `menu_icon` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `kategori_id`, `menu_ust`, `menu_icon`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`) VALUES
(1, 0, 0, 'fa-home', 'ANASAYFA', '<p>Bu text kutucuğunu taslak olarak kullanabilirsiniz (Sayfanın işlevi ne olacak? Sayfada g&uuml;ncelleme yapılacak mı? Akşam eve ka&ccedil; ekmek alınacak?&nbsp;) Buraya yazılanlar sitenin &ouml;n tarafında g&ouml;z&uuml;kmeyecektir dilediğiniz gibi kullanabilirsiniz :)</p>\r\n', 'index.php', 1, 1),
(2, 0, 0, '', 'HAKKIMIZDA', '', 'hakkimda', 5, 1),
(3, 0, 0, '', 'HİZMETLERİMİZ', '', 'hizmetlerimiz', 2, 1),
(4, 0, 0, '', 'GALERİ', '', 'galeri', 3, 1),
(5, 0, 0, '', 'DUYURULAR', '', 'duyurular', 4, 1),
(6, 0, 0, '', 'İLETİŞİM', '', 'iletisim', 6, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyolu` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyolu`, `slider_link`, `slider_sira`, `slider_durum`) VALUES
(3, 'slider01', 'resimler/slider/21995244892309621854slider01.jpg', '1', 1, '1'),
(4, 'slider02', 'resimler/slider/26302289132829327356slider02.png', '2', 2, '1'),
(11, 'slider03', 'resimler/slider/30838279502343631602slider03.jpg', '3', 3, '1'),
(12, 'slider04', 'resimler/slider/24443307492931221780slider04.jpg', '4', 4, '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `duyuru`
--
ALTER TABLE `duyuru`
  ADD PRIMARY KEY (`duyuru_id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `duyuru`
--
ALTER TABLE `duyuru`
  MODIFY `duyuru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
