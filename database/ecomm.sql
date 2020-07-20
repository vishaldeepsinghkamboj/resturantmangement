-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2020 at 03:43 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 27, 1),
(12, 16, 1, 1),
(13, 16, 2, 1),
(14, 22, 11, 1),
(15, 23, 19, 1),
(16, 23, 21, 1),
(17, 24, 19, 1),
(19, 23, 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Breakfast', 'breakfast'),
(2, 'Lunch', 'lunch'),
(3, 'Dinner', 'dinner'),
(4, 'Drinks', 'drinks'),
(5, 'Desserts', 'desserts');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Aloo Paratha ', '<p>Whole wheat flat bread stuffed with a spiced potato </p>\r\n', 'aloo_paratha', 10, 'aloo_paratha.jpg', '2020-01-10', 2),
(2, 1, 'Upma', '<p>Upma is a traditional south indian breakfast dish made from rava. rava is also called as sooji in hindi and cream of wheat in english. upma is usually served with coconut chutney, lime slices or lemon pickle. it can also be had plain. there are many popular variations of upma made for breakfast</p>\r\n\r\n<p>', 'upma-south-india', 9, 'upma.jpg', '2020-01-18', 1),
(3, 1, 'Idli', '<p>ts not only healthy but also a delicious breakfast option. idli is usally served with coconut chutney and sambar. there are many popular variation of idli made in south indian homes .</p>\r\n\r\n<p>idli is a soft, pillowy steamed savory cake made from rice and lentil batter. the lentils used in making idli are urad dal (black gram). idli is a traditional breakfast made in every south indian household including mine. idli is popular not only in the whole of india but outside india too. idlis are naturally vegetarian, vegan, gluten free and makes for one of the healthiest breakfast.</p>\r\n', 'idli', 11, 'idli.jpg', '2019-12-13', 2),
(4, 1, 'Poha', '<p> There are many variations of making poha. e.g. if you are adding potatoes then you can either fry them or boil them and then add. poha for breakfast apart from idli, dosa and upma. It used to make poha often for breakfast or for brunch. either it used to be made with onions or potato or both with onions and potato.&nbsp;<br />\r\n<br />\r\n- poha is a light breakfast that is easy and quick to prepare and taste good too. to make it more nutritious you can add potatoes, boiled peas, grated carrots, roasted peanuts and garnish with coriander leaves (cilantro leaves) and grated coconut.<br />\r\n<br />\r\n', 'poha', 13, 'poha.jpg', '2019-05-10', 3),
(5, 1, 'Grilled Sandwitch', '<p>  Grilled sandwich in an electric grill sandwich maker. you can follow this method to make any grilled sandwich. you can also use an open grill or use a stove top toaster to make these sandwiches.</p>\r\n\r\n<p>grilling the veg sandwich makes the bread slices golden crisp and many people like it that way. i am personally fond of both the ways toasting as well as grilling the sandwich. but my hubby is more fond of grilled sandwich. so its varies from person to person.</p>\r\n\r\n<p>', 'grilled-sandwich', 8, 'sandwich.jpg', '2019-12-13', 2),
(6, 1, 'Dalia', '<p>Dalia or cracked wheat is a healthy ingredient that is often used in indian homes.&nbsp;&nbsp;<strong>broken wheat is a healthy food that is</strong>&nbsp;low in fat, high in iron &amp; fibre, good in carbs and easy to digest.&nbsp;thus generally dalia, both sweet as well as savory is given to small kids or convalescing adults.</p>\r\n\r\n<p>Also, in case your stomach is upset then dalia and moong dal khichdi are a few dishes that are often recommended.</p>\r\n', 'dalia', 12, 'dalia.jpg', '2019-12-13', 3),
(7, 1, 'Bread pakora', '<p>Bread pakora is a favorite breakfast and tea time snack at our home. everyone loves it and it is a great bread snack to have during rains.</p>\r\n\r\n<p>When it&nbsp;pours cats and dogs outside, then<strong>&nbsp;stuffed warm potato bread pakora</strong>&nbsp;with a sweet sauce and a spicy chutney accompanied by a cuppa of hot indian masala chai is bliss. my fond memories of bread pakora are of course having them on street-side stalls and also having these during the weekend for breakfasts.</p>\r\n', 'bread-pakora', 14, 'bread-pakora_1576349820.jpg', '0000-00-00', 0),
(8, 1, 'Aloo kulcha ', '<p>Aloo kulcha are crisp as well as soft leavened flatbreads stuffed with a spiced potato stuffing.</p>\r\n\r\n<p>It is a very popular and tasty flatbread recipe from north indian cuisine. kulcha is very popular in delhi and the state of punjab.&nbsp;</p>\r\n', 'aloo-kulcha', 10, 'aloo-kulcha.jpg', '2019-12-14', 1),
(9, 1, 'Chilli Cheese Toast', '<p>Tasty cheese toast spiced with chilies and ginger. a&nbsp;simple and easy toast recipe that can be made for a quick breakfast and snack.</p>\r\n', 'chilli-cheese-toast', 11, 'chilli-cheese-toast_1576349853.jpg', '2019-12-13', 1),
(10, 2, 'Masala Bhindi', '<p>A delicious dish made with freshly bought okra. Grab some mustard oil,&nbsp;<a href=\"https://food.ndtv.com/ingredient/cumin-seeds-701017\">cumin seeds</a>,&nbsp;<a href=\"https://food.ndtv.com/ingredient/fennel-701032\">fennel seeds</a>, finely-chopped&nbsp;<a href=\"https://food.ndtv.com/ingredient/onion-701134\">onions</a>,&nbsp;<a href=\"https://food.ndtv.com/ingredient/ginger-700888\" target=\"_blank\">ginger</a>&nbsp;and a pinch of&nbsp;<a href=\"https://food.ndtv.com/food-drinks/notch-up-the-tang-amchoor-or-raw-mango-powder-the-summer-cooler-766328\"><em>amchoor</em>.</a>&nbsp;We promise you&#39;ll make this recipe a regular affair in your weekly menu.<br />\r\n&nbsp;</p>\r\n', 'masala-bhindi', 13, 'masala-bhindi.jpg', '2019-12-13', 1),
(11, 2, 'Chana Kulcha', '<p>A classic dish that never goes out of style. The quintessential&nbsp;<em>chana kulcha</em>&nbsp; needs only a few ingredients - cumin powder, ginger,&nbsp;<a href=\"https://food.ndtv.com/ingredient/coriander-powder-701217\">coriander powder</a>, carom powder and some mango powder, which is what gives the&nbsp;<em>chana</em>&nbsp;it&#39;s sour and tangy taste. &nbsp;</p>\r\n\r\n<p><strong>Key Ingredients:&nbsp;</strong>chickpeas, baking soda, salt, mango powder, red chilli powder, black pepper powder, cumin powder, clove, dry ginger, coriander Powder, carom powder, cinnamon</p>\r\n', 'chana-kulcha', 12, 'chana_kulcha.jpg', '2020-01-03', 2),
(12, 2, 'Shahi Egg Curry', '<p>Eggs are a versatile food that can be cooked for any meal of the day. From breakfast to dinner, it can be a go-to food. Here is a&nbsp;mildly-spiced egg curry made with garlic, onions, a whole lot of kasuri methi, fresh cream, yogurt and fresh coriander.</p>\r\n\r\n<p>&nbsp;It can be paired with plain chapati, paratha, rice, biryani or pulao depending upon your choice. You can also serve pickle along with it</p>\r\n', 'shahi-egg-curry', 15, 'shahi-egg-curry_1576459388.jpg', '2020-01-18', 2),
(13, 2, 'Paneer Achaari', '<p>Chunks of cottage cheese cooked in some exciting spices, yogurt and a pinch of sugar.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Key Ingredients:&nbsp;</strong>Paneer (cubed), Oil, Fennel seeds (saunf), Black mustard seeds (sai), Fenugreek seeds (methi daana), Nigella seeds (onion seeds - Kalonji), Garlic-ginger paste, Zeera (cumin seeds), Ground onions, Green chillies,&nbsp;<a href=\"https://food.ndtv.com/ingredient/turmeric-701062\">Turmeric</a>, Ginger paste, Curd, Dry mango powder, Kashmiri mirch,&nbsp;<a href=\"https://food.ndtv.com/ingredient/sugar-700985\">Sugar</a></p>\r\n', 'paneer-achaari', 14, 'paneer-achaari_1576459358.jpg', '2020-01-03', 1),
(14, 2, 'Dal Makhani', '<p>A Punjabi staple, Dal Makhani is a&nbsp;quintessential Indian dish with many variations found in different regions of our country as well as abroad.&nbsp;A luscious, creamy dal recipe loaded with butter, this can be served with naan or paratha or accompany with some cooked rice.&nbsp;</p>\r\n\r\n<p>A punjabi staple dish, Dal Makhani is the absolute favorite recipe that can easily be cooked to perfection at home. First created by Sardar Singh, Dal Makhani has now become the quintessential Indian dish with many variations found in different regions of our country as well as abroad. It is often made in Indian homes for dinner and can also be made for dinner parties. You will often find this dal makhani on many restaurant menus as well. A luscious, creamy dal recipe loaded with butter, this can be served with naan or paratha or accompany with some cooked rice.</p>\r\n\r\n<p><strong>Ingredients in Dal Makhani Recipe</strong>: Urad dal with the flavors of butter, kasoori methi, chillies and tomatoes, together makes a sumptuous main course dish.</p>\r\n', 'dal_makhani', 12, 'dal_makhan.jpg', '0000-00-00', 0),
(15, 2, 'Urlai Roast', '<p>Oh, this one&#39;s a real delight! Perfectly boiled baby potatoes cooked in a peppery Chettinad&nbsp;<em>masala</em>, onions and tomatoes.</p>\r\n\r\n<p><strong>Key Ingredients:&nbsp;</strong>Coconut, Whole red chillies, Kalpasi bark, Star anise seeds, Small potatoes, Chettinadu masala, Coriander leaves</p>\r\n', 'urlai-roast', 13, 'urlai-roast_1576459416.jpg', '0000-00-00', 0),
(16, 2, 'Black Channa and Coconut Stew', '<p>A light stew which brings together delicate vegetables like zucchini, eggplant,&nbsp;<a href=\"https://food.ndtv.com/ingredient/bottle-gourd-700958\" target=\"_blank\">bottle gourd</a>&nbsp;and black&nbsp;<em>channa</em>, is one you should be having. Especially if you&#39;re looking for a healthy quick fix.</p>\r\n\r\n<p><strong>Key Ingredients:&nbsp;</strong>Onion, Ginger (minced), Garlic cloves, Lime leaves, Green chilies (slit into 2 lengthwise), Eggplant (diced), Black channa (cooked),</p>\r\n', 'black-channa-and-coconut-stew', 13.5, 'black-channa-and-coconut-stew.jpg', '0000-00-00', 0),
(17, 2, 'Kolhapuri Vegetables', '<p>A vegetarian dish with its root in Maharashtra, Kohlapuri vegetables are made with a string of glorious vegetables, ginger-garlic paste, grated onion,&nbsp;<a href=\"https://food.ndtv.com/ingredient/cinnamon-700994\">cinnamon</a>,&nbsp;<a href=\"https://food.ndtv.com/ingredient/cloves-700997\">cloves</a>&nbsp;and a lot of coconut.</p>\r\n\r\n<p>Kohlapuri vegetables as the name suggests is a popular dish of Kohlapur city which is located in the South-west corner of Maharashtra. It&#39;s an eclectic mix of vegetables with dessicated coconut and is traditionally known to be spicy.</p>\r\n', 'kolhapuri-vegetables', 11, 'kolhapuri-vegetables_1576459338.jpg', '0000-00-00', 0),
(18, 2, 'Gujarati Kadhi', '<p>A&nbsp;<a href=\"https://food.ndtv.com/food-drinks/even-staple-food-demonstrates-nigerias-economic-vulnerability-1275842\">staple&nbsp;</a>in almost every household, Gujarati&nbsp;<em>kadhi</em>&nbsp;is a lovely&nbsp;<a href=\"https://food.ndtv.com/opinions/unravelling-the-indian-curry-693250\">curry</a>&nbsp;which is simple, light and it&#39;s very easy to make. A lovely Gujarati-style&nbsp;<em>kadhi</em>&nbsp;made with&nbsp;<a href=\"https://food.ndtv.com/ingredient/yogurt-701018\" target=\"_blank\">yogurt</a>, gram flour,&nbsp;<a href=\"https://food.ndtv.com/ingredient/curry-leaves-701020\">curry leaves</a>&nbsp;and ginger, this one has sweet undertones. This cooling curry is great to escape the heat.</p>\r\n\r\n<p>A light and lovely curry made with soothing ingredients like yogurt, gram flour, curry leaves and ginger.</p>\r\n\r\n<p><strong>Key Ingredients:&nbsp;</strong>Curd, Gram flour, Asafoetida, Jaggery, Salt, Water, Clarified butter, Cloves, Ginger, Curry leaves, Whole red chilly, Green chillies</p>\r\n', 'gujarati-kadhi', 13, 'gujarati-kadhi_1576459311.jpg', '2019-12-14', 1),
(19, 3, 'Dum Paneer Kali Mirch', '<p>This paneer cooked on dum is yum! If you&#39;re jumping on the low-calorie bandwagon, you can even exclude the cream and go the guilt-free way. This ambrosial curry brightened with black pepper is sure to please everyone at the dinner table, not just the vegetarians</p>\r\n', 'dum-paneer-kali-mirch', 12.5, 'dum-paneer-kali-mirch.jpg', '2020-01-04', 1),
(20, 3, 'Vegetarian Khow Suey', '<p>Garnish this one-pot meal with fried garlic, onion, peanuts, the works! And with a generous squeeze of lime, you&#39;ll have this coconut-y Burmese delicacy bursting with authentic flavors in no time.</p>\r\n', 'vegetarian-khow-suey', 11, 'vegetarian-khow-suey.jpg', '2019-12-26', 4),
(21, 3, 'Satrangi Biryani', '<p>Biryani is a dish that no one can resist and when it is full of healthy and nutritious veggies, you will not even regret indulging in! Packed with beetroot, zucchini, carrot, bell pepper, french beans, mint and a host of aromatic spices, this biryani recipe is super delicious! A special recipe curated by India Bistro as part of their Clay Pot festival, this biryani is cooked slowly in a clay pot which ensures a clean, healthy and earthen way of cooking food.</p>\r\n', 'satrangi-biryani', 10, 'satrangi-biryani.jpg', '2020-01-02', 1),
(22, 3, 'Nargisi Kofta', '<p><strong>About Vegetarian Nargisi Kofta Recipe | Kofta Recipe</strong>: Vegetarian Nargisi Kofta is a Mughlai dish that boasts of rich, aromatic flavour and spice. It is a great paneer recipe to cook for a special occasion or dinner party. Koftas have always been an integral part of shahi Mughlai cuisine and are known for their non-vegetarian specialties. Nargisi Kofta is an extremely popular dish that is savoured across the country. Here is an easy and quick vegetarian recipe of Nargisi kofta that is mouth watering and an excellent choice for dinner parties where you can serve these as an appetizer or dip them in your favorite curries and serve as a main course dish.</p>\r\n\r\n<p><strong>Ingredients in Vegetarian Nargisi Kofta</strong>: Make soft golden fried paneer-potato kofte on your own! Here are these delicious paneer pops wrapped in gram flour and fried to perfection. Serve with a chutney or dip in a curry!</p>\r\n', 'nargisi-kofta', 14, 'nargisi-kofta.jpg', '0000-00-00', 0),
(23, 3, 'Vegetarian Burritos', '<p><strong>About Vegetarian Burritos Recipe</strong>: Discover healthy eating with this delicious Mexican burritos recipe. Tortillas packed with a kidney beans and cheese mix, served with the sensational salsa sauce.</p>\r\n\r\n<p><strong>Key Ingredients:&nbsp;</strong>rajma, olive oil, cumin powder, coriander powder, chili powder, tabasco, Lemons,&nbsp;Onion,&nbsp;Lettuce, Processed mozzarella cheese, Tomatoes,&nbsp;Onion,&nbsp;Jalapeno, Lime, coriander leaves, cumin, chives of spring onion, Corn tortillas, Salt and pepper</p>\r\n', 'vegetarian-burritos', 15, 'vegetarian-burritos.jpg', '0000-00-00', 0),
(25, 3, 'Butter Paneer', '<p>Lovely chunks of&nbsp;<em>paneer</em>&nbsp;bathed in a heavenly gravy of butter, tomatoes,&nbsp;<em>methi</em>&nbsp;leaves, cashew paste and milk.</p>\r\n\r\n<p><strong>About Butter Paneer Recipe | Paneer Butter Masala Recipe&nbsp;</strong>: A rich tomato and cashew based gravy with butter fried paneer chunks. If you are looking for a thick, delicious full of cream gravy recipe of Paneer, this is just the perfect dish for you. A recipe that would give you the exact sense of a restaurant style Paneer Butter Masala dish!</p>\r\n\r\n<p><strong>Ingredients in Butter Paneer Recipe | Paneer Butter Masala Recipe</strong>: Paneer chunks grilled in butter and simmered with spices, milk and cashew nuts paste, makes for a delicious dish to feast on!</p>\r\n', 'butter-paneer', 13, 'butter-paneer.jpg', '0000-00-00', 0),
(26, 3, 'Sarson Ka Saag Aur Makki Ki Roti', '<p><strong>About Sarson Ka Saag Aur Makki Ki Roti Recipe</strong>: The classic Punjabi dish: Sarsoon da saag te makki di roti. Best had with some white butter, jaggery or honey.This winter special combination of meal makes everyone drool in winters. As a traditional punjabi dish, saag means green and sarso means mustard.</p>\r\n\r\n<p><strong>Ingredients of Sarson Ka Saag Aur Makki Ki Roti</strong>: Along with a steaming hot makki roti and a dollop of butter or ghee this recipe is a yummy and lip smacking treat in winters. A mix of palak, bathua and sarson, pressure cooked and prepared in a host of spices, makes this a healthy winter treat.</p>\r\n', 'sarson-ka-saag-aur-makki-ki-roti', 14, 'sarson-ka-saag-aur-makki-ki-roti.jpg', '2020-01-03', 1),
(27, 3, 'Garlic Naan', '<p>Punch down dough, and knead in garlic. Pinch off small handfuls of dough about the size of a golf ball. Roll into balls, and place on a tray. Cover with a towel, and allow to rise until doubled in size, about 30 minutes</p>\r\n', 'garlic-naan', 5, 'garlic-naan.jpg', '0000-00-00', 0),
(28, 3, 'Aloo Gobi', '<p>Spiced Potatoes with Cauliflower. This Aloo Gobi is packed with flavors, super comforting, vegan and simply the best aloo gobi you will ever have!</p>\r\n\r\n<p>Aloo gobi (potatoes &amp; cauliflower) is a popular Indian dish in which potatoes and cauliflower are cooked with onions, tomatoes and spices. This dish can be made in several ways, you can make it with only onions or only tomatoes or use&nbsp;no onion-tomato at all. I also make it in different ways depending on what ingredients I have on hand, the aloo gobi recipe that&nbsp;I am sharing today is one of my favorite versions. It has onions, tomatoes, ginger, garlic and yes spices!</p>\r\n', 'aloo-gobi', 13, 'aloo-gobi.jpg', '0000-00-00', 0),
(30, 5, 'Rasmalai', '<p>Rasmalai is a Bengali dessert consisting of soft paneer balls immersed in chilled creamy milk. Like Rasgullas, Rasmalai is also made with homemade cheese known as &ldquo;paneer&rdquo; or &ldquo;chana&rdquo;. Instead of being soaked in sugar syrup like Rasgullas, Rasmalai is soaked in sweet, flavoured milk.</p>\r\n', 'rasmalai', 12, 'rasmalai.jpg', '0000-00-00', 0),
(31, 5, 'Gulab Jamun', '<p>Gulab jamun (or gulaab jamun) is among India&#39;s most popular desserts and it&#39;s often referred to as &quot;Indian doughnuts.&quot; This delicious treat consists of soft, melt-in-your-mouth, fried dumplings that are traditionally made of thickened or reduced milk and soaked in rose-flavored&nbsp;<strong>sugar</strong>&nbsp;syrup.</p>\r\n', 'gulab-jamun', 10, 'gulab-jamun_1578348052.jpg', '2020-01-10', 2),
(32, 5, 'Ultimate Gooey Brownies', '<p>Ultimate Gooey Brownies are ridiculously tall, chocolaty, ooey, and gooey with a thick layer of sweetened condensed milk and chocolate in the middle</p>\r\n', 'ultimate-gooey-brownies', 14, 'ultimate-gooey-brownies.jpeg', '0000-00-00', 0),
(33, 5, 'Kulfi falooda', '<p><strong>kulfi falooda</strong>&nbsp;is a frozen dessert, topped with&nbsp;<strong>falooda</strong>&nbsp;sev along with rose syrup and dry fruits.&nbsp;<strong>falooda</strong>&nbsp;sev is corn starch vermicelli that is added in this dessert. ... soaked sabja seeds (sweet basil seeds) are also added to this dessert for their cooling nature.</p>\r\n', 'kulfi-falooda', 10, 'kulfi-falooda.jpg', '0000-00-00', 0),
(34, 5, 'Cream Cheese Swirled Coconut Tres Leches Cake', '<p>The base of the cake is very similar to that of a really good vanilla cake, but it&rsquo;s infused with some coconut flavor as well. What makes this cake special is the cream cheese and coconut swirl running through the center of the bundt cake, it&rsquo;s unexpected and delicious.</p>\r\n\r\n<p>The cake itself is super simple, not too sweet, and honestly nothing too fancy. This is a cake that truly needs a glaze, the glaze is what a tres leches cake is all about. Traditionally, a tres leches cake is made with a three milk glaze that consists of sweetened condensed milk, evaporated milk, and heavy cream. In my version, I am only using two milks, sweetened condensed milk and coconut milk. I&rsquo;m also including a touch of cinnamon and rum, you know for good measure.</p>\r\n', 'cream-cheese-swirled-coconut-tres-leches-cake', 14, 'cream-cheese-swirled-coconut-tres-leches-cake.jpeg', '0000-00-00', 0),
(35, 5, 'Tiramisu', '<p><strong>Tiramisu</strong>&nbsp;(from the Italian language, spelled&nbsp;<strong>tiramis&ugrave;</strong>&nbsp;[ËŒtiramiËˆsu], meaning &quot;pick me up&quot; or &quot;cheer me up&quot;) is a coffee-flavoured Italian dessert. It is made of ladyfingers (savoiardi) dipped in coffee, layered with a whipped mixture of eggs, sugar, and mascarpone cheese, flavoured with cocoa</p>\r\n', 'tiramisu', 8, 'tiramisu.jpeg', '0000-00-00', 0),
(36, 5, 'Blueberry-Streusel Bars With Lemon Cream Filling', '<p>Sprinkle the blueberries evenly over the hot crust and then drop spoonfuls of the lemon mixture over the blueberries. Spread gently with a spatula to distribute a little more evenly, but take care not to crush the berries; it&rsquo;s fine if the lemon mixture isn&rsquo;t perfectly even. Bake until the lemon mixture just begins to form a shiny skin, 7 to 8 minutes.</p>\r\n', 'blueberry-streusel-bars-lemon-cream-filling', 17, 'blueberry-streusel-bars-lemon-cream-filling.jpeg', '0000-00-00', 0),
(37, 5, 'CannoliÂ ', '<p>The&nbsp;<strong>definition</strong>&nbsp;of&nbsp;<strong>cannoli</strong>&nbsp;is a tube-shaped Italian pastry filled with sweet cream and ricotta cheese, sometimes with candied fruit or chocolate sprinkles. An example of a&nbsp;<strong>cannoli</strong>&nbsp;is a treat served during Carnevale in Palermo, Italy.</p>\r\n', 'cannoli', 10, 'cannoli.jpeg', '0000-00-00', 0),
(38, 5, 'MiniÂ PineappleÂ Upside-DownÂ Cakes', '<p>These Mini&nbsp;Pineapple&nbsp;Upside-Down&nbsp;Cakes&nbsp;are simple, sweet, and&nbsp;<em>sure</em>&nbsp;to put a smile on everyone&rsquo;s face! Just like the classic dessert, but in mini form! Perfect for parties and celebrations!</p>\r\n', 'mini-pineapple-upside-down-cakes', 12, 'mini-pineapple-upside-down-cakes.jpeg', '0000-00-00', 0),
(39, 4, 'Masala cha', '<p>Masala chai is a part of the everyday street life of India and a must try. In India, the people who prepare and sell Indian masala tea on streets or small roadside shops are called Chaiwalas. Did you know that sometimes chaiwalas perform tricks to sell their chai? It is called the &ldquo;metre-pour&rdquo;, where the chaiwala blends the chai by pouring it back and forth between the pots at two arm&rsquo;s length apart.</p>\r\n', 'masala-cha', 5, 'masala-cha.jpg', '0000-00-00', 0),
(40, 4, 'Mango Lassi', '<p>A&nbsp;<em>mango lassi</em>&nbsp;is basically a yogurt based&nbsp;<em>mango</em>&nbsp;milkshake or smoothie. You can use either canned&nbsp;<em>mango</em>&nbsp;pulp or cubed fresh or frozen&nbsp;<em>mango</em>. If you use fresh, you&#39;ll want to use a ripe, sweet&nbsp;<em>mango</em>. If your&nbsp;<em>mango</em>&nbsp;isn&#39;t ripe enough it will be too tart and you&#39;ll have to add more sugar or honey than you would like.</p>\r\n', 'mango-lassi', 5, 'mango-lassi.jpg', '0000-00-00', 0),
(41, 4, 'Salty Lassi', '<p>One more contrasting variation to the popular&nbsp;<strong>sweet lassi</strong>. a cooling savory yogurt drink to beat the heat.</p>\r\n\r\n<p><strong>lassi is a very popular drink</strong>&nbsp;which is made during summers in india. there are many<strong>&nbsp;variations&nbsp;of making lassi</strong>. it could be sweet, salty or made with fruits also. i have already shared recipes of&nbsp;<strong>mango lassi&nbsp;</strong>and&nbsp;<strong>strawberry lassi</strong>. most people like sweet lassi but some people are also fond of namkeen&nbsp;lassi.</p>\r\n', 'salty-lassi', 8, 'salty-lassi.jpg', '0000-00-00', 0),
(42, 4, 'Coke', '', 'coke', 1.5, 'coke.jpg', '0000-00-00', 0),
(43, 4, 'Ginger', '', 'ginger', 1.5, 'ginger.jpg', '0000-00-00', 0),
(44, 4, 'Fanta', '', 'fanta', 1.5, 'fanta.jpg', '0000-00-00', 0),
(45, 4, 'Coke Diet', '', 'coke-diet', 1.5, 'coke-diet.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reserve_table`
--

CREATE TABLE `reserve_table` (
  `TableId` int(15) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `ContactNo` bigint(15) NOT NULL,
  `TimeOfVisit` time NOT NULL,
  `NoOfPerson` int(15) NOT NULL,
  `DateOfBooking` varchar(15) NOT NULL,
  `PrefferdFood` varchar(255) NOT NULL,
  `Occasion` varchar(255) NOT NULL,
  `TableNumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve_table`
--

INSERT INTO `reserve_table` (`TableId`, `CustomerName`, `EmailId`, `ContactNo`, `TimeOfVisit`, `NoOfPerson`, `DateOfBooking`, `PrefferdFood`, `Occasion`, `TableNumber`) VALUES
(1, 'Vishaldeep Singh', 'kambojdeepvishal@gmail.com', 4389270040, '07:05:00', 2, '07.01.2020', 'Continental', 'Wedding', 1),
(2, 'Harman', 'harman@gmail.com', 4389270040, '07:00:00', 2, '07.01.2020', 'Indian', 'Birthday', 2),
(3, 'Jagroashan', 'chandi@gmail.com', 978109261, '07:05:00', 2, '07.01.2020', 'Mexican', 'Birthday', 4),
(4, 'Mehakpreet', 'gilll@gmail.com', 4389270040, '07:55:00', 4, '08.01.2020', 'Continental', 'Wedding', 3),
(5, 'ppppp', 'kambojdeepvishal@gmail.com', 4389270040, '07:00:00', 3, '08.01.2020', 'Continental', 'Wedding', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2019-12-27'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2019-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Vishaldeep', 'Singh', '', '', 'WhatsApp Image 2019-12-12 at 11.38.38 PM.jpeg', 1, '', '', '2018-05-01'),
(23, 'kawalaujla@gmail.com', '$2y$10$9lchmrbUr3VU4X973TbEFeQOLzIdzaYSpYeA4CihiR33ITh99SYiG', 0, 'Kawal', 'kaur', '', '', '', 1, 'rbgDOcopnkHZ', '', '2020-01-02'),
(24, 'Manpreet@gmail.com', '$2y$10$iExdFqdCF6WCtQDKlpEmou2ICwfUiUZIFAysbcYtHFumb5cePj5AS', 0, 'Manpreet', 'Kaur', '', '', '', 1, 'RzdS3HeTJnAi', '', '2020-01-02'),
(25, 'harman@gmail.com', '$2y$10$Yh8d0W6J6.y/Luy9DuiHQ.XFp2v3K.58rNNgOBk.wgTIOsRTSRJlO', 0, 'Harman', 'Singh', '', '', '', 1, 'RMPmLKODV9QJ', '', '2020-01-02'),
(26, 'Sukhman@gmail.com', '$2y$10$6EI1o3.ue9RHuH6EXij7SOFuEZWq7bfy6LeYoG2PLJTXuPU8u.Lqm', 0, 'Sukhmnan', 'Singh', '', '', '', 1, 'vEzDXKaxFRu6', '', '2020-01-02'),
(27, 'chandi@gmail.com', '$2y$10$vU6FKBOlpL0R5.L7tErI/.p1y/xngvMyRvRhjYXRFF5UyPfv9ITuu', 0, 'Jagroashan', 'Singh', '', '', '', 1, 'g2AuIi7RFbWY', '', '2020-01-03'),
(28, 'harnoor@gmail.com', '$2y$10$LWwo/S8ernMmyZBm2TzqpOCRS8pm/T6.q9CfsClkY8SFzRyfozIR6', 0, 'Harnoor', 'Samra', '', '', '', 1, 'TUGpvXZfw4di', '', '2020-01-03'),
(29, 'gurleen@gmail.com', '$2y$10$ZMbg1xT5WybokI4T4YsCLOakedpvqAG7sYn2EBA./G4nyi1MAhNcO', 0, 'Gurleen', 'Singh', '', '', '', 0, '9UJEI64gHecp', '', '2020-01-03'),
(30, 'kambojdeepvishal@gmail.com', '$2y$10$MbjMjY9uxuI0aOGWYNVEyeEJN0N7WD/q1oLRPNK8ZOBq0gChd7AjO', 0, 'Vishaldeep', 'Singh', '', '', '', 1, '5pH7diDkSLXq', '', '2020-01-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve_table`
--
ALTER TABLE `reserve_table`
  ADD PRIMARY KEY (`TableId`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `reserve_table`
--
ALTER TABLE `reserve_table`
  MODIFY `TableId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
