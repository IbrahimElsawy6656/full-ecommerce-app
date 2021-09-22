-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2021 at 11:10 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `full-stack`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `cart_item_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`cart_item_id`, `user_id`, `product_id`, `quantity`, `price`, `time_added`) VALUES
(107, 34, 711160940, 1, 30, '2021-09-12 09:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(2, 'playstation 4'),
(3, 'eye cream'),
(4, 'routers'),
(5, 'shaver panasonic'),
(6, 'coffee grinder'),
(7, 'high chairs'),
(8, 'face cream'),
(9, 'Brett Favre NY Titans jersey blue'),
(10, 'aroma diffuser'),
(11, 'Bluray Hobbit extended'),
(12, 'white plain dinner set'),
(13, 'double stroller'),
(14, 'Vanilla Scented Perfumes'),
(15, 'wireless mouse'),
(16, 'spiderman'),
(17, 'bedspreads'),
(18, 'kitchen rugs'),
(19, 'LED monitor'),
(20, 'PS2 controller USB'),
(21, 'extenal hardisk 500 gb'),
(22, 'laptop lenovo'),
(23, 'microwave'),
(24, 'wall clocks'),
(25, 'yankee candle'),
(26, 'cleaning robot'),
(27, 'cuisinart coffee maker'),
(28, 'kobo e-reader'),
(29, 'videogames ps4'),
(30, 'wii microphone'),
(31, 'storage ottoman'),
(32, 'Wii Gamepad'),
(33, 'Seagate 2TB hard disk'),
(34, 'wine rack'),
(35, 'fitbit charge'),
(36, 'acoustic guitar clamp'),
(37, 'pressure cooker'),
(38, 'teenage mutant ninja turtles'),
(39, 'Bird seed feeder'),
(40, 'zippo hand warmer'),
(41, 'coffee for nespresso'),
(42, 'stick vacuum'),
(43, '16 gb memory card'),
(44, 'samsung galaxy phone case'),
(45, 'Wired Xbox 360 controller'),
(46, 'pots and pans set'),
(47, 'screen protector samsung'),
(48, 'keurig coffee maker'),
(49, 'electric griddle'),
(50, 'bluetooth speaker'),
(51, 'Single serve coffee maker'),
(52, 'digital camera'),
(53, 'Phillips coffee maker'),
(54, 'cast iron skillet'),
(55, 'Assassinss Creed'),
(56, 'playstation vita system'),
(57, 'aveeno shampoo'),
(58, 'road bicycle'),
(59, 'iphone 5'),
(60, 'notebook paper'),
(61, 'an extremely goofy movie'),
(62, 'shotgun shell pouch'),
(63, 'thomas the train'),
(64, 'ps3 wireless controller'),
(65, 'full tang knife'),
(66, 'gucci guilty intense women'),
(67, 'rubbermaid turntables'),
(68, 'dean guitar'),
(69, 'wreck it ralph'),
(70, 'speck iphone 5 case'),
(71, 'zippo'),
(72, 'steel necklace'),
(73, 'micro usb to hdmi'),
(74, 'galaxy note 3'),
(75, 'seiko monster'),
(76, 'lego star wars'),
(77, 'kitchenaid glass bowl'),
(78, 'projector'),
(79, 'candle lantern'),
(80, 'polaroid camera'),
(81, 'wii'),
(82, 'plantronics corded headset'),
(83, 'cross strap backpack'),
(84, 'polar heart rate monitor'),
(85, 'dual headset splitter'),
(86, 'flea and tick control for dogs'),
(87, 'candle chandelier'),
(88, 'hello kitty'),
(89, 'tv'),
(90, 'duck dynasty'),
(91, 'batman'),
(92, 'soda stream'),
(93, 'rice cooker'),
(94, 'toaster oven'),
(95, 'kitchenaid mixer'),
(96, 'gold dress'),
(97, 'tote bag'),
(98, 'crocs'),
(99, 'yellow dress'),
(100, 'Levis'),
(101, 'Rechargable batteries'),
(102, 'gold toe socks'),
(103, 'pittsburgh pirates'),
(104, 'nike womens'),
(105, 'toddler sandals'),
(106, 'Dc shoes black'),
(107, 'rain boot'),
(108, 'drawer organizer'),
(109, 'headphones earbuds'),
(110, 'cowboy boots'),
(111, 'memory foam mattress topper'),
(112, 'workout clothes for women'),
(113, 'nike shoes'),
(114, 'ecco shoes'),
(115, 'portable hard drive'),
(116, 'bike lock'),
(117, 'martial art headgear'),
(118, 'hawaiian shirt'),
(119, 'mens dress shirts'),
(120, 'Watch women fossil'),
(121, 'silver jeans'),
(122, 'queen comforter sets'),
(123, 'green bay packers'),
(124, 'table runner'),
(125, 'skechers womens shoes'),
(126, 'khaki pants'),
(127, 'duffle bag'),
(128, 'memory foam pillow'),
(129, 'yoga pants'),
(130, 'sleeping bags'),
(131, 'silver necklace'),
(132, 'white jeans'),
(133, 'reusable straws'),
(134, 'patio umbrellas'),
(135, 'wall mirrors'),
(136, 'solar battery charger'),
(137, 'yoga mat'),
(138, 'candle holders'),
(139, 'rachel ray cookware'),
(140, 'converse high tops'),
(141, 'Sunglasses polarized'),
(142, 'green laser pointer'),
(143, 'electric blanket'),
(144, 'baseball cleats'),
(145, 'button down shirt'),
(146, 'high heels shoes'),
(147, 'chocolate molds'),
(148, 'white dress'),
(149, 'Power surge protector'),
(150, 'flannel sheets'),
(151, 'bike for children'),
(152, 'macbook case 13 case'),
(153, 'macbook case 13 case\"'),
(154, 'toy trucks'),
(155, 'Cocoa Butter'),
(156, 'blendtec'),
(157, 'levis 505'),
(158, 'hair accessories'),
(159, 'k cups'),
(160, 'sports bra'),
(161, 'light bulb'),
(162, 'dress shirts'),
(163, 'yankees'),
(164, 'cat grass'),
(165, 'patio tables'),
(166, 'cargo shorts'),
(167, 'boyfriend jeans'),
(168, 'rain jacket'),
(169, 'dish towels'),
(170, 'table clock'),
(171, 'nutri system'),
(172, 'baseball photo frame'),
(173, 'gym gloves'),
(174, 'knife victorinox'),
(175, 'business badge holder'),
(176, 'car window sticker'),
(177, 'blue mini fridge'),
(178, 'harley-davidson'),
(179, 'hat rack'),
(180, 'leather men\'s briefcase'),
(181, 'anime necklace'),
(182, 'glitter vials'),
(183, 'long prom dress'),
(184, 'multiple phone charger'),
(185, 'girls halloween costumes'),
(186, 'ipad 2 heavy duty case'),
(187, 'ps3 memory card'),
(188, 'mens leather shirt'),
(189, 'apple iphone 32 gb otterbox'),
(190, 'iphone 4 case'),
(191, 'kitchen faucet'),
(192, 'ray ban sunglasses'),
(193, 'dollhouse bathtub'),
(194, 'car jump starter'),
(195, 'silicone toe separators'),
(196, 'coffee cup'),
(197, 'solar charger'),
(198, 'men earrings diamond squared'),
(199, 'tablet accessories'),
(200, 'flower bulbs'),
(201, 'metal lathe'),
(202, 'storage drawers'),
(203, 'three wheeled bike'),
(204, 'bridal shower decorations'),
(205, 'aqua shoes'),
(206, 'golf clubs'),
(207, '8 ounce mason jars'),
(208, 'punch bowls'),
(209, 'mac book air cover'),
(210, 'led christmas lights'),
(211, 'neck pillow'),
(212, 'outdoor table cover'),
(213, 'barbie'),
(214, 'legos'),
(215, 'pyrex'),
(216, 'infinity scarf'),
(217, 'robe'),
(218, 'waffle maker'),
(219, 'blender'),
(220, 'sweater dress'),
(221, 'snow boots'),
(222, 'samsonite'),
(223, 'samsonite\"'),
(224, 'dresses for women'),
(225, 'decorative pillows'),
(226, 'ice cream maker'),
(227, 'san francisco 49ers'),
(228, 'adidas pants'),
(229, 'lc lauren conrad dresses'),
(230, 'silver ring'),
(231, 'fifa 15'),
(232, 'adidas fragance'),
(233, 'vanity fair bras'),
(234, 'Nike Shox'),
(235, 'minecraft diamond sword'),
(236, 'nike flip flops'),
(237, 'Refrigirator'),
(238, 'beats headphones'),
(239, 'volcom short'),
(240, 'bluesky gel nail polish'),
(241, 'longboard pads'),
(242, 'werewolf costume'),
(243, 'polo bear sweater'),
(244, 'small brass bow'),
(245, 'oakley radar'),
(246, 'skeleton poster'),
(247, 'dr who lanyard'),
(248, 'hallmark wedding couple figurine'),
(249, 'fuji bike shirt'),
(250, 'ninja turtle socks'),
(251, 'hollister polo'),
(252, 'beer stein'),
(253, 'golf shoes'),
(254, 'over the knee snow boots'),
(255, 'vans backpack'),
(256, 'converse low top'),
(257, 'oakley polarized radar'),
(258, 'glass marbles'),
(259, 'pencil skirt'),
(260, 'Donut Shoppe K Cups'),
(261, 'deep fryers'),
(262, 'tupperware water bottle lime'),
(263, 'victoria\'s secret lace gown'),
(264, 'victoria secret pink shorts');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `promo_id` int(11) NOT NULL,
  `order_details` varchar(1000) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `promo_id`, `order_details`, `created`, `status`, `amount`) VALUES
(32, 34, 1, '[{\"product_id\":711160940,\"quantity\":1,\"price\":30},{\"product_id\":711160865,\"quantity\":1,\"price\":18}]', '2021-09-12 09:06:10', 'Not Confirmed', 48);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `imageURL` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `name`, `description`, `price`, `quantity`, `imageURL`) VALUES
(711160817, 96, 'Ignite Evenings by Carol Lin Women\'s Sequin Halter Gown', 'Ignite Evenings by Carol Lin Women\'s Sequin Halter Gown', 200, 40, 'http://ak1.ostkcdn.com/images/products/10017113/P17164138.jpg'),
(711160865, 97, 'Everest 16.5-inch 600 Denier Polyester Shopper Tote', 'With a small inner-zippered pocket, outer flat pocket and spacious zippered main compartment, this shopping tote is convenient and stylish. The sturdy tote is composed of 600 denier polyester and available in several colors.\n\nMaterial: 600 denier polyeste', 18, 40, 'http://ak1.ostkcdn.com/images/products/7706301/Everest-16.5-inch-600-Denier-Polyester-Shopper-Tote-P15113286A.jpg'),
(711160940, 98, 'Crocs Boy (Youth) \'Mammoth\' Synthetic Casual Shoes', 'An extensive line of brightly colored, sometimes wildly patterned, molded-resin clog-style sandals, Crocs are some of the most enjoyable outdoor-activity shoes imaginable. The lightweight, ergonomically designed shoes for men, women, and children mold the', 30, 40, 'http://ak1.ostkcdn.com/images/products/85/325/P16574434.jpg'),
(711160967, 99, 'Spense Women\'s Side-pleated Brooch Dress', 'Starburst pleating lends a flattering touch to this career dress by Spense. This everyday sheath dress also includes a large buckle brooch at the waist for a very sassy finish.\n\nColor options: Camel, citrine\nCasual dress style: Day to dinner\nFit: Missy\nTy', 43, 40, 'http://ak1.ostkcdn.com/images/products/9628228/P16814005.jpg'),
(711160990, 100, 'Levi\'s Men\'s 514 Grey Twill Soft Washed Slim-straight Jeans', 'With a soft-washed twill construction, these 514 jeans by Levi\'s give you a laid-back and comfortable style. These jeans feature a slim-straight fit at the legs and sit below the waist.', 40, 40, 'http://ak1.ostkcdn.com/images/products/9574438/P16763406.jpg'),
(711161040, 101, 'Agfa NiMH Rechargeable 2500mAh Batteries (4 Pack)', 'The AGFA APAA4 package includes 4 2500mAh AA rechargeable batteries. They can be recharged up to 1,000 cycles and are 100 percent memory free.', 10, 40, 'http://ak1.ostkcdn.com/images/products/7785794/7785794/Agfa-NiMH-Rechargeable-2500mAh-Batteries-4-Pack-P15180094.jpg'),
(711161090, 102, 'Men\'s Gold Toe Fluffies (12 Pairs) White', 'A heavier gauge sock in a number of textures and colors. Perfect for dress-down Fridays. Featuring Dralonه¨ acrylic to wick away moisture and keep you comfortable. Also featuring stretch nylon to provide \"give\" and stretch for added comfort and it is text', 64, 40, 'http://ak1.ostkcdn.com/images/products/86/231/P16884057.jpg'),
(711161116, 103, 'MLB Pittsburgh Pirates Snuggle Bear', 'This Pittsburgh Pirates Snuggle Bear features a small, soft blanket attached to the bear making the perfect crib mate for your little fan. This officially licensed blanket has a team logo embroidered on the front.', 18, 40, 'http://ak1.ostkcdn.com/images/products/8962800/MLB-Pittsburgh-Pirates-Snuggle-Bear-P16172874.jpg'),
(711161140, 104, 'Nike Women\'s Luxe Rectangular Sunglasses (As Is Item)', 'These Nike Sunglasses are a lightweight oversize rectangular plastic frame that is designed to maximize comfort. The script logo and ombre color has a femine look that is both chic and sporty. Rxable.', 48, 40, 'http://ak1.ostkcdn.com/images/products/9977286/P90003216.jpg'),
(711161215, 105, 'Jelly Beans TOTORO Toddler\'s Girls Hot T-Strap Sandals', 'A rhinestone embellished t-strap makes this Jelly Beans sandal both feminine and fun. This TOTORO sandal features a cushioned footbed, side buckle closure, and a very durable outsole.', 28, 40, 'http://ak1.ostkcdn.com/images/products/9147939/Jelly-Beans-TOTORO-Toddlers-Girls-Hot-T-Strap-Sandals-P16328226.jpg'),
(711161226, 106, 'Men\'s DC Shoes Bridge Black Denim', 'ITEM#: 16421261\nThe Bridge is a low profile skate shoe that features metal lace eyelets. Features a vulcanized rubber construction for board feel and sole flex, and the outsole uses an abrasion-resistant sticky rubber.\nFit: True to Size', 35, 40, 'http://ak1.ostkcdn.com/images/products/84/856/P16421261.jpg'),
(711161251, 107, 'Easos Geal Women\'s Lace-up Jelly Ankle Boots', 'Practical in the rain or on a sunny day, these jelly boots from Easos Geal make a real statement. These ankle boots are made with a lace-up front coupled with a grippy block heel.\n\nColor options: Beige, black, brown, white\nHeight: Ankle\nStyle: Lace-up\nMat', 30, 40, 'http://ak1.ostkcdn.com/images/products/9207206/P16378027.jpg'),
(711161293, 108, 'Seville Classics 5-piece Bamboo Drawer Organizer Boxes', 'Keep your drawer organized with Seville Classics bamboo drawer organizer boxes. Made of eco-friendly and renewable bamboo, each box is designed to fit snugly together, or you can use them separately to help clear the clutter around the kitchen, bathroom, ', 26, 40, 'http://ak1.ostkcdn.com/images/products/8182714/8182714/Seville-Classics-5-piece-Bamboo-Drawer-Organizer-Boxes-P15519538.jpg'),
(711161346, 109, 'Panasonic Earbud Headphones', 'Stereo - Blue - Mini-phone - Wired - 16 Ohm - 10 Hz - 24 kHz - Nickel Plated - Earbud - Binaural - In-ear - 3.61 ft Cable\n\nManufacturer: Panasonic\nManufacturer Part Number: RP-TCM125-A\nManufacturer Website Address: http://www.panasonic.com\nBrand Name: Pan', 15, 40, 'http://ak1.ostkcdn.com/images/products/8280595/Panasonic-Earbud-Headphones-P15601341.jpg'),
(711161371, 110, 'Fashion Focus Women\'s Western Style Mid-calf Boots', 'Strut in Western-inspired style with these mid-calf boots from Fashion Focus. These leatherette boots are designed with a low block heel, a round toecap, and studded details all along the shaft.', 48, 40, 'http://ak1.ostkcdn.com/images/products/9511405/P16690358.jpg'),
(711161423, 111, 'Serta Ultimate 4-inch Visco Memory Foam Mattress Topper', 'Enjoy a restful night\'s sleep with this hypoallergenic, antibacterial memory foam mattress topper from Serta. Constructed with high-density viscoelastic foam, this mattress topper will cradle your body and relieve pressure points to prevent tossing and tu', 200, 40, 'http://ak1.ostkcdn.com/images/products/1657609/P10031883.jpg'),
(711161434, 112, 'Hanes Women\'s Cool DRI V-neck T-shirt', 'Hanes\' fast wicking/fast drying Cool DRI V-neck outperforms the competition. Perfect when you\'re competing or when you want to ensure a cool, dry workout, the lightweight interlock fabric wicks sweat off the body and evaporates moisture quickly.', 13, 40, 'http://ak1.ostkcdn.com/images/products/9082835/Hanes-Womens-Cool-DRI-V-neck-T-shirt-P16273592.jpg'),
(711161484, 113, 'Nike Men\'s \'Jordan SC-3\' Leather Athletic Shoe', 'Not only does Nike stand supreme as perhaps the world\'s most widely recognized and respected brand of athletic shoes for men, women, boys, and girls, but it also offers an outstanding range of choices in style and sport. Whatever the model, style, or spor', 147, 40, 'http://ak1.ostkcdn.com/images/products/9685142/P16863606.jpg'),
(711161509, 114, 'Ecco Men\'s \'Bradley Long Laced\' Distressed Leather Athletic Shoe', 'Ecco footwear ranges from the seriously stylish to the casually hip. Whatever their style, all Ecco shoes are specifically designed in a revolutionary approach that fits the foot from heel to instep rather than the more conventional measurement across the', 87, 40, 'http://ak1.ostkcdn.com/images/products/9641564/P16825738.jpg'),
(711161551, 115, 'WD My Passport Ultra WDBPGC5000ATT-NESN 500 GB External Hard Drive', 'My Passportه¨ Ultra‰م¢ with USB 3.0 and high capacity features automatic and cloud backup; password protection and hardware encryption, 3-year limited warranty and protective soft pouch.\n\nSleek design with high capacity - Offering up to 2 TB in a compact ', 65, 40, 'http://ak1.ostkcdn.com/images/products/8250188/P15576493.jpg'),
(711161576, 116, 'BV Bike Buddy 5-foot Resettable Combination Cable Lock', 'The Bicycle Buddy 4-digit combination cable lock is easy to set and easy to use, making life very difficult for thieves. Set a combination that you won\'t ever forget and your bike will be safe from theft. The compact flexible coil can extend 5-feet to wra', 25, 40, 'http://ak1.ostkcdn.com/images/products/8861754/BV-Bike-Buddy-5-foot-Resettable-Combination-Cable-Lock-P16088881.jpg'),
(711161601, 117, 'Everlast Black MMA Headgear', 'ITEM#: 17157398\nProtect yourself from the competition with the Everlast MMA Headgear. Full chin and cheek padding including a molded face bar will protect your face from punches. An Everhide vinyl liner will provide a snug and comfortable fit.\n\nIncludes f', 36, 40, 'http://ak1.ostkcdn.com/images/products/10009228/P17157398.jpg'),
(711161608, 118, 'La Leela Likre Mens\' Blue Tropical Printed Beach Swim Camp Hawaiian Shirt', '', 28, 40, 'http://ak1.ostkcdn.com/images/products/10043370/P17188099.jpg'),
(711161683, 119, 'Brio Men\'s Black and Blue Print Dress Shirt with Faux Leather Detailing', 'Strike up a sleek, stylish look in this unique fashion shirt. Crafted with the finest materials and unparalleled style, this shirt is the perfect solution for work attire or just a casual night out.\n\nColor options: Black/ blue\nSleeves: Long sleeve\nNecklin', 63, 40, 'http://ak1.ostkcdn.com/images/products/9729972/P16903636.jpg'),
(711161708, 120, 'Fossil Women\'s ES3352 \'Decker\' Rose Goldtone Watch', 'The perfect combination of feminine style and versatility, the Decker watch from Fossil is crafted with a rose goldtone stainless steel case and matching bracelet. The bezel is adorned with sparling white crystal accents for just the right touch.', 116, 40, 'http://ak1.ostkcdn.com/images/products/9115967/P16301073.jpg'),
(711161734, 121, 'Reco Jeans Men\'s Olulu Straight Leg Jeans', 'The Olulu straight leg jeans from Reco Jeans feature a stylish faded thunder coloring in crisp blue. With a medium rise style, these men\'s pants also offer a construction of 60-percent recycled fibers.\n\nEstado: New York\nOpciones de colores: Thunder wash (', 43, 40, 'http://ak1.ostkcdn.com/images/products/5230760/65/424/Reco-Jeans-Mens-Olulu-Straight-Leg-Jeans-P13055398.jpg'),
(711161763, 122, 'Lorenzo Purple 8-piece Queen-size Comforter Set', 'ITEM#: 13041650\nFall into a floral dream with this luxurious Lorenzo comforter set. This comforter showcases a large-scale woven damask pattern in soft hues of purple with rich velvet accents. This eight-piece set includes the comforter, a pair of regular', 180, 40, 'http://ak1.ostkcdn.com/images/products/5213059/Lorenzo-Purple-8-piece-Queen-size-Comforter-Set-Lorenzo-Purple-8piece-Queensize-Comforter-Set-P13041650.jpg'),
(711161781, 123, 'Green Bay Football \'I Bleed Green & Gold\' Cotton Tee', 'Proudly display your team spirit with this official \'I Bleed Green and Gold- GO Green Bay\' high-quality silkscreened tee. This t-shirt features a classic crewneck and a comfortable cotton construction.', 20, 40, 'http://ak1.ostkcdn.com/images/products/6165733/Green-Bay-Football-I-Bleed-Green-Gold-Cotton-Tee-P13821563.jpg'),
(711161814, 124, 'Woven Nubby Natural Table Runner', 'This table runner displays a natural aesthetic that works in traditional and modern decor. It is crafted from 100-percent ramie.', 37, 40, 'http://ak1.ostkcdn.com/images/products/8701525/Woven-Nubby-Natural-Table-Runner-P15952432.jpg'),
(711161838, 125, 'Women\'s Skechers Shape Ups SR White', 'Work hard and work out at the same time with the Skechers Work Shape Ups SR shoe. Smooth leather upper in a lace up casual fitness sneaker with a Shape Ups fitness design that promotes weight loss and tones muscles when walking. Slip Resistant Outsole. Sh', 80, 40, 'http://ak1.ostkcdn.com/images/products/7193557/80/569/Womens-Skechers-Shape-Ups-SR-White-P14680518.jpg'),
(711161888, 126, 'Men\'s Dickies Relaxed Fit Cotton Flat Front Pant 32in Inseam Khaki', 'Maintain a polished and professional look in these pleated work pants from Dickies, featuring a casual waistband. These pants are made of stain release and wrinkle resistant fabric.', 31, 40, 'http://ak1.ostkcdn.com/images/products/86/179/P16881319.jpg'),
(711161913, 127, 'CalPak Silver Lake Solid 22-inch Carry-on Duffel Bag', 'This large carry-on 22-inch duffel bag features self-repairing zippers, a half-open style and a non-slip shoulder strap for ease of use. The roomy bag also has two zippered side pockets for extra storage.', 25, 40, 'http://ak1.ostkcdn.com/images/products/3443012/CalPak-Silver-Lake-Solid-22-inch-Carry-on-Duffel-Bag-P11519039.jpg'),
(711161963, 128, 'Serta Gel Memory Foam Micro-Cushion Pillow (Set of 2)', 'Enjoy a perfectly balanced sleep experience, with these Serta gel memory foam micro-cushion pillows. Enjoy a deep sleeping experience with this set of two Serta gel memory foam micro-cushion pillows. Ensuring proper spinal alignment and superior head and ', 30, 40, 'http://ec1.ostkcdn.com/images/products/P15818272L.jpg'),
(711161988, 129, 'Yoga City New York Boot Pants', 'Style meets function with the Yoga City New York Boot pants with a beautiful, body flattering cut. Created to fit close to the body and flare slightly at the bottom for a perfect boot cut silhouette. Fold over waistband offers you the versatility to wear ', 61, 40, 'http://ak1.ostkcdn.com/images/products/8689493/Yoga-City-New-York-Boot-Pants-P15942797.jpg'),
(711162013, 130, 'Coleman Green Valley Cool Weather Sleeping Bag', 'This Coleman Green Valley sleeping bag is perfect for cool weather sleeping. Camping bag with rectangle shape, fits most adults from regular to tall sizes, up to 5 feet and 11 inches.', 42, 40, 'http://ak1.ostkcdn.com/images/products/4865803/Coleman-Green-Valley-Cool-Weather-Sleeping-Bag-P12749734.jpg'),
(711162063, 131, 'Silvex Sterling Silver Necklace', 'This majestic necklace features .925 sterling silver.', 20, 40, 'http://ak1.ostkcdn.com/images/products/P16756083u.jpg'),
(711162090, 132, 'Rich & Skinny Women\'s Dottie Flare Jeans in White', 'The Rich and Skinny Women\'s Dottie Flare White Jeans are a summer must have. They feature a mid rise fit, lightweight stretch denim, and a flared cuff.', 70, 40, 'http://ak1.ostkcdn.com/images/products/9181301/P16356201.jpg'),
(711162139, 133, 'Juice In The Box Replacement Parts Kit', 'This replacement kit comes with everything you need to keep your little one\'s Juice In The Box Reusable box looking brand new. The set includes three straws, one seal and one spout.', 10, 40, 'http://ak1.ostkcdn.com/images/products/9497539/P16677816.jpg'),
(711162171, 134, 'International Caravan Aluminum Tilt and Crank 8-foot Outdoor Umbrella', 'Stay cool and shaded with this colorful 8-foot outdoor umbrella. This umbrella features aluminum/fabric construction, and comes in six attractive color options. This International Caravan eight-foot-wide outdoor umbrella provides a breadth of shade that c', 57, 40, 'http://ak1.ostkcdn.com/images/products/P10578111.jpg'),
(711162201, 135, 'Antique Black Mirror with Silver Highlights', 'This mirror features an attractive antique black finish with silver highlights. This wall accent can hang either vertically or horizontally for convenience', 118, 40, 'http://ak1.ostkcdn.com/images/products/6573168/79/129/Antique-Black-Mirror-with-Silver-Highlights-P14149230.jpg'),
(711162225, 136, 'Wagan Solar e Charger', 'The Wagan Solar e Charger 2.1A (2558-5) allows you to have backup power anywhere you go. Think of it as an extended battery for your tablet, e-reader, smart phone, or other mobile electronic devices. When your phone is running low on power you can charge ', 85, 40, 'http://ak1.ostkcdn.com/images/products/8301779/P15619014.jpg'),
(711162250, 137, 'Sivan Health and Fitness Yoga Kit', 'ITEM#: 16411078\nGet fit and find inner and outer peace using this Essentials yoga kit. The kit includes a sturdy mat with a carry bag, two yoga foam blocks and a strap to help you get started practicing yoga in the comfort of your own home. This kit makes', 20, 40, 'http://ak1.ostkcdn.com/images/products/9245090/P16411078.jpg'),
(711162275, 138, 'Upton Home Hanover 10-candle Candelabra', 'This metal candelabra features ten platforms to hold candles and a sturdy base. The candelabra is constructed of two rows, five platforms on each of the front and back rows.', 47, 40, 'http://ak1.ostkcdn.com/images/products/6373741/P13989623.jpg'),
(711162359, 139, 'Rachael Ray Bakeware Oven Lovin\' 5-Piece Set', 'This bakeware features a nonstick interior and exterior that is dishwasher safe for easy cleanup. Extra wide handles provide a confident grasp and the comfortable silicone grips add a fun splash of color to your kitchen.', 50, 40, 'http://ak1.ostkcdn.com/images/products/7468715/7468715/Rachael-Ray-Bakeware-Oven-Lovin-5-Piece-Set-P14916511.jpg'),
(711162384, 140, 'Converse Women\'s \'CT Bright OX\' Canvas Athletic Shoe', 'The Converse brand of athletic shoes, which now includes a wide range of lace-up and slip-on styles for men and women in a dazzling array of hip materials, colors, and patterns, first gained fame and still earns respect for its Converse All-Star high-topp', 34, 40, 'http://ak1.ostkcdn.com/images/products/9221417/P16389944.jpg'),
(711162463, 141, 'Paymaster Polarized Sport Sunglasses', 'These polarized sport sunglasses are built for extreme performance in all conditions, providing glare free vision with our high quality lens.\n\nSupported by a curved plastic frame, the mirrored lenses on these Paymaster sunglasses provide protection agains', 19, 40, 'http://ak1.ostkcdn.com/images/products/4750227/Paymaster-Polarized-Sport-Sunglasses-P12655858c.jpg'),
(711162488, 142, 'V7 Professional Wireless Presenter with Laser Pointer and microSD Car', 'Control your next presentation with the V7 professional wireless presenter. Its ergonomic design with soft-touch finish fits comfortably in the palm of your hand and provides 5 control buttons (Page Up, Page Down, Screen Blackout, Play/Exit, Laser) to eff', 32, 40, 'http://ak1.ostkcdn.com/images/products/8818141/P16051954.jpg'),
(711162499, 143, 'Beautyrest Cozy Plush Heated Electric Blanket', 'Nestle into the welcoming warmth of this plush electric blanket from Beautyrest. This luxurious blanket features soft, flexible wiring, and a convenient LED display.', 100, 40, 'http://ak1.ostkcdn.com/images/products/P13527749u.jpg'),
(711162523, 144, 'Glyde IV CC Under Armour Womans Softball Cleats', 'These lightweight Under Armour women\'s softball cleats have synthetic uppers which give great durable support. With these rotational traction rubber molded cleats configuration, you can optimize your rotational capability.', 29, 40, 'http://ak1.ostkcdn.com/images/products/8500724/Glyde-IV-CC-Under-Armour-Womans-Softball-Cleats-P15786208.jpg'),
(711162537, 145, 'Banana Lemon Men\'s Purple Button-down Shirt', 'This purple patterned men\'s button down shirt with a paisley collar is ideal for going out or staying in. Machine washable and made with 100 percent cotton, this shirt is both convenient and comfortable.\n\nColor options: Purple\nSleeves: Long sleeves\nNeckli', 80, 40, 'http://ak1.ostkcdn.com/images/products/9595524/P16779869.jpg'),
(711162657, 146, 'High Heel Shoe Fabric Chair', 'Give your space a bold, trendy style with this cute high-heeled shoe chair. Comfortable and in your choice of two animal prints or a bold red, this unique chair is designed to give your decor that extra zing.', 172, 40, 'http://ak1.ostkcdn.com/images/products/8746934/High-Heel-Shoe-Fabric-Chair-P15992264.jpg'),
(711162683, 147, 'Freshware 30-cavity Silicone Chocolate, Jelly and Candy Mold', 'ITEM#: 13669787\nThe Freshware 30-cavity mini chocolate, jelly, and candy mold is perfect for any kitchen. This professional quality silicone mold can be used to make chocolates, mints, hard candy, gelatin snacks, gummies, soap and so much more.\n\nPan size:', 12, 40, 'http://ak1.ostkcdn.com/images/products/5977898/75/747/Freshware-30-cavity-Silicone-Chocolate-Jelly-and-Candy-Mold-P13669787.jpg'),
(711162708, 148, 'Rabbit Rabbit Rabbit Designs Women\'s Lace Double V-neck Midi Sheath Dress', 'Add some elegant lace to your wardrobe with this breathtaking white sheath dress. Elbow length sleeves flaunts the gorgeous lace detailing with a flattering v-neck to complete the look. This romantic dress features an empire waist that slims and flatters ', 45, 40, 'http://ak1.ostkcdn.com/images/products/9232773/P16399865.jpg'),
(711162734, 149, 'Quirky Pivot Power Flexible surge protector', 'A creative outlet\nYou know what makes sense? This. Reclaim your outlets with Pivot Power, a flexible surge-protecting power strip that bends to fit every sized plug or adapter without wasting a single outlet. That means no more plug traffic jams or blocke', 30, 40, 'http://ak1.ostkcdn.com/images/products/9563581/P16744662.jpg'),
(711162767, 150, 'Luxury German Paisley Print Flannel Sheet Sets or Pillowcase Separates', 'This beautiful cotton flannel sheet set brings a touch of luxury and comfort into your home. This luxurious flannel sheet set has been blushed over ten times for amazing softness on both sides. The German paisley print beautifully accents any room.', 50, 40, 'http://ak1.ostkcdn.com/images/products/6549191/Luxury-German-Paisley-Print-Flannel-Sheet-Sets-or-Pillowcase-Separates-P14129621.jpg'),
(711162855, 151, 'Rolling Coaster Children\'s Ride-on Car', 'The Rolling Coaster ride-on features a durable construction and provides hours of fun for children. No pedals, gears, or batteries required, this ride-on is propelled by turning the steering wheel, providing a great combination of exercise and fun. With a', 42, 40, 'http://ak1.ostkcdn.com/images/products/P10355113d.jpg'),
(711162881, 152, 'INSTEN Black Leather Laptop Case Cover for Apple MacBook Pro 13-inch', 'ITEM#: 14790878\nThis is a BasAcc black leather case for Appleه¨ MacBook Pro 13-inch. Protect your computer against bumps and scratches with this case.\n\nDelivers instant protection\nAllows easy access to all functions\nColor: Negro\nMaterial: Synthetic leathe', 13, 40, 'http://ak1.ostkcdn.com/images/products/7322683/P14790878.jpg'),
(711162886, 153, 'Case Logic LAPS-113-PURPLE Carrying Case (Sleeve) for 13.3 Notebook', '', 26, 40, 'http://ak1.ostkcdn.com/images/products/etilize/images/250/1024317430.jpg'),
(711162920, 154, 'Funrise Toy Tonka Classics Steel Front Loader', 'This Funrise Toy Tonka Classics Steel Front Loader features sturdy stainless steel construction and is built to last. This classic Tonka truck is perfect for children three years and older.', 47, 40, 'http://ak1.ostkcdn.com/images/products/9599760/P16785184.jpg'),
(711162970, 155, 'Palmer\'s Cocoa Butter Formula With Vitamin E 3.5-ounce Lotion', 'Brand: Palmer\'s\nSize: 3.5 ounces\nAn advanced moisturizer the helps heal, soften and protect rough, dry skin\nEnriched with natural cocoa butter and Vitamin E\nHelps smooth and blend unattractive marks\nUnique formula penetrates as deep as the dryness and hel', 10, 40, 'http://ak1.ostkcdn.com/images/products/6210757/77/530/Palmers-Cocoa-Butter-Formula-With-Vitamin-E-3.5-ounce-Lotion-P13857080.jpg'),
(711163045, 156, 'Blendtec Wildside+ Total Blender (Refurbished)', 'The Total Blender replaces up to nine other appliances with one fast, easy-to-use machine. The large blade and square jar combination powers through tougher blending tasks with ease and in less time.', 283, 40, 'http://ak1.ostkcdn.com/images/products/9653487/P16836278.jpg'),
(711163063, 158, 'Laliberi Quick Clip Flowers 1/Pkg-Scarlet Red Layers', 'EK SUCCESS-Laliberi: Pin & Clip Flower. It\'s quick and easy to add stylish flair to your hair; clothing; and accessories with these fantastic flower embellishments! Each fabric flower has both a pin and a clip on the back so it can attach to any and every', 4, 40, 'http://ak1.ostkcdn.com/images/products/6740232/79/797/Laliberi-Quick-Clip-Flowers-1-Pkg-Scarlet-Red-Layers-P14285304.jpg'),
(711163113, 159, 'Keurig B130 DeskPro Coffee Maker', 'Pamper yourself with the touch of a button with the Keurig DeskPRO brewer. The DeskPRO brews a perfect cup of coffee, tea, hot cocoa or iced beverage in under three minutes. Simply add water into the single-use reservoir, choose your favorite K-Cup, brew ', 71, 40, 'http://ak1.ostkcdn.com/images/products/P14027050d.jpg'),
(711163138, 160, 'Champion Double Dry Absolute Workout II Sports Bra', 'This sleek Champion sports bra gives smaller busts a little lift and larger busts secure support. And it does it all without squeezing or flattening thanks to breathable space/air design. A fully constructed inner bra subtly enhances your curves for a nat', 13, 40, 'http://ak1.ostkcdn.com/images/products/9478520/P16660452.jpg'),
(711163163, 161, 'Edison 4-Pack Amber 60-Watt Light Bulbs', 'Cuisinart GR-150 Griddler Deluxe', 87, 40, 'http://ak1.ostkcdn.com/images/products/8087421/8087421/Edison-4-Pack-Amber-60-Watt-Light-Bulbs-P15440056.jpg'),
(711163190, 162, 'Cable & Gauge Henley Drawstring Waist Roll Dress', 'Give your look a simple, but sophisticated update with this Cable & Gauge Henley dress. This short-sleeved dress is sure to make an impression.', 45, 40, 'http://ak1.ostkcdn.com/images/products/9818294/P16983484.jpg'),
(711163213, 163, 'New York Yankees Men\'s 3.4-ounce Eau de Toilette Spray', 'This modern \'New York Yankees\' eau de toilette features an invigorating fragrance with top notes of bergamot, coriander and blue sage. The middle notes include ivy, orange flower and geranium, with patchouli, sandalwood and suede accords on the dry-down.', 20, 40, 'http://ak1.ostkcdn.com/images/products/7912742/New-York-Yankees-Mens-3.4-ounce-Eau-de-Toilette-Spray-P15291199.jpg'),
(711163263, 164, 'Our Pets Cosmic Kitty Cat Grass', 'Let your furry friend experience the great outdoors with these Cosmic Catnip growable cat treats by Our Pets. Designed to provide convenience, this kit includes seeds, soil and a container to give your cat the same edible grass.', 10, 40, 'http://ak1.ostkcdn.com/images/products/9549269/P16730129.jpg'),
(711163277, 165, 'Floral Blossom 42-inch Round Dining Table', 'By combining outdoor elements such as ceremonial and abstract floral designs, the Floral Blossom 42-Inch Round Dining Table by Home Style is brought to life. This table is constructed of cast aluminum in a powder coated charcoal finish. With its center op', 264, 40, 'http://ak1.ostkcdn.com/images/products/7576191/P15004316.jpg'),
(711163302, 166, 'Gray Earth Men\'s Belted Cargo Shorts', 'These men\'s belted cargo shorts by Gray Earth are ideal for summer hikes or walks. Available in a variety of colors, these shorts are sure go with anything.', 30, 40, 'http://ec1.ostkcdn.com/images/products/10062701/P17207593.jpg'),
(711163377, 167, 'Stitch\'s Women\'s Low Rise Zipper Fly Boyfriend Jeans', 'These boyfriend style jeans from Stitch\'s create a casual look with a classic five-pockets styling. These contemporary denim jeans have a comfortable touch and bring a sense of toughness and independence to you through our signature dark wash.\n\nColor opti', 63, 40, 'http://ak1.ostkcdn.com/images/products/8911891/Stitchs-Womens-Low-Rise-Zipper-Fly-Boyfriend-Jeans-P16129902.jpg'),
(711163397, 168, 'Frogg Toggs Men\'s Pro Action Jacket', '', 32, 40, 'http://ak1.ostkcdn.com/images/products/8753647/Frogg-Toggs-Mens-Pro-Action-Jacket-P15997673.jpg'),
(711163422, 169, 'Cotton Terry Kitchen Towel 10-piece Set', 'Ideal for wiping counters, these kitchen towels are great for cleaning spills and drying dishes. These bright, welcoming cotton terry cloth towels come in solid and checkered patterns while being extra-absorbent and durable. The assorted set contains a mi', 18, 40, 'http://ak1.ostkcdn.com/images/products/7901520/7901520/Cotton-Terry-Kitchen-Towel-10-piece-Set-P15281325.jpg'),
(711163447, 170, 'Athena Metal Scroll Table/Desk Clock', 'An antiqued coppertone finish and a reliable quartz movement highlight this beautiful clock. Traditional Roman numberals set against a yellow face finish this graceful timepiece.', 47, 40, 'http://ak1.ostkcdn.com/images/products/6385098/6385098/Athena-Metal-Scroll-Table-Desk-Clock-P13998606.jpg'),
(711163473, 171, 'Ninja BL201 Kitchen System Pulse Blender (Refurbished)', 'The Ninja Kitchen System Pulse gives you the power and convenience to live a healthy lifestyle by combining Ninja Total Crushing technology with Nutri Ninja cups, a processor bowl and easy-to-use attachments for all your kitchen needs. With 550 watts of p', 60, 40, 'http://ak1.ostkcdn.com/images/products/10059169/P17204553.jpg'),
(711163475, 172, 'RetroGraphics Babe Ruth Framed Sports Photo', 'This framed sports photo includes a photo of legendary baseball player Babe Ruth presented in a black wood frame. This photo features triple thick matting, is officially licensed, and comes in protective packaging.', 284, 40, 'http://ak1.ostkcdn.com/images/products/6739479/RetroGraphics-Babe-Ruth-Framed-Sports-Photo-P14284697.jpg'),
(711163502, 173, 'Lion Martial Medium Red Arts Karate Glove Pair', 'Anladia Women\'s Gradient Denim Distressed Skinny Jeans', 15, 40, 'http://ak1.ostkcdn.com/images/products/7356417/7356417/Lion-Martial-Medium-Red-Arts-Karate-Glove-Pair-P14818942.jpg'),
(711163552, 174, 'Victorinox Swiss Army Ranger Pocket Knife', 'ITEM#: 13744752\nThe 3 1/2 inch\" Ranger is a great pocket knife turned into a multi-functional tool. With over 20 implements, the Ranger has everything from a toothpick to a metal file.\n\nFeatures: Large blade. small blade, can opener with small screwdriver', 50, 40, 'http://ak1.ostkcdn.com/images/products/6071644/P13744752.jpg'),
(711163627, 175, 'Baumgartens Horizontal Clear Badge Holder (Pack of 12)', 'Horizontal layout\nConveniently display your ID inside these clear holders\nPerfect for badges, business cards or inserts up to 2.5 inches high x 3.5 inches wide\nThis package contains twelve clear ID holders\nClips not included', 7, 40, 'http://ak1.ostkcdn.com/images/products/6378494/78/435/Baumgartens-Horizontal-Clear-Badge-Holder-Pack-of-12-P13993411.jpg'),
(711163634, 176, 'Army Logo Bumper Sticker', 'US Army Logo Bumper Sticker: Show your support for our military by displaying this bumper sticker on your car or even home or business window. These products are prized not only by military members, but also by their families.', 7, 40, 'http://ak1.ostkcdn.com/images/products/9488944/P16669920.jpg'),
(711163648, 177, 'Versonel Blue Portable Toolbox with Mini Refrigerator', 'This innovative mini-refrigerator/toolbox combo is the perfect unit for garages, basements, man-caves, dorms, offices and more. It contains a completely functional 1.7 cubic foot mini fridge and three working, toolbox-style drawers. With an adjustable 32 ', 399, 40, 'http://ak1.ostkcdn.com/images/products/9401186/P16589567.jpg'),
(711163675, 178, 'Ultimate Harley-Davidson (Hardcover)', 'Updated for a new generation of bike lovers, this visually stunning and comprehensive history of Harley-Davidson charts the company and its bikes decade by decade.\nFrom the moment the first model rolled out of a backyard shed in Milwaukee, through Harley\'', 18, 40, 'http://ak1.ostkcdn.com/images/products/7351660//bmmg/books/Ultimate-Harley-Davidson-Hardcover-P9781465408488.JPG'),
(711163702, 179, 'Upton Home Holton Wall Mount Bronze Entryway Coat/ Hat Hanging Rack', 'This Holton hanging rack features a lovely burnished bronze finish and ten decoratively scrolled hooks for coats, hats, and accessories. It is constructed of metal and raised slightly from the wall to allow room for items to hang. This entryway rack is pe', 35, 40, 'http://ak1.ostkcdn.com/images/products/7925697/Upton-Home-Holton-Wall-Mount-Bronze-Entryway-Coat-Hat-Hanging-Rack-P15302116.jpg'),
(711163726, 180, 'Zeyner Leather Bullhorn Top-Zip 17-inch Laptop Briefcase', 'Carry your important documents or anything you may need with this bullhorn top-zip laptop briefcase. The multitude of compartments and sleeves will ensure that you stay organized and neat.\n\nColor: Black\nDouble rivet-reinforced hanger for removable shoulde', 100, 40, 'http://ak1.ostkcdn.com/images/products/6442993/Zeyner-Leather-Bullhorn-Top-Zip-17-inch-Laptop-Briefcase-P14044551.jpg'),
(711163732, 181, 'Silvertone Rhinestone Antique Necklace (Thailand)', 'Update your look with a fashionable handcrafted necklace from Thailand. This necklace features an antiqued metal elephant design studded with rhinestones.\n\nProduct Features:\nColor: White, black\nStone: Rhinestone\nMetal: Base metal\nMetal finish: High polish', 29, 40, 'http://ak1.ostkcdn.com/images/products/6537576/Silvertone-Rhinestone-Antique-Necklace-Thailand-P14120249.jpg'),
(711163757, 182, 'Martha Stewart Essential Colors Glitter (Pack of 24)', 'These fine glitters come in 24 vivid colors to add sparkle to any crafts or scrapbooking project. Each color of glitter comes in its own vial, all packaged in a re-usable plastic case with a handle.', 23, 40, 'http://ak1.ostkcdn.com/images/products/5144690/Martha-Stewart-Essential-Colors-Glitter-Pack-of-24-P12989066.jpg'),
(711163784, 183, 'Mac Duggal Women\'s Silver Sequined Side Cut-out Gown', 'Flaunt the true you in this gown. This evening dress has a plunging V-neckline with side cut outs. The fitted style also has a high slit with a sequined strap open back.', 220, 40, 'http://ak1.ostkcdn.com/images/products/8887262/Mac-Duggal-Womens-Silver-Sequined-Side-Cut-out-Gown-P16109846.jpg'),
(711163810, 185, 'Girl\'s Dutch Girl Costume', 'This girl\'s costume features a Dutch Girl design and includes a dress, headpiece and lace-edged apron with tulip imprint. This costume is constructed from flame retardant materials for added safety.', 29, 40, 'http://ak1.ostkcdn.com/images/products/4245333/Girls-Dutch-Girl-Costume-P12234774.jpg'),
(711163835, 186, 'rooCASE Heavy Duty Blok Armor Hybrid Dual-layer Case with Kickstand for Apple iPad Air 2', 'The rooCASE Heavy Duty Blok Armor Case provides dual-layer polycarbonate hard shell protection with a flexible TPU inner core for protection from drops and scratches. Includes built-in kickstand for viewing pictures and watching movies comfortably.', 26, 40, 'http://ak1.ostkcdn.com/images/products/9940229/P17095347.jpg'),
(711163894, 187, 'HP ProLiant DL360 G9 1U Rack Server - 1 x Intel Xeon E5-2660 v3 Deca-', 'Online Shopping\nElectronics\nComputers, Hardware & Software\nCommercial IT Hardware\nRacks, Mounts, & Servers\n\nHP ProLiant DL360 G9 1U Rack Server - 1 x Intel Xeon E5-2660 v3 Deca-\n\n•غپ\nPrevious\n•غâ\nNext\n\nQty:\nAdd to Wish List\nHP ProLiant DL360 G9 1U Rack Se', 3469, 40, 'http://ak1.ostkcdn.com/images/products/9516292/P16694758.jpg'),
(711163905, 188, 'Mossi Men\'s Black Leather Shirt', 'This genuine leather shirt from Mossi features a button front closure with a Buffalo Nickel design on the snaps. This shirt also spotlights two front bosom pockets, a fold down collar for comfort and a lined interior providing a comfortable fit.', 80, 40, 'http://ak1.ostkcdn.com/images/products/6055743/Mossi-Mens-Black-Leather-Shirt-P13731743.jpg'),
(711163962, 189, 'Apple iPhone 5s 32GB (Gold) - Unlocked', 'This update to the iPhone 5 comes equipped with a faster Apple A7 processor, an improved 8-megapixel camera, while also adding a Touch ID fingerprint sensor into the home button. Other features of the iPhone 5S include a 4-inch Retina display, AirPlay med', 915, 40, 'http://ak1.ostkcdn.com/images/products/9626426/P16812480.jpg'),
(711164005, 190, 'INSTEN Green TPU/ Light Blue Hard Plastic Hybrid Phone Case Cover for Apple iPhone 4/ 4S', 'This is a BasAcc green TPU and light blue hard hybrid case for Appleه¨ iPhone 4/ 4S. Protect your iPhone against bumps and scratches with this accessory set.', 5, 40, 'http://ak1.ostkcdn.com/images/products/8210636/8210636/BasAcc-Green-TPU-Light-Blue-Hard-Hybrid-Case-for-Apple-iPhone-4-4S-P15543140.jpg'),
(711164025, 191, 'VIGO Dual Function Stainless Steel Pull-Out Spray Kitchen Faucet', 'This Vigo stainless steel pull-out kitchen faucet is a beautiful addition to your kitchen. The sleek faucet gives the kitchen a modern feel. The faucet features a single-lever side mixer, two-function spray, and a universal ceramic disk cartridge.\n\nAdd a ', 180, 40, 'http://ak1.ostkcdn.com/images/products/4612925/VIGO-Dual-Function-Stainless-Steel-Pull-Out-Spray-Kitchen-Faucet-P12541793a.jpg'),
(711164050, 192, 'Ray-Ban \'RB2132 New Wayfarer\' 902L Havana Sunglasses', 'These stylish New Wayfarer sunglasses by Ray-Ban feature green, 100-percent UV protected lenses set in embellished, plastic tortoise shell frames. These Italian-made designer glasses are from the Ray-Ban 2011 Collection. Ray-Ban is quality. Nobody can den', 94, 40, 'http://ec1.ostkcdn.com/images/products/6611196/79/287/Ray-Ban-RB2132-New-Wayfarer-902L-Havana-Sunglasses-P14180149.jpg'),
(711164100, 193, 'Baby Doll Bathtub Accessory Set', 'This durable play set is the perfect place for pretend-play moms and dads to keep their little ones nice and clean. With six doll-size pieces, this water-safe play set has everything kids need to bathe their baby dolls including a washcloth, pretend-play ', 14, 40, 'http://ak1.ostkcdn.com/images/products/9617722/P16803310.jpg'),
(711164101, 194, 'iOnBoost V8 300A Lithium Jump Starter', 'ITEM#: 16548233\nThis powerful charger is perfect for everything from jump starting cars to to keeping your phone or laptop ready to go. Don\'t ever be caught without power again with the help of this durable and compact jump starter.\n\n500 peak amps auto ju', 130, 40, 'http://ec1.ostkcdn.com/images/products/9355547/P16548233.jpg'),
(711164107, 195, 'INSTEN Pink Toe/ Finger Separators Dividers Tools Manicure/ Pedicure Home Salon (Pack of 10)', 'TEM#: 16257022\nThis is a Zodaca toe and finger separators. These handy toe and finger separators are extremely useful and convenient when giving manicure and pedicure.\n\nCushioned separators keep you comfortable and give ample space for more precision on t', 3, 40, 'http://ak1.ostkcdn.com/images/products/9062758/BasAcc-Pink-Toe-Finger-Separators-Dividers-Tools-Manicure-Pedicure-Home-Salon-Pack-of-10-P16257022.jpg'),
(711164108, 196, 'Waechtersbach Fun Factory White Jumbo Cafe Latte Cups (Set of 4)', '', 31, 40, 'http://ak1.ostkcdn.com/images/products/5913062/P13616498.jpg'),
(711164135, 197, 'GearIT 14-watt Portable Folding Outdoor Solar Panel USB Device Charger', 'The GearIT solar power charger provides you with a solution for harvesting and charging your mobile devices using natural sunlight. 18-percent high-efficiency monocrystalline silicon solar panels enable charge speeds of up to 2.2 amps (2200mAh) under dire', 58, 40, 'http://ak1.ostkcdn.com/images/products/9923462/P17080748.jpg'),
(711164185, 198, 'Sterling Silver 1/3ct TDW Diamond Square Dice Earrings (I-J, I2-I3)', 'These stud earrings for men feature dice shapes adorned with round-cut white diamonds in pave settings. Screw-back clasps ensure secure wear of these bold .925 sterling silver earrings.', 96, 40, 'http://ak1.ostkcdn.com/images/products/8238945/Sterling-Silver-1-3ct-TDW-Diamond-Square-Dice-Earrings-I-J-I2-I3-P15567091.jpg'),
(711164190, 199, 'Micro USB Keyboard Folio for 10-inch Tablet', 'This keyboard allows for comfortable typing on your 10-inch tablet. The micro USB keyboard easily connects to your tablet without the fuss of an adapter. A magnetic closure keeps your tablet secure within the case while it\'s not in use.', 17, 40, 'http://ak1.ostkcdn.com/images/products/9514747/P16693430.jpg'),
(711164240, 200, 'Junkyard Findings Vintage Trinkets-Small Typo Bulbs 8/Pkg', 'PRIMA FLOWERS-Junkyard Findings Vintage Trinkets: Typo Bulbs. These trinkets have a vintage style that will look great when incorporated into various paper crafting; mixed media; or home accent projects. Each one looks like half of a light bulb and featur', 7, 40, 'http://ak1.ostkcdn.com/images/products/7335813/7335813/Junkyard-Findings-Vintage-Trinkets-Small-Typo-Bulbs-8-Pkg-P14801602.jpg'),
(711164290, 201, 'Wuhan Western Style Cymbal Set with Cymbal Bag', 'The Wuhan Western Style cymbal set features a 14-inch hi hat, 16-inch crash and a 20-inch ride cymbal all housed in a protective bag. Hand hammered, lathed, and highly polished, these cymbals produce explosive trashy sounds.', 260, 40, 'http://ak1.ostkcdn.com/images/products/10066207/P17210777.jpg'),
(711164324, 202, 'Whitmor 3-drawer Chest', 'The Whitmor three-drawer chest is easy to assemble and is made of a metal frame with durable polyester fabric drawers. With casters for easy mobility, this moving cart is perfect for a versatile storing solution.', 42, 40, 'http://ak1.ostkcdn.com/images/products/7569947/P14999343.jpg'),
(711164352, 203, 'Mobo Triton Pro The Ultimate Adult Three Wheeled Red Cruiser', 'For the distinguished rider comes a most extraordinary ride. The Moboه¨ Triton Pro has all of the qualities you look for in a leisure cycle with the low, rugged chassis of something sportier. A dual-joystick steering system and free-wheel mechanism offers', 429, 40, 'http://ak1.ostkcdn.com/images/products/3017479/P11163018.jpg'),
(711164381, 204, 'Martha Stewart Celebrate Decor 6-foot Pink Pom Pom Garlands', 'These two Martha Stewart celebrate garlands are pink and expand up to six feet long. These pom pom garlands are perfect for parties, showers, weddings and any festive event.', 9, 40, 'http://ak1.ostkcdn.com/images/products/5521553/Martha-Stewart-Celebrate-Decor-6-foot-Pink-Pom-Pom-Garlands-P13301438.jpg'),
(711164404, 205, 'Terox Flip Flop Aqua Lagoon', 'With amazing comfort, an affordable price, and the message \"What Made in America Feels Like\", Terox sandals are the first ever sandals of its kind made here in the USA. Born on the 4th of July, 2012, the Terox line features an anatomical design made from ', 40, 40, 'http://ak1.ostkcdn.com/images/products/8026525/82/50/Terox-Flip-Flop-Aqua-Lagoon-P15388221.jpg'),
(711164441, 206, 'Adams Golf Men\'s Speedline Complete Set Golf Clubs With Bag', 'The Speedline complete set is a smart choice for any golfer who wants to get more distance, ball speed and easy to hit playability throughout the bag. The set features an aerodynamic shaped driver for more clubhead speed. The fairway woods iare extremely ', 370, 40, 'http://ec1.ostkcdn.com/images/products/8685290/Adams-Golf-Mens-Speedline-Complete-Set-Golf-Clubs-With-Bag-P15939551.jpg'),
(711164484, 207, 'Ball Half-pint/ 8-ounce Mason Jars (Set of 12)', '', 21, 40, 'http://ak1.ostkcdn.com/images/products/3713015/Ball-Half-pint-8-ounce-Mason-Jars-Set-of-12-P11773079.jpg'),
(711164487, 208, 'Winco 3.5-gallon Stainless Steel Punch Bowl', 'This elegant stainless steel punch bowl from Winco has a 3.5 gallon capacity and decorative ring handles on the side. The wide tapered design makes it ideal for serving fruity punches or alcoholic drinks.', 62, 40, 'http://ak1.ostkcdn.com/images/products/8104789/8104789/Winco-3.5-gallon-Stainless-Steel-Punch-Bowl-P15454274.jpg'),
(711164537, 209, 'INSTEN Rubber Coated Laptop Case Cover for Apple MacBook Air 11-inch', 'This is a BasAcc rubber coated case for Appleه¨ MacBook Air 11-inch. Keep your laptop safe and protected in style with this accessory case.', 12, 40, 'http://ak1.ostkcdn.com/images/products/8649935/P15910718.jpg'),
(711164544, 210, '100 LED White Lights UL Standard', '100 LED White Lights UL Standard. This spectacular set of LED lights will transform your home and garden this holiday season.\n\nColors/finish: Cool White\nMaterials: Plastic\nSetting: Outdoor\nDimensions: 406 length\nThis spectacular set of LED lights will tra', 23, 40, 'http://ak1.ostkcdn.com/images/products/9607937/P16793429.jpg'),
(711164569, 211, 'DMI Cervical Contour Pillow White', 'The cervical contour hypoallergenic fiberfill pillow is designed for greater sleep comfort. It helps reduce tension associated with neck and upper back discomfort. Also helps to correctly align the cervical spine while providing excellent cervical support', 15, 40, 'http://ak1.ostkcdn.com/images/products/8378462/8378462/DMI-Cervical-Contour-Pillow-White-P15683007.jpg'),
(711164594, 212, 'Sure Fit Original Round Table/ Chair Set Cover', 'This superior quality outdoor cover is constructed of a specially engineered PU coating that makes it weather-resistant and provides a barrier against rain, snow, dirt, sap, sun, mold and mildew. Protect the look of your furniture with this durable cover.', 30, 40, 'http://ak1.ostkcdn.com/images/products/6997459/6997459/Sure-Fit-Original-Round-Table-Chair-Set-Cover-P14506386.jpeg'),
(711164644, 213, 'Mega Bloks Barbie Build \'n Style PetShop', 'This Mega Bloks Barbie Build \'n Style Pet Shop features four super cute pets with themed accessories. This Barbie-themed playset includes pretty pets Barbie mini-fashion figure with an extra fashion.', 24, 40, 'http://ak1.ostkcdn.com/images/products/7751529/7751529/Mega-Bloks-Barbie-Build-n-Style-PetShop-P15149764.jpg'),
(711164719, 214, 'Lego Crazy Action Contraptions', 'LEGOه¨ Crazy Action Contraptions is packed full of brilliant off-kilter LEGO gizmos, from a supercharged Speedster to the Squeezeclaw Grabber to the Annoy-o-Matic (how could any boy or girl resist?). The 16 vehicles, tools, and other contraptions are tota', 16, 40, 'http://ak1.ostkcdn.com/images/products/4370279//bmmg/books/Lego-Crazy-Action-Contraptions-P9781591747697.JPG'),
(711164744, 215, 'Pyrex Smart Essentials 8-piece Bowl Set', 'This eight-piece set of clear glass bowls from Pyrex allow you to watch your food as it cooks. Lids allow you to store your food.', 33, 40, 'http://ak1.ostkcdn.com/images/products/5832236/Pyrex-Smart-Essentials-8-piece-Bowl-Set-P13547376.jpg'),
(711164760, 216, 'Peach Couture Striped Jersey Infinity Scarf', 'Nautical-inspired stripes add some texture to your basics. This everyday infinity scarf can be worn throughout the seasons, made of breathable cotton.', 19, 40, 'http://ak1.ostkcdn.com/images/products/P17233778L.jpg'),
(711164810, 217, 'Large/ Extra Large Luxurious Spa Bath Robe', 'Relax with this stunning hotel quality robe, available in a variety of colors. Constructed of quality cotton and a terry lining, this comfortable robe is easily machine washable. This women\'s robe is available in large and extra large sizes for roomy cozi', 67, 40, 'http://ak1.ostkcdn.com/images/products/4026935/Large-Extra-Large-Luxurious-Spa-Bath-Robe-P12049338L.jpg'),
(711164833, 218, 'Cuisinart WMR-CA Round Classic Waffle Maker', 'With a brushed stainless-steel exterior and sleek design, this waffle maker from Cuisinart looks elegant in any kitchen plus stores upright in compact spaces. The nonstick round plate is divided into four quarters and easily wipes clean.', 32, 40, 'http://ak1.ostkcdn.com/images/products/7587480/7587480/Cuisinart-WMR-CA-Round-Classic-Waffle-Maker-P15013562.jpg'),
(711164860, 219, 'Ninja \'Master Prep\' Pulsating Food and Drink Maker', 'Rule the kitchen with this revolutionary food and drink maker. The Ninja Master Prep provides unique processing power for uniform cutting and ice crushing action. Use the chop function on this Ninja to create a salsa customized with vegetables and fruits ', 40, 40, 'http://ak1.ostkcdn.com/images/products/5171197/5171197/Ninja-Master-Prep-Pulsating-Food-and-Drink-Maker-P13009511.jpg'),
(711164886, 220, 'White Mark Women\'s \'Boston\' Red/ White Sweater Dress', 'This sheath-style Boston sweater dress from White Mark is styled with knit patterns of diamonds, deer, and hearts. Long sleeves keep you cozy while a V-neck and curve-hugging cut add a flirty touch to this red and white dress.', 39, 40, 'http://ak1.ostkcdn.com/images/products/7318024/7318024/White-Mark-Womens-Boston-Red-White-Sweater-Dress-P14786908.jpg'),
(711164935, 221, 'Women\'s totes Rhonda Black', 'The Rhonda snow boot features full fur lining, Thermoliteه¨ insulation, full inside zipper for an easy fit and front laces.', 60, 40, 'http://ak1.ostkcdn.com/images/products/7490399/81/164/Womens-totes-Rhonda-Black-P14934990.jpg'),
(711164960, 222, 'Samsonite Cosmolite 27-inch Medium Hardside Spinner Upright Suitcase', 'Samsonite has set an industry precedence by perfecting and innovating luggage, casual bags, backpacks, travel accessories, and now electronics carriers and laptop bags. Over one hundred years of reliability, durability, style and innovative functionality ', 500, 40, 'http://ak1.ostkcdn.com/images/products/8643400/Samsonite-Cosmolite-27-inch-Medium-Hardside-Spinner-Upright-Suitcase-P15905410.jpg'),
(711164985, 223, 'Samsonite Xenon 2 Mobile Office PFT (PerfectFit) for a 15.6 Screen', '', 107, 40, 'http://ak1.ostkcdn.com/images/products/6527171/P14111936.jpg'),
(711165002, 224, 'rabbit rabbit rabbit designs Women\'s Indigo Stretch Lace Dress', 'A gorgeous lace overlay drapes atop this indigo dress from rabbit rabbit rabbit designs. This fully lined dress includes sheer elbow-length sleeves and an empire waist--flattering for every figure.', 44, 40, 'http://ak1.ostkcdn.com/images/products/9487443/P16668598.jpg'),
(711165028, 225, 'Sherry Kline Metro Spice Combo Pillows (Set of 2)', 'Duck Dynasty Camoflague Women\'s Adjustable Hat', 35, 40, 'http://ak1.ostkcdn.com/images/products/6410543/P14018909.jpg'),
(711165102, 226, 'Cuisinart ICE-30BC 2-quart Ice Cream Maker', 'Este pequeج±o electrodomج©stico tiene una carcasa de acero inoxidable cepillado con logo en relieve. Puedes preparar yogurt congelado, sorbetes y helado casero en apenas 25 minutos. Este fantجءstico electrodomج©stico viene con una garantج_a limitada de tr', 90, 40, 'http://ak1.ostkcdn.com/images/products/4216824/Cuisinart-ICE-30BC-2-quart-Ice-Cream-Maker-P12211438.jpg'),
(711165128, 227, 'Aminco San Francisco 49ers Rubber Wristbands (Set of 2)', 'Great for any sports fan and an official product of NFL, this set of two wristbands features the designs of San Francisco 49ers. These wrist bands offer two different colors and designs.', 9, 40, 'http://ak1.ostkcdn.com/images/products/6590251/Aminco-San-Francisco-49ers-Rubber-Wristbands-Set-of-2-P14163165.jpg');
INSERT INTO `product` (`product_id`, `category_id`, `name`, `description`, `price`, `quantity`, `imageURL`) VALUES
(711165398, 228, 'adidas Designator Pants - Boys 8-20', 'Have your guy sport these lightweight casual pants from Adidas. Featuring a stretch waistband and side pockets, these active pants are perfect for an afternoon of shooting hoops.', 30, 40, 'http://edge.shop.com/ccimg.shop.com/op/903120000/903129200/903129298/image__175x175__.jpg'),
(711165548, 229, 'Women\'s Paper Crown by Lauren Conrad \'Tori\' Crepe Gown', '', 280, 40, 'http://edge.shop.com/ccimg.shop.com/240000/247000/247036/products/1209911894__175x175__.jpg'),
(711165576, 230, 'Loren Jewels Sterling Silver and 14kt Diamond and Crystal Ring', 'Loren Jewels Sterling Silver and 14kt Diamond and Crystal Ring\n\nRing with 0.76 carat total weight of diamonds and 1.08 carat total weight of crystals.', 3064, 40, 'http://edge.shop.com/ccimg.shop.com/210000/214100/214194/products/696876440__175x175__.jpg'),
(711165723, 231, 'Fifa 15 Ultimate Team Game Guide (Paperback)', 'Author: Josh Abbott\nPublisher: Createspace Independent Pub\nDate Published: February 12, 2015\nFormat: Paperback\nLength: 34 pages\nLanguage: English\nISBN: 1508450420 / 9781508450429\nCategory: Games & Puzzles / Video Game Guides', 10, 40, 'http://edge.shop.com/ccimg.shop.com/thumbSorryNoPicture__175x175__.jpg'),
(711165935, 232, 'Men Adidas Adidas Pure Game Gift Set(Pack of 1)', 'This was launched by the design house of Adidas in the year 2010.The nose behind this fragrance is Adidas.Top notes are Grapefruit, Mandarin Orange, Basil, Pepper ;middle notes are Lavender, Guaiac Wood, Cypress .Base notes arePatchouli, Incense, Tonka Be', 16, 40, 'http://edge.shop.com/ccimg.shop.com/op/788260000/788264900/788264909/image__175x175__.jpg'),
(711166094, 233, 'Vanity Fair Body Shine Floral Full Coverage Underwire Bra 75297', 'Vanity Fair\'s Body Shine Floral Full Coverage Underwire Bra has a smooth, satiny finish. It supports you perfectly, providing custom fit and comfort while being virtually invisible under your clothes. Style #75297\nNylon/spandex\nMachine washable\nImported\nS', 38, 40, 'http://edge.shop.com/ccimg.shop.com/240000/243400/243406/products/1214105719__175x175__.jpg'),
(711166220, 234, 'Nike Shox Deliver - Mens - White/Black/Pure Platinum', 'Delivering a sleek look with an athletic upper, the Nike Shox Deliver brings you just what you need to style it up wherever you go. There is a supportive leather upper, cushioning Phylon‰م¢ midsole that works Nike Shox‰م¢ columns to provide impact protect', 120, 40, 'http://edge.shop.com/ccimg.shop.com/240000/244300/244310/products/1276412535__175x175__.jpg'),
(711166750, 235, 'Minecraft Diamond Sword Metal Keychain', '*1\" scale keychain, *Real heavy duty metal construction, *Officially licensed, *Great for fans of all ages, *Brand new', 11, 40, 'http://edge.shop.com/ccimg.shop.com/250000/259100/259190/products/1290178137__175x175__.jpg'),
(711167744, 236, 'Nike Solarsoft Girls Flip Flops - Little Kids/Big Kids', 'grooves in footbed for airflow and drainage', 22, 40, 'http://edge.shop.com/ccimg.shop.com/240000/243200/243245/products/1272677314__175x175__.jpg'),
(711167821, 237, 'LG LFC25765SB - refrigerator/freezer - french style - freestanding - smooth black', 'With great looks and great features, this refrigerator is more than just a pretty set of doors. It features a generous 25 cubic feet of space in a design meant to keep it all organized. The Smart Cooling system, which controls air flow, temperature, and h', 1699, 40, 'http://edge.shop.com/ccimg.shop.com/op/994330000/994339700/994339735/image__175x175__.jpg'),
(711168045, 157, 'Levi\'s Boys\' 505 Regular Denim Shorts', 'Perfect to meet all his warm days of play‰غسour 505‰م¢ Regular Fit Shorts are cut a comfortable fit that hit slightly below the knee.\nOverview\n\nStraight fit\nInner-adjustable waistband\n100% Cotton - Imported', 30, 40, 'http://edge.shop.com/ccimg.shop.com/op/1044090000/1044092600/1044092667/image__175x175__.jpg'),
(711168071, 238, 'Beats Powerbeats2 - headphones with mic', 'Stay pumped throughout your workout with these Beats by Dr. Dre Powerbeats by Dr. Dre MH782AM/A clip-on earbud headphones that feature adjustable ear hooks and 3 pairs of ear tips to ensure a sure fit.', 150, 40, 'http://edge.shop.com/ccimg.shop.com/op/1021770000/1021770600/1021770633/image__175x175__.jpg'),
(711168763, 239, 'Junior Women\'s Volcom \'Urban Tribe 5\' Board Shorts, Size 0 - White', '', 42, 40, 'http://edge.shop.com/ccimg.shop.com/240000/247000/247036/products/1263173003__175x175__.jpg'),
(711168838, 240, 'Bluesky 0.33oz Soak Off UV Gel Nail Polish Gold, KHAKI, 85', 'Suitable for both hands and feet, Bluesky Shellac nail treatment does not damage natural nails, provides 14 days of incredible high-gloss wear and is quick and easy to remove. Give nails the glamour treatment they deserve from the comfort of your home or ', 10, 40, 'http://edge.shop.com/ccimg.shop.com/240000/243400/243416/products/917908810__175x175__.jpg'),
(711168889, 241, 'DAKINE Longboard Pad', 'This 4 piece pad is made oversized for longboards, featuring DAKINE\'s Posi-Traction technology for guaranteed grip and EVA cushioning that retains its set density and 100% memory through years of use and in any temperature.', 40, 40, 'http://edge.shop.com/ccimg.shop.com/240000/243200/243268/products/790068478__175x175__.jpg'),
(711168903, 242, 'Brown Werewolf Costume (Boy - Child Large)', 'Be a mythological creature lycan-none other in our Werewolf Costume! This costume features a tattered shirt, deluxe fur gloves/hands, quality mask with fangs! Simply add a raggedy pair of pants and you will complete your very own werewolf look! Just the c', 48, 40, 'http://edge.shop.com/ccimg.shop.com/op/966880000/966889900/966889927/image__175x175__.jpg'),
(711168978, 243, 'Polo Ralph Lauren Pima Cotton Bear Sweater - Blue - Size L', '', 245, 40, 'http://edge.shop.com/ccimg.shop.com/230000/239400/239401/products/1277847364__175x175__.jpg'),
(711169116, 184, 'Triple C Womens Dual Power Bank Charger', 'Handcrafted using the finest woods from around the world this beautifully designed in New York City dual power charger is able to give life back to multiple devices at once through a USB port. Features a touch sensitive LED light indicates power level and', 58, 40, 'http://edge.shop.com/ccimg.shop.com/240000/249500/249588/products/1211589266__175x175__.jpg'),
(711169214, 245, 'Oakley Radar Pitch Replacement Lens Gray, One Size', 'If you own the most technologically advanced piece of sports equipment on earth, be sure you get the most out of it. Oakley Radarه¨ is engineered with an interchangeable lens design to let you adapt to any sport environment. Three unique lens shapes are a', 60, 40, 'http://edge.shop.com/ccimg.shop.com/op/875290000/875290400/875290475/image__175x175__.jpg'),
(711169239, 246, 'Hanging Skeleton Poster Decoration Prop', '', 8, 40, 'http://edge.shop.com/ccimg.shop.com/250000/259100/259190/products/1290121244__175x175__.jpg'),
(711169264, 247, 'Doctor Who Smaller on the Outside Lanyard with 2D TARDIS Charm', 'Doctor Who Smaller on the Outside Lanyard with 2D TARDIS Charm', 10, 40, 'http://edge.shop.com/ccimg.shop.com/240000/249700/249733/products/1292510614__175x175__.jpg'),
(711169290, 248, 'Weddingstar 8669 Playful Football Wedding Couple Figurine', '', 42, 40, 'http://edge.shop.com/ccimg.shop.com/240000/243400/243416/products/864407885__175x175__.jpg'),
(711169367, 249, 'Asics 2014 Men\'s Fuji Sleeveless Running Top - M110550', 'Our ASICS Fuji Sleeveless Top gives you the freedom to perform no matter how harsh the terrain. The ultra lightweight Cocona fabric is eco-friendly and helps protect against the sun\'s intense UV rays in addition to your own personal sweat and man-musk; wh', 56, 40, 'http://edge.shop.com/ccimg.shop.com/240000/249500/249525/products/959171852__175x175__.jpg'),
(711169460, 250, 'Teenage Mutant Ninja Turtles Boys\' or Little Boys\' 5-Pack No-Show Socks', 'Keep those happy feet comfy and cool with a pair of rad Teenage Mutant Ninja Turtles no-show socks.\n\nPolyester/nylon/spandex\nMachine washable\nImported\nTeenage Mutant Ninja Turtles boys\'s or little boys\' 5-pack of socks\nTeenage Mutant Ninja Turtles design', 8, 40, 'http://edge.shop.com/ccimg.shop.com/op/802700000/802703600/802703632/image__175x175__.jpg'),
(711169585, 251, 'Hollister Latex-Free Urinary Leg Bag, Medium, Sterile, 18 Oz (Each)', '', 6, 40, 'http://edge.shop.com/ccimg.shop.com/op/875290000/875293300/875293327/image__175x175__.jpg'),
(711169611, 252, 'Personalized 16oz German Beer Stein Gridiron', 'Pour yourself a cold one into this handsome German beer stein that‰غھs personalized with your choice of hobby design, name and year.\n\n16-oz. ceramic mug\nSpecify design and personalize name (up to 15 characters) and established year\nHobby designs include m', 40, 40, 'http://edge.shop.com/ccimg.shop.com/240000/243200/243222/products/664342618__175x175__.jpg'),
(711169714, 253, 'Adidas Ladies Adizero Sport Ii Golf Shoes 6 1/2 Us Medium Purple/White/Silver', 'This adiZero Sport II Golf shoe is an ultra- lightweight shoe that has a mesh upper climaproof construction with an external sprintweb TPU layer for superior stability during lateral movements. The new sprintframe outsole features spikeless swing plane tr', 109, 40, 'http://edge.shop.com/ccimg.shop.com/op/800340000/800346200/800346296/image__175x175__.jpg'),
(711169895, 254, 'Vince Camuto \'Bed ina\' Over the Knee Boot Womens Brown 6 M', 'The Bedina is a sassy tall boot adorned with a metallic buckle.\nShaft Height: 19\" (Size 9)\nCircumference: 14.5\"\nFit: True to Size', 135, 40, 'http://edge.shop.com/ccimg.shop.com/op/779110000/779111200/779111271/image__175x175__.jpg'),
(711170074, 255, 'Vans - Realm Backpack (Hawaiian Black) Backpack Bags', '', 38, 40, 'http://edge.shop.com/ccimg.shop.com/op/1044390000/1044396600/1044396641/image__175x175__.jpg'),
(711170099, 256, 'Converse Chuck Taylor Low Top Sneaker - Men\'s', '', 50, 40, 'http://edge.shop.com/ccimg.shop.com/250000/250100/250107/products/1290689370__175x175__.jpg'),
(711170440, 257, 'Oakley Polarized Radar Path', 'The most demanding sport professionals in the world have fueled 30 years of Oakley innovation. Athletes have won more championships and medals with our sunglasses than with any other single sport product on earth. The heritage continues with Oakley Radar,', 260, 40, 'http://edge.shop.com/ccimg.shop.com/250000/252600/252642/products/1271034100__175x175__.jpg'),
(711170542, 258, 'Darice 1140-70 Genuine Glass Marbles 1 Pound', 'The perfect accent to crafting', 3, 40, 'http://edge.shop.com/ccimg.shop.com/op/875320000/875325800/875325810/image__175x175__.jpg'),
(711170565, 259, 'Tiki Bar Lace Pencil Skirt, Cherry red, SMALL', 'Available in Size: SMALL, Color: Cherry red. For Love & LemonsTiki Bar Lace Pencil SkirtDetailsFor Love & Lemons \"Tiki Bar\" lace pencil skirt. Approx. 19.3\"L from top of skirt to hem. Natural rise. Pencil silhouette; scalloped hem. Cotton/nylon;', 158, 40, 'http://edge.shop.com/ccimg.shop.com/op/1035700000/1035702200/1035702226/image__175x175__.jpg'),
(711172162, 260, 'The Original Donut Shop Coffee Vanilla Cream Puff Medium Roast Coffee K-Cups 18 ct', '', 11, 40, 'http://scene7.targetimg1.com/is/image/Target/17291053?wid=138&hei=138'),
(711172628, 261, 'T-FAL 3 Liter Stainless Steel Easy Pro Deep Fryer', 'When you want to whip up finger-licking dishes in minutes, without worrying about doing extra dishes later, reach for this 3 liter T-fal Deep Fryer! With dishwasher-safe components and a nonstick interior, it helps you create meals and appetizers that are', 50, 40, 'http://scene7.targetimg1.com/is/image/Target/14274838?wid=138&hei=138'),
(711173112, 244, 'Franklin Brass Oval Curved Shower Rod with 6 Bow - Stainless Steel (6\')', '', 35, 40, 'http://scene7.targetimg1.com/is/image/Target/17053535?wid=138&hei=138'),
(711173141, 262, 'Bobble Water Bottle - Lime Green (18 oz)', 'Bobble is a sleek alternative to single-serve plastic water bottles that saves both money and waste. it features a replaceable carbon filter that removes chlorine and other contaminants from tap water and meets the NSF International Standard 42 for taste ', 10, 40, 'http://scene7.targetimg1.com/is/image/Target/14832779?wid=138&hei=138'),
(711173532, 263, 'Inner Secrets Womens Plus Size Lace Babydoll', 'The Inner Secrets Women\'s Plus Size Lace Babydoll will bring out your inner bombshell. This plus size lingerie is made of beautiful lace. You\'ll love the ruffles at the bottom of this plus size babydoll. Also features a ribbon bow on the strap. This plus ', 25, 40, 'http://scene7.targetimg1.com/is/image/Target/15812138?wid=138&hei=138'),
(711173621, 264, 'Girls\' Bermuda Legging', 'Leggings go warm-weather short with Circo Girls\' Bermuda Legging. The perfect go-with-everything Bermuda shorts, these leggings can be paired with tunics or tees and dresses or skirts‰غسevery occasion from parties to full blast lounging. Full waistband el', 5, 40, 'http://scene7.targetimg1.com/is/image/Target/16860885?wid=138&hei=138');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `promo_id` int(11) NOT NULL,
  `promo_code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`promo_id`, `promo_code`, `discount`, `status`) VALUES
(1, '', 0, ''),
(2, 'dis_25', 25, 'valid'),
(3, 'dis_50', 50, 'valid');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `full_name`, `date_of_birth`, `phone`, `address`, `password`, `date_joined`, `type`) VALUES
(34, 'admin', 'Ibrahim Gamal', '1998-06-28', '01273006656', 'new cairo, street 2', 'admin', '2021-09-05 15:07:50', 'admin'),
(36, 'mohamedgamal@gmail.com', 'Mohamed Gamal', '1997-06-28', '01273006656', '111, new cairo', '21683694', '2021-09-08 18:08:29', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `promo_id` (`promo_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `cart_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711173622;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`promo_id`) REFERENCES `promo` (`promo_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
