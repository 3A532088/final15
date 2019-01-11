-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `users_id` int(10) unsigned DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `cost` int(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `carts` (`users_id`, `id`, `photo`, `product`, `cost`, `qty`, `total`) VALUES
(2,	179,	'product_1.jpg',	'常春藤',	250,	1,	250);

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `goods_name1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `goods` (`id`, `price`, `stock`, `goods_name1`, `goods_name2`, `photo1`, `photo2`, `created_at`, `updated_at`) VALUES
(1,	250,	100,	'HEDERA HELIX \'INGELISE\' 	',	'常春藤',	'product_1.jpg',	'product1.2.jpg',	'2018-12-14 06:46:48',	'2018-12-14 06:46:48'),
(2,	300,	100,	'SINNINGIA SPECIOSA ',	'大岩桐',	'product_2.jpg',	'product2.2.jpg',	'2018-12-14 06:47:34',	'2018-12-14 06:47:34'),
(3,	310,	100,	'CYCLAMEN PERSICUM',	'仙客來',	'product_3.jpg',	'product3.2.jpg',	'2018-12-14 06:48:24',	'2018-12-14 06:48:24'),
(4,	275,	100,	'HYDRANGEA MACROPHYLLA',	'繡球花',	'product_4.jpg',	'product4.2.jpg',	'2018-12-14 06:49:06',	'2018-12-14 06:49:06'),
(5,	200,	100,	'FICUS PUMILA',	'薜荔',	'product_5.jpg',	'product5.2.jpg',	'2018-12-14 06:49:49',	'2018-12-14 06:49:49'),
(6,	400,	100,	'GERBERA HYBRIDA',	'非洲菊',	'product_6.jpg',	'product6.2.jpg',	'2018-12-14 06:50:32',	'2018-12-14 06:50:32');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2018_12_14_062340_create_plants_table',	1),
(4,	'2018_12_14_063328_create_goods_table',	1),
(5,	'2018_12_14_064023_create_orders_table',	1);

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content1` varchar(255) NOT NULL,
  `content2` varchar(255) NOT NULL,
  `content3` varchar(255) NOT NULL,
  `content4` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `news` (`id`, `title`, `content1`, `content2`, `content3`, `content4`, `photo`) VALUES
(1,	'為保護生物多樣性 李家維買下苗栗1.2萬平方米山頭',	'「我想讓自然界重新在這裡，發展出低海拔森林該有的樣子。」去年底墜谷靠「海底雞」 罐頭保命的清華大學生命科學系教授李家維，30年前鑿於苗栗縣南庄鄉獅山村海拔300多公尺的山區動植物優美，想要保護這裡的生物多樣性，而花330萬買下周遭1.2萬平方公尺的山林。',	'「10幾年的古生物研究，就是知道了地球幾10億年生命興衰的節奏，怎麼樣子留存住現有生命的多樣性，變成了我的新興趣。」李家維除介紹自己7千萬年前蛇頸龍，及1億5千萬年前脊椎動物組先化石等珍藏品，還指出，10幾年前，已將溫室中原先種植的大部分植物，都轉到已有3萬多種植物、全球國體保存第一名的屏東辜嚴倬雲熱帶植物保種中心。',	'李家維說：「將來人類覺醒要復原被摧毀的林子的時候，我們的植物可以派上用場。」',	'他還透露，這片山林能輕易找到3、40種蕨類，而旁邊的山經過幾十年、幾百年的開墾，都種上竹子、杉樹，大幅降低生物多樣性，因此有了保護這裡的使命感。',	'news1.jpg'),
(2,	'你想要在家裡種花種菜，但是又擔心沒時間照顧嗎？',	'美國舊金山一間新創公司推出了智慧型盆栽，內建LED日照燈和儲水槽，只要插上電就能種出美麗植物。在辦公桌上放個盆栽很療癒，但很多人工作一忙就忘記澆水施肥，舊金山一間新創公司推出智慧型盆栽，再忙的人也不用擔心養死植物。',	'記者：「這是一個60元的盆栽組合，其中包括3種入門植物，種子包在膠囊內，官網上還有很多植物可選購，另外還有智慧土壤，一切都幫你想好了。」  智慧盆栽內建LED生長燈，依照每株盆栽的需要自動設定照明時間，使用者只需要插上電，並且把旁邊的儲水器加滿，植物就能自己長得欣欣向榮。',	'記者：「如果生長環境像我的辦公室一樣，位於地下室又只有單邊小窗，你也不用擔心，因為生長燈會自己調整燈光，就算跟我一樣對園藝一竅不通的人，也不用煩惱要施多少肥，或是費心思照顧。」  智慧盆栽除了自動照明澆水，這顆特製的土壤球也很重要，研發團隊的靈感來自NASA的太空任務，利用奈米技術將植物所需養分鎖在膠囊裡，平均分布在土壤中。',	'宣傳短片：「普通的花盆中，下方的土壤因為被壓縮，導致植物根部的氧氣減少，但在我們的特製容器中，藉由奈米技術將養分及氧氣平均分布在土壤中，澆水時水分平均分布，植物的根也能吸收足夠的養分及氧氣。」  除了桌上型盆栽，想種植大量蔬果的人也可以購買這種直立式種植台，連上手機隨時隨地追蹤蔬果的生長狀況，在家中一角就能打造自己的開心農場。',	'news2.jpg'),
(3,	'上一次是2014年 「屍花」綻放飄濃郁腐肉味！',	'美國南加州杭廷頓圖書館（Huntington Library）一株巨花魔芋開花了，稀有的樣貌與獨特腐肉氣味，讓粉絲相當興奮。',	'《洛杉磯時報》報導，杭亭頓圖書館裡一株巨花魔芋Stink在當地時間週四晚間意外綻放，讓粉絲驚喜不已，這些花每5到10年才綻放一次，杭亭頓圖書館中上一次開花已是2014年，另外兩株Stank和Stunk預計會在這幾天開花。',	'杭亭頓圖書館也在官方臉書釋出相關訊息，指出Stink開花相當讓人意外。',	'巨花魔芋原來生長於印尼蘇門答臘的雨林，這種植物開花時會發出腐肉的氣味，吸引甲蟲、蜜蜂、蠅類等昆蟲前來，以散布花粉。',	'news3.jpg'),
(4,	'香蕉、鳳梨竟是外來種！專家：台灣植物原生種很少',	'台灣物產豐饒，但你知道很多台灣盛產的水果其實來自其他國家嗎？植物蒐藏家王瑞閔表示，台灣原生植物實際上很少，大家認為的台灣特產水果鳳梨、香蕉其實都是外來種。',	'據《蘋果》報導，王瑞閔表示，台灣現在所看到的植物幾乎都是外來的，像鳳梨是明、清時代華人自菲律賓帶進台灣；芒果是荷蘭統治台灣時被攜帶來台，香蕉、芋頭來自東南亞；蕃薯則來自中南美洲；王瑞閔指出，番薯、番石柳、番茄等等，像這些名字內有「番」這個字，都是外來種。',	'這些大眾所認為的台灣本土植物，就算不是本土種，也已經在台灣落地生根多年，早已被當成台灣的特色之一，也代表著台灣文化的多元，見證著台灣豐富的歷史文化。',	'',	'news4.jpg');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `users_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`users_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`id`, `name`, `postcode`, `ph_number`, `address`, `created_at`, `updated_at`, `users_id`) VALUES
(79,	'禮盒人',	'411',	'0912333333',	'台中市太平區中山路三段295巷187號87樓之87',	'2019-01-08 11:36:12',	'2019-01-08 03:36:12',	5),
(80,	'ordersde',	'12312',	'0912333333',	'台中市123123123',	'2019-01-08 11:36:44',	'2019-01-08 03:36:44',	5),
(81,	'禮盒人',	'411',	'0912333333',	'台中市太平區中山路三段295巷187號87樓之87',	'2019-01-08 11:40:03',	'2019-01-08 03:40:03',	5),
(82,	'orders',	'21312',	'0912333333',	'123123',	'2019-01-08 11:43:01',	'2019-01-08 03:43:01',	5),
(83,	'man',	'12312',	'0912333333',	'台中市太平區中山路三段295巷187號87樓之87',	'2019-01-08 12:11:31',	'2019-01-08 04:11:31',	1);

