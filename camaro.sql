-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 26 2022 р., 13:22
-- Версія сервера: 10.4.22-MariaDB
-- Версія PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `camaro`
--

-- --------------------------------------------------------

--
-- Структура таблиці `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `menu`
--

INSERT INTO `menu` (`id`, `title`) VALUES
(1, '1-ше покоління'),
(2, '2-ше покоління'),
(3, '3-ше покоління'),
(4, '4-ше покоління'),
(5, '5-ше покоління'),
(6, '6-ше покоління');

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `category_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `content`, `date`, `category_id`) VALUES
(1, '2019 Camaro SS', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Caffeine_and_Octane.jpg/305px-Caffeine_and_Octane.jpg', 'В апреле 2018 года был представлен модернизированный Camaro 2019 модельного года. Обновлённый внешний вид позволил не только усилить спортивное восприятие модели, но и улучшил обтекаемость автомобиля, а также охлаждение некоторых его узлов. Новый передок, теперь полностью разный у версий LS/LT, RS и SS. Так, пакет внешнего оформления RS для модели LT добавляет автомобилю полированную чёрную решётку с хромированными вставками снизу, новые светодиодные фары и диффузор сзади. У спортивной модели SS раскрытый передок с воздушными дефлекторами по краям бампера дополняется специальными фарами с новой фирменной светодиодной окантовкой и более рельефным капотом. Сзади все модели получили овальные светодиодные фонари полностью красные для LS/LT и с прозрачным затенённым центром для RS, SS и ZL1. Модель SS теперь по заказу вместо восьмиступенчатой оснащается десятиступенчатой автоматической трансмиссией.', '0000-00-00 00:00:00', 6),
(2, 'Camaro RS 1967', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/1967_Chevrolet_Camaro_RS_%2821432547296%29.jpg/250px-1967_Chevrolet_Camaro_RS_%2821432547296%29.jpg', '29 вересня 1966 (1967 модельний рік) побачив світ перший Chevrolet Camaro. Це була серйозна і цілком конкурентноспроможна відповідь General Motors на Mustang, який вже два роки успішно випускав Ford.\r\n\r\nСлово «Camaro» сленгова інтерпретація французького «comrade» — друг, товариш. Таке походження назви легендарного авто з\'ясувалося не відразу. У 1967 році на питання про походження слова «Camaro» менеджери Chevrolet відповідали: «це назва маленької, злої тваринки, що живиться Мустангами». До випуску суперника такого популярного автомобіля як Ford Mustang, Chevrolet підійшло більш ніж серйозно. Із старту продажів Camaro поставлявся в двох кузовах (купе і кабріолет) з чотирма різними типами двигунів і налічував близько 80 заводських опцій. На той час найпотужнішим з стандартних для Camaro двигунів була V-подібна вісімка робочим об\'ємом 5,7 літрів видавала 255 к.с.\r\n\r\nНайпопулярнішим пакетом додаткових опцій був SS. Незважаючи на безліч доробок екстер\'єру, серед яких були повітрозабірник на капоті і чорна решітка радіатора із захованими за нею фарами, найзначнішою зміною в цьому пакті був, збільшений до 6,5 літрів, двигун потужністю 325 к.с. (у пізніших випусках 375 к.с.).', '0000-00-00 00:00:00', 1),
(3, 'Camaro SS 1969', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/1969_red_Chevrolet_Camaro_SS_side.JPG/250px-1969_red_Chevrolet_Camaro_SS_side.JPG', ' 1969 дизайнери Chevrolet не перестають удосконалювати і без того спортивний зовнішній вигляд автомобіля. Решітка радіатора тепер втоплена глибше в кузов, заховані за неї круглі фари сегментовані в три вузькі смужки кожна, оновлені задні крила і ліхтарі, додають силуету ширший і присадкуватий вигляд. Інтер\'єр отримав нову приладову панель, і зручніші сидіння.\r\n\r\nКількість доступних двигунів збільшено до дванадцяти агрегатів. Найпотужніший 5,7-літровий двигун поставляється тепер у трьох варіантах — 325, 350 і 375 кінських сил. Camaro з 375-сильним агрегатом відкриває гонку «Індіанаполіс 500» як пейс-кара, після чого Chevrolet пропонує заводські копії цього авто. Білий з оранжевими смугами кабріолет, хоч і пропонується як точна копія пейс-кара, найчастіше поставляється з табуном в 350 конячок під капотом. Зараз таким невідповідністю користуються шахраї, видаючи звичайні Camaro за репліку пейс-кара, і призначають ціну значно вище реальної вартості авто.', '0000-00-00 00:00:00', 1),
(4, 'Camaro (1970-1973)', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/%2773_Chevrolet_Camaro_%28Cruisin%27_At_The_Boardwalk_%2712%29.JPG/250px-%2773_Chevrolet_Camaro_%28Cruisin%27_At_The_Boardwalk_%2712%29.JPG', 'Всього лише через 3 роки після дебюту Camaro, Chevrolet представляє модель другого покоління, що буде випускатися протягом 12 років. Незважаючи на похмурі прогнози про зменшення ринку і купівельного інтересу в середині 1970 модельного року Chevrolet виводить на ринок Camaro другого покоління. Новий дизайн європейського стилю, кузов став довшим на 5 см, двері на 10 см, а кабріолет більше не випускається. Обіцяний двигун об\'ємом 7,4 літра так і не був побудований, а об\'єм 6,5-літрового збільшений на сто кубиків, але за рішенням менеджменту компанії по-старому маркується числом 396 (об\'єм двигуна в кубічних дюймах) як вже добре зарекомендував себе в очах покупців.\r\n\r\nНайрадикальніші зміни торкнулися модифікації Z-28. Новий двигун об\'ємом 5,7 літра і потужністю 360 кінських сил став надійнішим, більш передбачуваним і потужним ніж встановлювати до 1970 року. Також вперше модифікація Z-28 початку пропонуватися з автоматичною коробкою передач.', '0000-00-00 00:00:00', 2),
(5, 'Chevrolet Camaro III', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/85-90_Chevrolet_Camaro_IROC-Z.jpg/250px-85-90_Chevrolet_Camaro_IROC-Z.jpg', 'У 1982 Chevrolet запускає виробництво третього покоління Camaro. Новий дизайн, системи вприскування палива, 4-діапазонна АКПП, 16-ти дюймові диски, кузов хетчбек і 4-х циліндровий двигун потужністю 90 к.с.\r\n\r\nНайпотужнішим у ті роки став 5,7-літровий V8 оснащений новою системою TPI і табуном в 225 коней. 5,7 TPI встановлювався тільки з АКПП, а 5,0 TPI можна було придбати з механічною КПП.', '0000-00-00 00:00:00', 3),
(6, 'Camaro (1993-1997)', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/1993ChevroletCamaroZ28-001.jpg/250px-1993ChevroletCamaroZ28-001.jpg', 'У 1993 році вийшла четверта генерація Camaro. Яка, за словами багатьох ентузіастів моделі, остаточно втратила м\'язи. Було випущено 42 098 екземплярів четвертого покоління Camaro, останній з них — влітку 2002 року.\r\n\r\nЗ 1993 по 2001 рік Camaro мав три варіанти двигуна: 3.4 V6 — 162 к.с., і V8 LT1 потужністю 279 к.с., а з 1998 по 2001 рік алюмінієвий блок LS1, що видає 288 і 305 к.с. відповідно.', '0000-00-00 00:00:00', 4),
(7, 'Camaro V', '../img/images4.jpg', 'Виробництво нового Camaro розпочалося 16 березня 2009 року після кількох років перерви з попереднім поколінням, виробництво якого закінчилося в 2002 році. Camaro V надійшов у продаж в 2009 році. Автомобіль пропонується з двома модификаціями двигунів: на Camaro LT — V6 304 к.с., Camaro SS — V8 на 400 та 427 к.с.', '0000-00-00 00:00:00', 5),
(69, 'Chevrolet Camaro', '../img/no-image.jpg', 'Автомобіль сегменту Pony car виробництва Chevrolet, який виготовляється з 1966 року.\r\n\r\nВиробництво було припинено в 2002 році і відновлено на новій технічній базі в 2009 році. Назва Camaro є похідним від французького camarade — друг, приятель.\r\n\r\nЯк модель, Chevrolet Camaro існує й досі, але за свою історію платформа і концепція автомобіля не раз зазнавала серйозних змін.', '2022-04-26 00:00:00', 0);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_menu` (`id`),
  ADD KEY `id_menu_2` (`id`),
  ADD KEY `id_menu_3` (`id`);

--
-- Індекси таблиці `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `category_id_3` (`category_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
