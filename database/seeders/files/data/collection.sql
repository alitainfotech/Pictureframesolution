-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2021 at 01:58 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studirg6_sm`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `collectionid` varchar(255) NOT NULL DEFAULT '',
  `collectionname` varchar(255) NOT NULL DEFAULT '',
  `collectiondescriprion` text NOT NULL,
  `catalogpage` varchar(255) NOT NULL DEFAULT '',
  `categoryid` varchar(255) NOT NULL DEFAULT '',
  `categoryname` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `adlarge` varchar(255) NOT NULL DEFAULT '',
  `catalogthumb` varchar(255) NOT NULL,
  `catalogmedium` varchar(255) NOT NULL,
  `cataloglarge` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='collection ';

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `collectionid`, `collectionname`, `collectiondescriprion`, `catalogpage`, `categoryid`, `categoryname`, `date`, `adlarge`, `catalogthumb`, `catalogmedium`, `cataloglarge`) VALUES
(2, '', 'Era', 'This \\\"Timeless\\\" collection of distressed profiles adds a great new look to the Studio line. Available in three colors, two profiles and a matching fillet.', 'N/A', '21', 'Discontinued', '2007/07/03', 'A-3_ad.jpg', 'A-3_ct_t.jpg', 'A-3_ct_m.jpg', 'A-3_ct.jpg'),
(3, '', 'Nuance', 'The Nuance line is the latest addition to our family of Two Tones. The satin furniture finish on solid ramin with a dark tone accent is available in 3 contemporary profiles. These warm, rich colors will enhance many pieces of art.', 'A-5', '1', 'Natural Wood', '2007/07/03', 'A-5_ad.jpg', 'A-5_ct_t.jpg', 'A-5_ct_m.jpg', 'A-5_ct.jpg'),
(5, '', 'Two Tones', 'Touch the warm and flowing contours of these two profiles. The two tones of high grade stain in a satin finish create a soft contrast that is an echo of understated Elegance.', 'N/A', '21', 'Discontinued', '2007/06/20', 'A-9_ad.jpg', 'A-9_ct_t.jpg', 'A-9_ct_m.jpg', 'A-9_ct.jpg'),
(6, '', 'Beaches', 'Whether it be Myrtle, Miami or Malibu, BEACHES are umpretentious, rustic mouldings of Pine that are stained, washed and burnished. They remind us of lazy days in the sun and salt air.', 'N/A', '21', 'Discontinued', '2007/06/20', 'A-11_ad.jpg', 'A_11_ct_s.jpg', 'A_11_ct_m.jpg', 'A_11_ct.jpg'),
(8, '', 'Natural Wood', 'Clean, contemporary profiles featuring the beauty and strength of solid wood in variety of stained and dyed finishes with a soft, satin luster, attractively priced offering a real value to you and your customers.', 'A-17', '1', 'Natural Woods', '2007/07/05', 'A-17_ad.jpg', 'A_17_ct_s.jpg', 'A_17_ct_m.jpg', 'A_17_ct.jpg'),
(10, '', 'Iroko', 'To touch this moulding and feel its exquisite silken finish is to know \\\\\\\"Iroko\\\\\\\". The name is derived from the African Iroko tree, and has become synonymous for fine furniture finishes. This series is a masterpiece in the tradition of Studio\\\\\\\'s signature contemporary style.', 'N/A', '21', 'Discontinued', '2007/06/20', 'A-21_ad.jpg', 'A-21_ct_t.jpg', 'A-21_ct_m.jpg', 'A-21_ct.jpg'),
(11, '', 'Honors', 'With pomp and circumstance, HONORS was specifically designed to frame certificates and diplomas. These mouldings are rich and of exemplary quality and because of their exclusive nature, they are uniquely qualified to do honors for so many years of academic achievement.', 'A-23', '1', 'Natural Wood', '2007/06/20', 'A-23_ad.jpg', 'A-23_ct_t.jpg', 'A-23_ct_m.jpg', 'A-23_ct.jpg'),
(13, '', 'Natural Wood', 'This is basic beauty. It is an unadorned, well proportioned profile of solid ramin wood, rubbed to a soft satin lustre in a wide selection of contemporary finishes. No matter how you cut it, nothing beats getting back to Square One.', 'A-27', '1', 'Natural Woods', '2007/06/20', 'A-27_ad.jpg', 'A_27_ct_s.jpg', 'A_27_ct_m.jpg', 'A_27_ct.jpg'),
(72, '', 'Silk', '', 'N/A', '21', 'Discontinued', '2007/06/26', 'G-7_ad.jpg', 'G-7_ct_t.jpg', 'G-7_ct_m.jpg', 'G-7_ct.jpg'),
(146, '', 'Natural Wood', '', 'N/A', '1', 'Natural Woods', '', 'noimage.jpg', 'NA_ct_s_1.jpg', 'NA_ct_m_1.jpg', 'NA_ct_1.jpg'),
(22, '', 'B&B', 'We like to think of these profiles as Bold & Beautiful with natural grain finishes stained with a dark Sable brown.', 'A-55', '1', 'Natural Woods', '2007/08/26', 'A-55_ad.jpg', 'A_55_ct_s.jpg', 'A_55_ct_m.jpg', 'A_55_ct.jpg'),
(23, '', 'ST Lacquer', 'These lustrous high gloss black, white lacquers in simple profiles provide a distinctive enhancement to artwork with a look that makes a statement of quality.', 'D-1', '2', 'Lacquer', '2007/06/21', 'D-1_ad.jpg', 'D_1_ct_s.jpg', 'D_1_ct_m_1.jpg', 'D_1_ct_1.jpg'),
(24, '', 'Ambience', 'Two contemporary profiles, with six color Veneer finishes, give the elegant look you need to make your art stand out from the rest. Choose any of these two profiles for your special art work.', 'N/A', '21', 'Discontinued', '2007/06/21', 'E-1_ad.jpg', 'E-1_ct_t.jpg', 'E-1_ct_m.jpg', 'E-1_ct.jpg'),
(25, '', 'Adagio', 'A fine finished and sophisticated veneer moulding that always looks well in refined  cultured company. \r\nAdagio is an invitation to a dance in slow measured movements to balance the finest of artwork.', 'N/A', '21', 'Discontinued', '2007/06/21', 'E-5_ad.jpg', 'E-5_ct_t.jpg', 'E-5_ct_m.jpg', 'E-5_ct.jpg'),
(27, '', 'Encore', 'When you move about the room and note the way that light plays upon the subtle soft curves of the silken finish of this gorgeous mahogany veneer then, you shall know ENCORE. We are delighted to include these four colors of classically elegant mouldings to our new collection.', 'N/A', '21', 'Discontinued', '2007/08/20', 'E-9_ad.jpg', 'E-9_ct_t.jpg', 'E-9_ct_m.jpg', 'E-9_ct.jpg'),
(31, '', 'Canto', 'This collection is comprised of fine veneered mouldings prepared in a cross grained format. These six contemporary earth inspired finishes are a poetic presentation to complement your artistic creativity.', 'N/A', '21', 'Discontinued', '2007/08/26', 'E-13_ad.jpg', 'E-13_ct_t.jpg', 'E-13_ct_m.jpg', 'E-13_ct.jpg'),
(34, '', 'Virtu', 'The new VIRTU line from Studio Moulding is a very classy traditional profile with a softly toned gold and silver leaf finish. If you are looking for an Objet D\\\\\\\'art that will complement a variety of images over and over again, then you need to consider the VIRTU line.', 'G-5', '4', 'Gold & Silver', '2007/06/21', 'G-5_ad.jpg', 'G_5_ct_s.jpg', 'G_5_ct_m.jpg', 'G_5_ct.jpg'),
(37, '', 'Mint', '', 'N/A', '21', 'Discontinued', '2007/06/21', 'G-11_ad.jpg', 'G-11_ct_t.jpg', 'G-11_ct_m.jpg', 'G-11_ct.jpg'),
(39, '', 'Aria', 'These mouldings bring Elegance and Sophistication in two sizes that are finished in a velvety hand textured and applied Gold and Silver leaf that captures each subtle nuance of light. Aria will be your accompaniment to a striking solo performance.', 'G-15', '4', 'Gold & Silver', '2007/08/26', 'G-15_ad.jpg', 'G_15_ct_s.jpg', 'G_15_ct_m.jpg', 'G_15_ct.jpg'),
(41, '', 'Sumi/Eos', 'Soft, delicate and burnished finishes from the Ancient Far East. Reminiscent of soft gray washes of Sumi ink brushed onto gold and silver threads of silk.', 'G-17', '4', 'Gold & Silver', '2007/06/21', 'G-17_ad.jpg', 'G_17_ct_s.jpg', 'G_17_ct_m.jpg', 'G_17_ct.jpg'),
(49, '', 'Placer', 'From out of the past come these soft and subtle gold and silver mouldings in three simple, straight forward designs.', 'G-33', '4', 'Gold & Silver', '2007/06/21', 'G-33_ad.jpg', 'G-33_ct_t.jpg', 'G-33_ct_m.jpg', 'G-33_ct.jpg'),
(147, '', 'Gold & Silver', '', 'N/A', '4', 'Gold & Silver', '', 'noimage.jpg', 'NA_ct_s.jpg', 'NA_ct_m.jpg', 'NA_ct.jpg'),
(52, '', 'Java', 'The images of Java and Malay Archipelago, are reflected in the Far Eastern lineage of these mouldings. They are available in three cupreous finishes with tints and reflections that range from gold to bronze to rust. The finish has a segmented pattern that appears as a rich burnt and brazen bamboo.', 'N/A', '21', 'Discontinued', '2007/06/21', 'G-39_ad.jpg', 'G-39_ct_t.jpg', 'G-39_ct_m.jpg', 'G-39_ct.jpg'),
(53, '', 'Plata', 'PLATA is a silver backed moulding rising to a crest that transitions to a gentle scoop that is finished in fine grained tones of rich silver that reflect the delicate patina of the ages. To create an elegant presentation for sophisticated works of art, these mouldings are available in three shades of combed silver from light to dark brown.', 'G-45', '4', 'Gold & Silver', '2007/08/25', 'G-45_ad.jpg', 'G-45_ct_t.jpg', 'G-45_ct_m.jpg', 'G-45_ct.jpg'),
(54, '', 'Abacus', 'ABACUS reminds one of the Old Silk Road, and to touch the lip and feel the undulating pattern is to know Abacus. The dark stained lip is gently rubbed and polished to reveal the rich and glorious Chinese red under coat. This is truly an entree to a cultural experience.', 'N/A', '21', 'Discontinued', '2007/08/25', 'G-49_ad.jpg', 'G-49_ct_t.jpg', 'G-49_ct_m.jpg', 'G-49_ct.jpg'),
(60, '', 'Bijou', 'This is a delicate collection of finely crafted mouldings that exhibit the sensitive workmanship of the true artisan.', 'N/A', '21', 'Discontinued', '2007/08/27', 'G-63_ad.jpg', 'G-63_ct_t.jpg', 'G-63_ct_m.jpg', 'G-63_ct.jpg'),
(61, '', 'Matt Black', 'Small contemporary matt black mouldings with gold foil accents. These mouldings have been made with extra depth to help make your fitting job easier.', 'H-1', '5', 'Matt Black', '2007/06/21', 'H-1_ad.jpg', 'H-1_ct_t.jpg', 'H-1_ct_m.jpg', 'H-1_ct.jpg'),
(62, '', 'Black 06', 'This 2006 series addition to our popular Matt Black line continues in the tradition of elegantly stated contemporary profiles to meet the needs of today\\\\\\\'s emerging art market.', 'H-3', '5', 'Matt Black', '2007/06/21', 'H-3_ad.jpg', 'H-3_ct_t.jpg', 'H-3_ct_m.jpg', 'H-3_ct.jpg'),
(63, '', 'Matt Black', 'Affordable elegance with the quality you demand. The \\\\\\\"Studio Look\\\\\\\" your clients desire, in matt black on a gesso base. Nine proven profiles designed to compliment many artistic styles. Show these mouldings and watch your profits soar.', 'H-5', '5', 'Matt Black', '2007/06/21', 'H-5_ad.jpg', 'H_5_ct_s.jpg', 'H_5_ct_m.jpg', 'H_5_ct.jpg'),
(64, '', 'Magnificent 7', 'A natural complement to our original elegant matt black line. The deep profiles of the Magnificent 7 will give you the style options you require, with the same Studio look and quality you\\\\\\\'ve come to recognize.', 'H-9', '5', 'Matt Black', '2007/06/21', 'H-9_ad.jpg', 'H_9_ct_s.jpg', 'H_9_ct_m.jpg', 'H_9_ct.jpg'),
(66, '', 'MVP Collection', 'The new MVP Collection combines the quality and contemporary style you\\\\\\\'ve come to expect from Studio Moulding. Nine additional profiles in a quality matt black finish.', 'H-13', '5', 'Matt Black', '2007/06/21', 'H-13_ad.jpg', 'H_13_ct_s_1.jpg', 'H_13_ct_m_1.jpg', 'H_13_ct_1.jpg'),
(68, '', 'Omni', 'The lip of this moulding cascades inward to meet the mats or liners of your choice. It is this finely textured metallic lip that directs the observers eye into the artwork. Omni is available in three lip finishes and three profile sizes.', 'H-17', '5', 'Matt Black', '2007/06/21', 'H-17_ad.jpg', 'H-17_ct_t.jpg', 'H-17_ct_m.jpg', 'H-17_ct.jpg'),
(98, '', 'Pagoda', '', 'N/A', '21', 'Discontinued', '2003/03/01', 'noimage.jpg', 'X_1_ct_t.jpg', 'X_1_ct_m.jpg', 'X_1_ct.jpg'),
(75, '', 'LATTA', '', 'N/A', '21', 'Discontinued', '2007/06/26', 'G-47_ad.jpg', 'G-47_ct_t.jpg', 'G-47_ct_m.jpg', 'G-47_ct.jpg'),
(107, '', 'Mezzo', '', 'N/A', '21', 'Discontinued', '2009/10/14', 'E_29_ad.jpg', 'E_29_ct_s.jpg', 'E_29_ct_m.jpg', 'E_29_ct.jpg'),
(80, '', 'Black 07', '', 'H-7', '5', 'Matt Black', '2007/09/12', 'H-7_ad.jpg', 'H-7_ct_t.jpg', 'H-7_ct_m.jpg', 'H-7_ct.jpg'),
(81, '', 'Gray', 'Indulge yourself in the bold designs and distinctive angular surfaces of...GRAY. Feel the strength and creative versatility from a moulding with the intent to inspire.', 'H-21', '12', 'Matt Gray', '2007/09/14', 'H-21_ad.jpg', 'H_21_ct_s.jpg', 'H_21_ct_m.jpg', 'H_21_ct.jpg'),
(82, '', 'Gilt', 'Traditional in a contemporary look. Embracing art with the reflective edge of gold and silver.', 'G-65', '4', 'Gold & Silver', '2007/09/13', 'G_65_ad.jpg', 'G-65_ct_t.jpg', 'G-65_ct_m.jpg', 'G-65_ct.jpg'),
(86, '', 'Discontinued', 'ALL DISCONTINUED ITEMS', 'N/A', '21', 'Discontinued', '2000/01/01', 'X-1_ad.jpg', 'X_1_ct_s.jpg', 'X_1_ct_m_1.jpg', 'X_1_ct_1.jpg'),
(87, '', 'Plume', 'A stunning array of colors is appleid to \\\"Bubinga\\\" wood and veneered to New Zealand finger-joined pine. Tha stained finish creaes beautiful contrast when applied to the veneer.', 'E-19', '3', 'Veneer', '2008/02/28', 'NA_2_ad.jpg', 'E_19_ct_s.jpg', 'E_19_ct_m.jpg', 'E_19_ct.jpg'),
(85, '', 'Aria II', 'Aria II brings an elegance and sophistication in two sizes that are finished in a velvety hand texture of gold and silver. These bautiful mouldings are and addition to the popular \"Aria\" collection.', 'G-3', '4', 'Gold & Silver', '2007/08/26', 'G-3_ad.jpg', 'G_3_ct_s.jpg', 'G_3_ct_m.jpg', 'G_3_ct.jpg'),
(102, '', 'D Orme', '3 profiles in Elm veneer with 5 finishes and matching fillets.', 'E-25', '3', 'Veneer', '2008/10/01', 'E_25_ad.jpg', 'E_25_ct_s.jpg', 'E_25_ct_m.jpg', 'E_25_ct.jpg'),
(90, '', 'Lasso', 'A slightly distressed, furniture quality finish moulding. This versatile style moulding is perfect for southwestern art, old world prints, botanicals, portraits and various styles of mirrors.', 'N/A', '21', 'Discontinued', '2008/02/31', 'NA_5_ad.jpg', 'A_35_ct_s.jpg', 'A_35_ct_m.jpg', 'A_35_ct.jpg'),
(101, '', 'D Orme', '3 PROFILES WITH ELM VENEER IN 5 FINISHES AND MATCHING FILLETS', 'E-23', '3', 'Veneer', '2008/10/01', 'E_23_ad.jpg', 'E_23_ct_s.jpg', 'E_23_ct_m.jpg', 'E_23_ct.jpg'),
(91, '', 'Miore', 'Black is black, it\'s lacquer. This new collection is available in 9 profiles ranging in size from 3/4\" to 2 9/16\". This beautiful lacquer used for  \"Miore\" is high gloss polyurethane that reduces scratches and imperfections.', 'D-3', '2', 'Lacquer', '2008/03/01', 'NA_6_ad.jpg', 'D_3_ct_s.jpg', 'D_3_ct_m.jpg', 'D_3_ct.jpg'),
(100, '', 'Madera', 'A collection of faux-wood mouldings in the popular colors and profiles.', 'A-41', '1', 'Natural Wood', '2008/06/01', 'noimage.jpg', 'A_41_ct_s.jpg', 'A_41_ct_m.jpg', 'A_41_ct.jpg'),
(92, '', 'Olea', 'An authentic natural wood veneer with distressed sides. With coffee, pecan, cherry, taupe and gray colors, the possibilities are endless.', 'E-15', '3', 'Veneer', '2008/03/03', 'NA_7_ad.jpg', 'E_15_ct_s.jpg', 'E_15_ct_m.jpg', 'E_15_ct.jpg'),
(95, '', 'Olea', 'An authentic natural wood veneer with distressed sides. With coffee, pecan, cherry and gray colors, the possibilities are endless.', 'E-17', '3', 'Veneer', '2008/03/03', 'E_17_ad.jpg', 'E_17_ct_s.jpg', 'E_17_ct_m.jpg', 'E_17_ct.jpg'),
(99, '', 'Olea', '3rd in a series of authentic natural wood veneer with distressed sides. Available in coffee, pecan, cherry, taupe and gray colors.', 'E-21', '3', 'Veneer', '2008/06/30', 'noimage.jpg', 'E_21_ct_s_1.jpg', 'E_21_ct_m_2.jpg', 'E_21_ct_1.jpg'),
(97, '', 'Tropic', 'The look of Bamboo in three colors; Natural, Walnut & Black. Available in 2 sizes.', 'N/A', '21', 'Discontinued', '2008/05/23', 'noimage.jpg', 'A_39_ct_s.jpg', 'A_39_ct_m_1.jpg', 'A_39_ct.jpg'),
(94, '', 'Bubinga', 'Traditional profiles with their rich dark veneer and gold compo trim make these mouldings a perfect choice for any piece that requires the look of fine old world framing.', 'N/A', '21', 'Discontinued', '1995/08/01', 'noimage.jpg', 'NA_9_ct_s_1.jpg', 'NA_9_ct_m_1.jpg', 'NA_9_ct.jpg'),
(105, '', 'Madera', 'A collection of faux-wood mouldings in the popular colors and profiles.', 'A-43', '1', 'Natural Wood', '2009/03/13', 'noimage.jpg', 'A_43_ct_s.jpg', 'A_43_ct_m.jpg', 'A_43_ct.jpg'),
(106, '', 'EON', 'A thing of beauty will bring joy to the heart each time you cast your eyes upon it. Enjoy these magnificent mouldings created in Gold and Silver accenting the rich Birdâ€™s Eye Maple veneer. EON will be available for a very, very long time.', 'N/A', '21', 'Discontinued', '2010/02/16', 'E_27_ad.jpg', 'E_27_ct_s.jpg', 'E_27_ct_m.jpg', 'E_27_ct.jpg'),
(118, '', 'Adagio II', 'A fine foil finish and sophisticated profile that always looks well in refined and cultured company. Adagio is an invitation to a dance in slow measured movements to balance the finest of artwork.', 'A-67', '1', 'Natural Wood', '11-3-2011', 'noimage.jpg', 'A_67_ct_t.jpg', 'A_67_ct_m.jpg', 'A_67_ct.jpg'),
(111, '', 'Matt Black', 'Four new profiles are a welcome addition to Studio Mouldingâ€™s classic and contemporary Matt Black line.  A perfect canvas floater, a simple design for a sleek gallery look, and versatile shadow boxes ideal for many uses.  Studio stays committed to offering great quality, affordability and style.', 'H-27', '5', 'Matt Black', '2010/10/19', 'noimage.jpg', 'H_27_ct_t.jpg', 'H_27_ct_m.jpg', 'H_27_ct.jpg'),
(112, '', 'FORTE', 'Three contemporary profiles, with four rich finishes, FORTE gives the elegant look of a maple finish at an affordable price. The film process ensures the durability and consistency of the moulding while providing a beautiful look to all of your art.', 'A-59', '1', 'Natural Wood', '2011/02/07', 'A_59_ad.jpg', 'A_59_ct_t.jpg', 'A_59_ct_m.jpg', 'A_59_ct.jpg'),
(113, '', 'FORTE', 'Three contemporary profiles, with four rich finishes, FORTE gives the elegant look of a maple finish at an affordable price. The film process ensures the durability and consistency of the moulding while providing a beautiful look to all of your art.', 'A-61', '1', 'Natural Wood', '2011/02/07', 'A_61_ad.jpg', 'A_61_ct_t.jpg', 'A_61_ct_m.jpg', 'A_61_ct.jpg'),
(114, '', 'Ethos', 'Understated yet beautiful, ETHOS is available in three simple profiles. The classic clear maple veneer finish is the perfect accompaniment to a wide variety of art, creating a timeless look.', 'E-31A', '3', 'Veneer', '2017/08/04', 'noimage.jpg', 'E_31A_ct_s_1.jpg', 'E_31A_ct_m_1.jpg', 'E_31A_ct.jpg'),
(115, '', 'B&B II', 'Six profiles are a welcomed addition to our bold and beautiful B&B line.\r\nThe natural grain finish is enhanced by the rich sable brown stain.  \r\nBasic with a contemporary edge, B&B II will give a modern touch to \r\na variety of artwork.', 'A-53', '1', 'Natural Wood', '2011/08/03', 'A_53_ad.jpg', 'A_53_ct_t.jpg', 'A_53_ct_m.jpg', 'A_53_ct.jpg'),
(116, '', 'KOTA II', 'Unadorned, and richly textured, Kota is an updated version of some of our basic profiles.  The natural grainy finishes and lush tones accent the simplicity of these ideal designs.  Available in a variety of popular colors, Kota will enhance a wide array of art with an understated touch.\r\n', 'A-63', '1', 'Natural Wood', '2011/10/13', 'A_63_ad.jpg', 'A_63_ct_t.jpg', 'A_63_ct_m.jpg', 'A_63_ct.jpg'),
(117, '', 'KOTA', 'Unadorned, and richly textured, Kota is an updated version of some of our basic profiles.  The natural grainy finishes and lush tones accent the simplicity of these ideal designs.  Available in a variety of popular colors, Kota will enhance a wide array of art with an understated touch.\r\n', 'A-65', '1', 'Natural Wood', '2011/10/13', 'A_65_ad.jpg', 'A_65_ct_t.jpg', 'A_65_ct_m.jpg', 'A_65_ct.jpg'),
(119, '', 'Avant', 'Avant combines a traditional profile with a chic twist. The deeply blackened plum tones add a rich feel to this stylish moulding.  \r\nElegant and sophisticated, Avant will compliment a wide variety \r\nof your art.', 'B-1', '22', 'MÃ©lange', '2012/02/18', 'B_1_ad.jpg', 'B_1_ct_t.jpg', 'B_1_ct_m.jpg', 'B_1_ct.jpg'),
(121, '', 'Opus', 'Opus pairs the simplicity of Studioâ€™s timeless matt black line with an edgy metallic accent, adding a unique touch to any work of art.  The bold lines give a modern flair to these simple and classic designs.', 'H-29', '5', 'Matt Black', '2012/08/22', 'H_29_ad.jpg', 'H_29_ct_t.jpg', 'H_29_ct_m.jpg', 'H_29_ct.jpg'),
(123, '', 'Regia', 'If you only had space for a limited number of corner samples, you would have to select the unique designs of the REGIA series.  These two-tone gold and silver finish mouldings gives you a contemporary look and will provide you with a truly custom presentation. \r\n', 'G-51A', '4', 'Gold & Silver', '10-22-2012', 'noimage.jpg', 'G_51A_ct_t.jpg', 'G_51A_ct_m.jpg', 'G_51A_ct.jpg'),
(124, '', 'SABI', 'Simple yet bold, these distinct mouldings are richly textured in gorgeous \r\nearthy tones.  Available in two sizes with a matching fillet, Sabi adds \r\nthe perfect harmony to a multitude of art.', 'B-3', '22', 'MÃ©lange', '2013/03/04', 'B_3_ad.jpg', 'B_3_ct_t.jpg', 'B_3_ct_m.jpg', 'B_3_ct.jpg'),
(125, '', 'Amber', 'Beautifully antiqued, these classic designs have the perfect warm gold \r\nand copper finish.  Available in three sizes, Amber will add a touch \r\nof refinement to your timeless pieces.', 'N/A', '21', 'Discontinued', '2013/03/04', 'G_69_ad.jpg', 'G_69_ct_t.jpg', 'G_69_ct_m.jpg', 'G_69_ct.jpg'),
(126, '', 'KOTA III', 'Unadorned, and richly textured, Kota is an updated version of some of our basic profiles.  The natural grainy finishes and lush tones accent the simplicity of these ideal designs.  Available in a variety of popular colors, Kota will enhance a wide array of art with an understated touch.', 'A-71', '1', 'Natural Wood', '2013/03/04', 'noimage.jpg', 'A_71_ct_t.jpg', 'A_71_ct_m.jpg', 'A_71_ct.jpg'),
(127, '', 'ONYX', 'Effortlessly chic, ONYX gives a bold edge to some of our most popular profiles.\r\nAs versatile as a matte black moulding, the unique semigloss finish adds a distinct richness to any work of art.  Durable and sleek, ONYX is the perfect choice when you want something classic and sophisticated. ', 'K-1', '23', 'Studio Black', '2014/1-15', 'noimage.jpg', 'K_1_ct_t.jpg', 'K_1_ct_m.jpg', 'K_1_ct.jpg'),
(128, '', 'Asti', 'Two luxurious finishes in the perfect shades of soft gold and silver, ASTI will enhance your art and add that special touch of class. Available in four timeless profiles and sizes.', 'G-23', '4', 'Gold & Silver', '2014/1/15', 'noimage.jpg', 'G_23_ct_t.jpg', 'G_23_ct_m.jpg', 'G_23_ct.jpg'),
(129, '', 'ST Floater', 'With a versatile profile, Studio Floaters are the perfect combination of function and style.  Available in the soft champagne gold and silver of our Asti line, the beautifully hand-leafed gold and silver, the bold semi-gloss Studio Black of ONYX and the basic matte black and matte white.  These floaters will be perfect for a wide variety of art.\r\n', 'L-1', '24', 'Studio Floater', '2014/7/16', 'noimage.jpg', 'L_1_ct_s_2.jpg', 'L_1_ct_m_4.jpg', 'L_1_ct_1.jpg'),
(131, '', 'Eleve', 'A textured metallic finish gives Eleve a richly unique look.  Available in \r\nthree striking tones, two classic profiles and matching fillets, Eleve will \r\nadd a distinctive touch to an array of artwork.', 'G-7', '4', 'Gold & Silver', '2014/10/28', 'noimage.jpg', 'G_7_ct_t.jpg', 'G_7_ct_m_2.jpg', 'G_7_ct_2.jpg'),
(132, '', 'Natural Wood', '', 'A-15A', '1', 'Natural Woods', '', 'noimage.jpg', 'A_15A_ct_s_2.jpg', 'A_15A_ct_m_3.jpg', 'A_15A_ct.jpg'),
(133, '', 'Legato', '', 'A-21A', '1', 'Natural Wood', '2015/05/03', 'noimage.jpg', 'A_22A_ct_t.jpg', 'A_22A_ct_m.jpg', 'A_22A_ct.jpg'),
(134, '', 'Eloquence', '', 'N/A', '21', 'Discontinued', '', 'noimage.jpg', 'A_47A_ct_t.jpg', 'A_47A_ct_m.jpg', 'A_47A_ct.jpg'),
(135, '', 'Etude', '', 'A-69A', '1', 'Natural Wood', '2015/05/03', 'noimage.jpg', 'A_69A_ct_t.jpg', 'A_69A_ct_m.jpg', 'A_69A_ct.jpg'),
(136, '', 'Prima', '', 'D-5A', '2', 'Lacquer', '2015/05/03', 'noimage.jpg', 'D_5A_ct_t.jpg', 'D_5A_ct_m.jpg', 'D_5A_ct.jpg'),
(137, '', 'Virtu ', '', 'G-19A', '4', 'Gold & Silver', '', 'noimage.jpg', 'G_19A_ct_t.jpg', 'G_19A_ct_m.jpg', 'G_19A_ct.jpg'),
(138, '', 'Sterling', '', 'G-1A', '4', 'Gold & Silver', '', 'noimage.jpg', 'G_1A_ct_s_1.jpg', 'G_1A_ct_m_2.jpg', 'G_1A_ct.jpg'),
(139, '', 'Aegis', '', 'G-31A', '4', 'Gold & Silver', '', 'noimage.jpg', 'G_31A_ct_t.jpg', 'G_31A_ct_m.jpg', 'G_31A_ct.jpg'),
(140, '', 'Genji ', '', 'G-35A', '4', 'Gold & Silver', '', 'noimage.jpg', 'G_35A_ct_s_1.jpg', 'G_35A_ct_m_2.jpg', 'G_35A_ct.jpg'),
(141, '', 'Array ', '', 'G-37A', '4', 'Gold & Silver', '', 'noimage.jpg', 'G_37A_ct_t.jpg', 'G_37A_ct_m.jpg', 'G_37A_ct.jpg'),
(142, '', 'Liso', '', 'G-67A', '4', 'Gold & Silver', '2015/05/03', 'noimage.jpg', 'G_67A_ct_t.jpg', 'G_67A_ct_m.jpg', 'G_67A_ct.jpg'),
(143, '', 'Matt Black', '', 'H-25A', '5', 'Matt Black', '', 'noimage.jpg', 'H_25A_ct_s_1.jpg', 'H_25A_ct_m_2.jpg', 'H_25A_ct.jpg'),
(144, '', 'Matt White', '', 'H-33', '6', 'Matt White', '2015/05/03', 'noimage.jpg', 'H_33_ct_s_2.jpg', 'H_33_ct_m_3.jpg', 'H_33_ct.jpg'),
(148, '', 'Fillets', 'Give yourself a creative edge with this wide assortment of fillets. A selection of traditional compo fillets in Gold & Silver finishes. Beads, Rope & Scallop styles.', 'J-1A', '25', 'Fillets', '2015/05/24', 'noimage.jpg', 'J_1A_ct_s_4.jpg', 'J_1A_ct_m_5.jpg', 'J_1A_ct.jpg'),
(149, '', 'Matt Black', '', 'H-11', '5', 'Matt Black', '2015/08/03', 'noimage.jpg', 'H_11_ct_s_1.jpg', 'H_11_ct_m_1.jpg', 'H_11_ct_1.jpg'),
(150, '', 'Dune', '', 'A-1', '1', 'Natural Wood', '2015/08/03', 'noimage.jpg', 'A_1_ct_s.jpg', 'A_1_ct_m_1.jpg', 'A_1_ct.jpg'),
(151, '', 'Elan', 'Touch these beautifully finished mouldings and you will know the magical spirit that lives in their carefully crafted contemporary designs. This is Elan, the vital force of life to enhance your creative endeavors.', 'A-31A', '1', 'Natural Wood', '2015/08/07', 'noimage.jpg', 'A_31A_ct_s.jpg', 'A_31A_ct_m.jpg', 'A_31A_ct.jpg'),
(152, '', 'ST Floater', '', 'L-3', '24', 'Studio Floater', '2016/02/26', 'noimage.jpg', 'L_3_ct_s_1.jpg', 'L_3_ct_m_1.jpg', 'L_3_ct.jpg'),
(153, '', 'Matt White', '', 'H-31A', '6', 'Matt White', '2017/08/04', 'noimage.jpg', 'H_31A_ct_s.jpg', 'H_31A_ct_m.jpg', 'H_31A_ct.jpg'),
(159, '', 'Liso II', '', 'G-71', '4', 'Gold & Silver', '2016/10/10', 'noimage.jpg', 'G_71_ct_s_2.jpg', 'G_71_ct_m_2.jpg', 'G_71_ct_1.jpg'),
(156, '', 'Liso III', '', 'G-73', '4', 'Gold & Silver', '2017/04/01', 'noimage.jpg', 'G_73_ct_s.jpg', 'G_73_ct_m.jpg', 'G_73_ct.jpg'),
(157, '', 'Matt Black', '', 'H-15', '5', 'Matt Black', '2017/08/04', 'noimage.jpg', 'H_15_ct_s.jpg', 'H_15_ct_m.jpg', 'H_15_ct.jpg'),
(158, '', 'Floater', '', 'L-5', '24', 'Floater', '2017/08/04', 'noimage.jpg', 'L_5_ct_s_2.jpg', 'L_5_ct_m_2.jpg', 'L_5_ct.jpg'),
(160, '', 'Sierra', '', 'A-19', '1', 'Natural Wood', '2018/02/05', 'noimage.jpg', 'A_19_ct_s_1.jpg', 'A_19_ct_m_1.jpg', 'A_19_ct_1.jpg'),
(161, '', 'Liso IV', '', 'G-75', '4', 'Gold & Silver', '2018/07/18', 'noimage.jpg', 'G_75_ct_s.jpg', 'G_75_ct_m.jpg', 'G_75_ct.jpg'),
(162, '', 'Liso V', '', 'G-77', '4', 'Gold & Silver', '2019/02/19', 'noimage.jpg', 'G_77_ct_s.jpg', 'G_77_ct_m.jpg', 'G_77_ct.jpg'),
(163, '', 'Lyra', '', 'B-5', '1', 'Natural Woods', '2019/02/19', 'B_5_ad.jpg', 'B_5_ct_s.jpg', 'B_5_ct_m.jpg', 'B_5_ct.jpg'),
(164, '', 'Armour', '', 'G-29', '4', 'Gold & Silver', '2019/05/01', 'noimage.jpg', 'G_29_ct_s.jpg', 'G_29_ct_m.jpg', 'G_29_ct.jpg'),
(165, '', 'Sierra Floaters', '', 'A-21', '1', 'Natural Woods', '2019/08/05', 'noimage.jpg', 'A_21_ct_s.jpg', 'A_21_ct_m.jpg', 'A_21_ct.jpg'),
(166, '', 'Willow', '', 'A-73', '1', 'Natural Woods', '2020/03/23', 'A_73_ad_4.jpg', 'A_73_ct_s_2.jpg', 'A_73_ct_m_2.jpg', 'A_73_ct_2.jpg'),
(167, '', 'Sierra II', '', 'A-19A', '1', 'Natural Woods', '2020/06/06', 'A_19A_ad.jpg', 'A_19A_ct_s.jpg', 'A_19A_ct_m.jpg', 'A_19A_ct.jpg'),
(168, '', 'Liso VI', '', 'G-79', '4', 'Gold & Silver', '2020/09/29', 'G_79_ad.jpg', 'G_79_ct_s_3.jpg', 'G_79_ct_m_3.jpg', 'G_79_ct.jpg'),
(169, '', 'Liso Fillet', '', 'G-81', '4', 'Gold & Silver', '2020/10/11', 'G_79A_ad.jpg', 'G_79A_ct_s.jpg', 'G_79A_ct_m.jpg', 'G_79A_ct.jpg'),
(170, '', 'SIERRA III', '', 'A-33', '1', 'Natural Woods', '210201', 'A_33_ad.jpg', 'A_33_ct_s_1.jpg', 'A_33_ct_m_1.jpg', 'A_33_ct_1.jpg'),
(171, '', 'Chalet', '', 'A-79', '1', 'Natural Woods', '2021/05/12', 'A_79_ad.jpg', 'A_79_ct_t.jpg', 'A_79_ct_m.jpg', 'A_79_ct.jpg'),
(177, '', 'Poems I', '', 'H-35', '7', 'Matt Color', '2001/01/01', 'H_35_ad.jpg', 'H_35_ct_s_2.jpg', 'H_35_ct_m_3.jpg', 'H_35_ct_1.jpg'),
(176, '', 'Poems II', '', 'H-37', '7', 'Matt Color', '2021/07/09', 'H_37_ad_3.jpg', 'H_37_ct_s.jpg', 'H_37_ct_m.jpg', 'H_37_ct.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