DROP TABLE IF EXISTS `ordersdetail`;
CREATE TABLE `ordersdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orders_id` int(10) unsigned DEFAULT NULL,
  `users_id` int(10) unsigned DEFAULT NULL,
  `product` varchar(255) NOT NULL,
  `cost` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `orders_id` (`orders_id`),
  CONSTRAINT `ordersdetail_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `ordersdetail_ibfk_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ordersdetail` (`id`, `orders_id`, `users_id`, `product`, `cost`, `qty`, `total`) VALUES
(21,	79,	5,	'大岩桐',	300,	8,	2400),
(22,	80,	5,	'常春藤',	250,	1,	250),
(23,	81,	5,	'常春藤',	250,	10,	2500),
(24,	81,	5,	'大岩桐',	300,	10,	3000),
(25,	81,	5,	'仙客來',	310,	10,	3100),
(26,	81,	5,	'薜荔',	200,	10,	2000),
(27,	82,	5,	'常春藤',	250,	1,	250),
(28,	82,	5,	'薜荔',	200,	1,	200),
(29,	83,	1,	'常春藤',	250,	1,	250),
(30,	83,	1,	'薜荔',	200,	1,	200),
(31,	83,	1,	'非洲菊',	400,	1,	400);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('123123@gmail.com',	'$2y$10$LCYOGO3GfJluZ/.ou9b8Ye8dIjM.gdQu2ij4uaBPbZqMeFWubPlQe',	'2019-01-02 01:08:09');

DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plants_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dust` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleanup_co2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleanup_organic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleanup_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spread` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction_img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction_img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `goods_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `plants` (`id`, `plants_name`, `dust`, `cleanup_co2`, `cleanup_organic`, `cleanup_type`, `spread`, `manage`, `introduction_img1`, `introduction_img2`, `style`, `size`, `output`, `bug`, `created_at`, `updated_at`, `goods_id`) VALUES
(1,	'常春藤',	'4',	'6',	'9',	'甲醛、甲苯、三氯乙烯',	'7',	'4',	'introduction_img1-1.jpg',	'introduction_img1-2.jpg',	'常春藤屬常綠植物，且葉片具有二型性，也就是幼年期及成年期葉片形態不 同：幼年期的葉片著生於藤蔓性枝條上，具有匍匐特性。英國長春藤通常為三到五裂； 當植株攀爬到至相當之高度時，裂葉會消失而葉片呈橢圓形，莖頂開始會出現分枝， 全株呈直立生長，此為成年期。目前常見栽培的多數為斑葉品種，如｀Ingelise＇、 Kolibri及全綠之Evergreen及Dark Pittsburg＇等。',	'常春藤普遍作為小品盆栽放置 在書桌、咖啡桌或窗臺上。有 3-6 寸大 小規格。由於常春藤蔓生之習性，也常 作為吊盆，尺寸多在 6–8 寸盆間。常 春藤｀Dark Pittsburg＇可作為室內或室 外大樹下的地被覆蓋。',	'適當生產光度需維持1500-2500fc，生育適溫為20-25℃。介質保持在輕微乾燥狀態，爲控制葉斑病，須避免直接從葉面上灌溉。介質需排水良好，適當pH值為6.0。室內溫度16-24℃可維持常春藤良好的生長和品質，一些品種可容忍2℃甚至更低的低溫。建議室內光度至少需在150-250 fc以維持最高品質，耐陰品種經馴化後可忍受低至50-75 fc之低光，但較高光度有助維持較佳之品質。摘心可以促進分枝。當植株過大時，在任何季節都可換盆。每3-4個月施肥一次。',	'由於防治葉斑病之藥劑常會 造成常春藤毒害，故難用藥防治葉斑 病，需藉選用抗病砧木來防制，並減少 從葉面澆水。夏季高溫會減緩生長及發 根速率。缺水逆境導致葉片黃化或老葉 掉落。有些斑葉品會因為低光或葉片成 熟而減少葉斑',	'2018-12-14 07:00:22',	'2018-12-14 07:00:22',	1),
(2,	'大岩桐',	'9',	'3',	'不詳',	'不詳 ',	'6',	'5',	'introduction_img2-1.jpg',	'introduction_img2-2.jpg',	'大岩桐全株具有絨毛，具有塊莖。肉質莖及葉片肥厚，葉片呈橢圓形，葉緣鋸齒狀， 十字對生，葉深綠，葉脈為淺綠色。成熟植株高約10-35公分。花色具濃紫、鮮紅、深藍、粉 紅、純白、暗紅、斑點、鑲邊等變化。花冠鐘型開口側上，一次可開幾朵到幾十朵不等，花 徑寬約7-10 公分左右，可分為單瓣與重瓣，品種繁多顏色鮮豔。目前市場常見雜交種有愛娃 (‘Avanti’)、光輝(‘Glory’)及繡球(‘Brocade’)等不同花色品種',	'在市場上販賣有3 寸、4 寸及5 寸 為多，多應用在室內觀賞，在商業大樓、 居家及辦公室都常見，具有花大且顏色豔 麗等特性。',	'由於種子細小，需先將介質充分淋濕後，再將種子均勻撒在介質上。種子好光無需覆土，但需覆蓋一層保鮮膜提高濕度，發芽溫度在20-30℃，約15天發芽。待長出4片葉時再個別移至盆中，約經4-6個月開花。植株生育適溫在20-30℃，光度約2000-2500fc，空氣濕度稍高的通風環境。冬天氣溫低於16℃，生長遲緩或進入休眠，低於10-18℃時死亡。施肥可用好康多一號當基肥，每3個月施用一次。或取1公克20-20-20粉末肥料溶於3公升水中，每1-2週施用1次，應適時的補充微量元素。',	'室內光度以 50-100 fc 或更明亮 處為宜，避免太陽直曬，溫度以18-24℃為 佳，低於16-18℃時生長緩慢，並可能引起 葉緣捲曲，低於 10℃會產生寒害而導致死 亡。保持介質濕潤，但勿過度澆水。若室 內光線不足，則花苞無法順利開放。',	'2018-12-14 07:02:50',	'2018-12-14 07:02:50',	2),
(3,	'仙客來',	'3',	'4',	'3',	'甲醛',	'5',	'5',	'introduction_img3-1.jpg',	'introduction_img3-2.jpg',	'株高 約 20 公分，葉柄甚長，葉片心型，厚肉質，色濃綠，表面散布銀灰色斑塊。當植株 具有 5-8 片葉後，即開始進行花芽創始，之後以一片葉、一朵花的形式生長。喜好 冷涼，在臺灣冬至春季開花，花梗自葉腋處抽出，一梗一花，花蕾未綻時向下，當 花開啟後旋即向上翻卷，集中盛開於葉叢中央，略高於葉面之上。',	'在臺灣以3-5 寸盆花居多，亦可應 用於庭園佈置，如岩石園、地被、灌木間與 樹冠下種植。',	'15-20℃涼溫適宜塊莖形成。栽培介質需富含有機質， pH6.0-6.5佳，不可低於5.5。水分管理極為重要，若缺水24小時以上，葉片會立即變黃。相對濕度控制在70%以下可減少灰黴病危害，宜早晨澆水。可用0.1克20-20-20之粉末肥料溶於1公升的水，每3週施1次。於日/夜溫20/15℃可誘導其形成花芽，開花以後須適度減少給水量，避免球莖腐爛。室內管理方面，提供至少100fc光度，若光度小於25fc會造成黃葉或花梗延長。超過20℃花朵與植株壽命會減少。保持介質微濕潤，切勿直接由植株頂部澆水。',	'室內過於乾燥、高溫、低光或介 質過於乾旱，易造成葉片黃化；若直接由 植株頂端澆水使水珠殘留在苞片上，易造 成苞片腐爛、甚至植株倒伏。',	'2018-12-14 07:04:54',	'2018-12-14 07:04:54',	3),
(4,	'繡球花',	'5',	'8',	'不詳',	'不詳',	'8',	'4',	'introduction_img4-1.jpg',	'introduction_img4-2.jpg',	'繡球花又名洋繡球、八仙花、紫陽花，為八仙花屬落葉性灌木。葉具短柄、對生，橢 圓形或倒卵形，葉片肥厚光滑，先端銳尖，長10-25 公分，寬5-10 公分，邊緣有粗鋸齒。花頂 生，聚繖花序或圓錐花序，有總梗。聚繖花序有兩種花型，一為扁平的；另一為原球型的。 全為可孕的兩性花組成，或是由可孕或不可孕的 2 種小花組成。',	'繡球花以生產 6-8 寸盆者居 多，可作為盆栽、切花、庭園美化。 ',	'萼片顏色為粉紅色之品種，施肥宜用25-10-10；藍色萼片品種需提高鉀肥，施肥宜用25-5-30。在台灣平地，繡球花於夏至秋末抽稍展葉，秋、冬時花芽分化。花芽分化適溫為11-18℃，依品種不同約需6-10週的涼溫使花芽充分成熟。花芽成熟後，經自然落葉或人工除葉，並在低溫約4-7℃環境下暗儲6-8週，以滿足花芽的低溫需求，之後移至18-24℃使其開花。繡球花在室內生長適溫為18-24℃，可忍受50-100fc之低光，但植株易落葉且花色黯淡，盡量維持光強度高於250fc，可維持較佳的觀賞品質。',	'介質過於乾燥使植株失水時， 花瓣邊緣褐化的情形。高於 28℃持續 3 天以上出現高溫障礙，使新葉變小而 厚，葉片凹凸不平，不利日後開花。高溫乾燥易有紅蜘蛛危害。 ',	'2018-12-14 07:07:17',	'2018-12-14 07:07:17',	4),
(5,	'薜荔',	'10',	'7',	'不詳',	'不詳',	'4',	'4',	'introduction_img5-1.jpg',	'introduction_img5-2.jpg',	'薜荔又名木蓮、風不動、璧石虎。生性強健，耐陰、耐瘠力強。分佈於低海 拔地區，為常綠蔓性植物，蔓莖每節均可長出氣生根，以攀附他物。纖細的莖上著 生革質葉片；單葉呈卵心形，互生、全緣、葉端鈍而微凹，羽狀側脈 3-5 對，葉濃 綠尚稱平滑，但偶有小突起，葉背呈濃綠色。幼年葉長約 2.5 公分，寬 2 公分，成 熟葉質地較硬，深綠色，長約 7 公分。花期 3 - 5 月，隱頭果呈倒圓錐狀球形。',	'薜荔原生於臺灣平地或闊葉 林區，由於葉片小，質感細緻，故 常被利用為吊盆，或作為室內盆缽 植物。植栽規格 3–7 寸盆均有，可 作為盆栽、吊盆、牆面綠化。 ',	'栽培時以排水良好的肥沃砂質壤土最佳。生育適溫22-30℃。溫度過低，易落葉；溫度過高時，應以噴霧來降低葉面溫度。可栽植於明亮的散射光下或屋簷下、窗臺邊或室內明亮處栽植，均可生長良好。忌強烈的陽光直射。性喜濕度高的環境。在夏天每天需澆水一或二次，春秋季每2-3天澆水一次；但最基本的澆水原則仍為表面的介質乾燥時，再給予水分。除基肥外，生長季節約每隔30-45天施加追肥一次。冬季生長緩慢，應停止施肥，盆土仍需保持均勻濕潤。但寒流來襲時，應停止澆水。翌年春，可進行換盆、填土，並稍作修剪。',	'光強度不足會造成落葉，陽光直射、空氣濕度過低、介質過乾均會導致葉片萎凋皺縮乾枯。',	'2018-12-14 07:08:50',	'2018-12-14 07:08:50',	5),
(6,	'非洲菊',	'4',	'10',	'9',	'甲醛、甲苯、三氯乙烯',	'8',	'4',	'introduction_img6-1.jpg',	'introduction_img6-2.jpg',	'非洲菊別名太陽花、嘉寶菊、扶郎花，為多年生宿根性草本植物，栽培品 種繁多。非洲菊葉片革質，簇生於短縮莖，葉大而具缺刻，深綠色葉片襯托亮麗的 花朵，為外型迷人的觀賞植物。頭狀花序著生於花序梗上，原生有黃、紅及橙色花 朵，商業品種更育出粉、白、綠、鮭粉、鯡紅色及雙色花，花型有單瓣、重瓣與半重瓣型。 ',	'非洲菊有切花品種及盆花品種，亦有做大型景觀盆花與花壇使用，盆花常見規格為直徑 4-6 寸盆。',	'非洲菊宜於窗臺的明亮全日光照，正午需避免太陽直射，以 免加速花朵老化。生長適溫為 18–21℃。介質表面乾燥時澆水或施 以液肥，但切忌淹水。生長期每公 升水溶入1克 30-10-20 可溶性肥料，每個月施用 1-2 次。介質 pH 值 應介於 5.5-6.5。非洲菊為非絕對型 短日植物，可終年開花。濕冷時易 發生白粉病；高溫乾燥時易發生蟎 類危害。介質通氣不良則易發生爛 根或冠腐病。',	'非洲菊對於鎂和鐵的需求較高，每月應補充鎂與鐵，花期 更應注意微量元素的補充。溫度高 於 30℃或低於10℃則生長停滯，高 溫造成花小色淡、花苞敗育，寒害時葉面出現紫紅色斑塊。',	'2018-12-14 07:09:32',	'2018-12-14 07:09:32',	6);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `cellphone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'李和人',	'123123@gmail.com',	NULL,	'$2y$10$Dqxe3BSO25Wu3VEcUGOLQO1UxX.Zxwywbu31IKgyPnDdUnGtg.w1e',	'0988888888',	'0cFr3aIxFmsHiuijxROFsRY2CG85h9i8DpAAXP4eI3JRluVFLrDl5ZIL3Op6',	'2018-12-27 23:34:10',	'2018-12-27 23:34:10'),
(2,	'man',	'man@gmail.com',	NULL,	'$2y$10$p6Iiyx3wo1NN26JIMBc7eOA5hNLOPA1P4LU.KdrOuWuSM7MukSJaq',	'0912345678',	'UNlpQZ1VXPkWNtJMhFbvreJr5bPBpzaOSs6nSh9U3B7dhcHCcZ9cAfwtNmiy',	'2019-01-02 00:18:42',	'2019-01-02 00:18:42'),
(5,	'asiii',	'ass@gmail.com',	NULL,	'$2y$10$XafYKMjG9dZrO3/x3abt/OAliXi9aTnxVJCspiHZP74M5VYzQdvh2',	'0988888222',	'AfDbpFbWCfPOTmEGq7p7tXNq0rcmClhRyEv3dy2rhTgXVeeNJNkyIyNZAOpb',	'2019-01-08 03:35:45',	'2019-01-08 03:35:45');

-- 2019-01-11 05:00:12
