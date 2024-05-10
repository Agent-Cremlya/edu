START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `remarks` (
  `ID_user` int NOT NULL,
  `topic` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `remarks` (`ID_user`, `topic`, `text`) VALUES
(1, 'Отзыв о туре: Крым', 'Отлично проведенное время за отлично организованный тур!'),
(2, 'Отзыв о туре: Кавказ', 'В целом неплохо, однако менталитет меня не на шутку удивил.'),
(3, 'Отзыв о туре: Алтай', 'Наконец-то ощутил своей душой и телом красоты русской Сибири, благодарю!'),


CREATE TABLE `tours` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `programm` text NOT NULL,
  `photo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `tours` (`id`, `name`, `programm`, `photo`) VALUES
(1, 'Крым', ' Солнце, море, горы: твой идеальный крымский отпуск!', 'img/crimea.jpg'),
(2, 'Кавказ', ' Дикие горы, чистые реки: покори вершины Кавказа!', 'img/kavkaz.jpg'),
(3, 'Алтай', 'Необъятные просторы, бескрайние леса: погрузись в магию Алтая!', 'img/altay.jpg'),
(4, 'Санкт-Петербург', ' Культурная столица, город белых ночей: Санкт-Петербург очарует тебя!', 'img/peter.jpg');

CREATE TABLE `users` (
  `ID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `Name`, `Login`, `Pass`) VALUES
(1, 'zxc', 'zxc_00', '001'),
(2, 'Вася', 'vasya54', '002'),
(3, 'Олег', 'o_leg', '222');


ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
