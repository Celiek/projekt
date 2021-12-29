-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Gru 2021, 22:17
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktorzy`
--

CREATE TABLE `aktorzy` (
  `ID_AKTOR` int(11) NOT NULL,
  `AKTOR_IMIE` varchar(65) COLLATE utf8_polish_ci NOT NULL,
  `AKTOR_NAZWISKO` varchar(65) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `aktorzy`
--

INSERT INTO `aktorzy` (`ID_AKTOR`, `AKTOR_IMIE`, `AKTOR_NAZWISKO`) VALUES
(0, 'Scodelario', '12'),
(2, 'Yahya ', 'Abdul-Mateen II'),
(3, 'Keanu ', 'Reeves'),
(4, 'Carrie-Anne', 'Moss'),
(5, 'Priyanka', 'Chopra'),
(6, 'Kaya', 'Scodelario'),
(7, 'Rebbeca ', 'Ferguson'),
(8, 'Oscar', 'Isaac'),
(9, 'Jason', 'Momoa'),
(10, 'Kaya', 'Scodelario'),
(11, 'Hannah', 'John-Kamen'),
(12, 'Javier', 'Bardem'),
(13, 'Manolo', 'Solo'),
(14, 'Irena', 'Melcer'),
(15, 'Sławomira', 'Łozinska'),
(16, 'Barbara', 'Jonak'),
(17, 'Krzysztof', 'Stroiński'),
(18, 'Andy', 'Samberg'),
(19, 'Selena', 'Gomez'),
(20, 'Kathryn', 'Hahn');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane_rezyser`
--

CREATE TABLE `dane_rezyser` (
  `ID_REZYSER` int(11) NOT NULL,
  `REZYSER_NAZWSIKO` varchar(65) COLLATE utf8_polish_ci NOT NULL,
  `REZYSER_IMIE` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dane_rezyser`
--

INSERT INTO `dane_rezyser` (`ID_REZYSER`, `REZYSER_NAZWSIKO`, `REZYSER_IMIE`) VALUES
(1, 'Lana', 'Wachowsky'),
(2, 'Jon', 'Watts'),
(3, 'Denis', 'Villeneuve'),
(4, 'Johannes', 'Roberts'),
(5, 'Fernando León a', 'de Arano'),
(6, 'Michał', 'Otłowski'),
(7, 'Jennifer', 'Kluska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gen_aktorzy`
--

CREATE TABLE `gen_aktorzy` (
  `ID_AKTOR` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `rola` varchar(55) COLLATE utf8_polish_ci NOT NULL,
  `gen_aktorzy_id` int(11) NOT NULL,
  `aktorzy_aktorzy_id` int(11) NOT NULL,
  `gen_opis_gen_opizy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gen_aktorzy`
--

INSERT INTO `gen_aktorzy` (`ID_AKTOR`, `id_film`, `rola`, `gen_aktorzy_id`, `aktorzy_aktorzy_id`, `gen_opis_gen_opizy_id`) VALUES
(0, 1, 'Drugo planowa', 5, 5, 5),
(2, 2, 'pierwszoplanowa', 2, 2, 2),
(3, 1, 'pierwszoplanowa', 3, 3, 3),
(4, 1, 'pierwszoplanowa', 4, 4, 4),
(5, 1, 'Drugo planowa', 5, 5, 5),
(6, 3, 'Pierwszoplanowa', 6, 6, 6),
(7, 3, 'Pierwszoplanowa', 7, 7, 7),
(8, 8, 'Pierwszoplanowa', 8, 8, 8),
(9, 9, 'Pierwszoplanowa', 9, 9, 9),
(10, 10, 'pierwszoplanowa', 10, 4, 1),
(11, 11, 'pierwszoplanowa', 11, 4, 1),
(12, 12, 'pierwszoplanowa', 12, 5, 1),
(13, 13, 'pierwszoplanowa', 13, 5, 1),
(14, 14, 'drugoplanowa', 14, 6, 1),
(15, 15, 'pierwszoplanowa', 15, 6, 1),
(16, 16, 'drugoplanowa', 16, 7, 2),
(17, 17, 'drugoplanowa', 17, 7, 2),
(18, 18, 'pierwszoplanowa', 18, 7, 2),
(19, 19, 'pierwszoplanowa', 19, 8, 2),
(20, 20, 'pierwszoplanowa', 20, 8, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gen_opisy`
--

CREATE TABLE `gen_opisy` (
  `ID_FILM` int(11) NOT NULL,
  `ID_REZYSER` int(11) NOT NULL,
  `DATA_PREMIERY` date DEFAULT NULL,
  `OPIS_FILMU` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `ID_STUDIO` int(11) NOT NULL,
  `REZERWACJA_ID_KINO` int(11) NOT NULL,
  `GEN_OPIS_ID` int(11) NOT NULL,
  `GEN_AKTORZY_GEN_AKTORZY_ID` int(11) NOT NULL,
  `GEN_REZYSER_GEN_REZYSER_ID` int(11) NOT NULL,
  `STUDIA_STUDIA_ID` int(11) NOT NULL,
  `film_nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gen_opisy`
--

INSERT INTO `gen_opisy` (`ID_FILM`, `ID_REZYSER`, `DATA_PREMIERY`, `OPIS_FILMU`, `ID_STUDIO`, `REZERWACJA_ID_KINO`, `GEN_OPIS_ID`, `GEN_AKTORZY_GEN_AKTORZY_ID`, `GEN_REZYSER_GEN_REZYSER_ID`, `STUDIA_STUDIA_ID`, `film_nazwa`) VALUES
(1, 1, '2021-12-20', 'Kiedy cały świat dowiaduje się, że pod maską Spider Mana skrywa się Peter Parker, superbohater decyduje się zwrócić o pomoc do Doktora Strange\'a.', 1, 1, 1, 1, 3, 3, 'SPIDERMAN NO WAY HOME'),
(2, 2, '2021-11-24', 'Film Diuna opowiada historię niezwykłej, pełnej przygód i emocji podróży Paula Atreidesa. Temu genialnemu i utalentowanemu młodemu człowiekowi pisane jest wspaniałe przeznaczenie, którego on sam nie j', 2, 2, 2, 2, 2, 2, 'DIUNA'),
(3, 3, '2021-12-24', 'Podążaj za Neo, który prowadzi zwyczajne życie w San Francisco, gdzie jego terapeuta przepisuje mu niebieskie pigułki. Jednak Morfeusz oferuje mu czerwoną pigułkę i ponownie otwiera jego umysł na świa', 3, 3, 3, 3, 3, 3, 'MATRIX RESSURECTIONS'),
(4, 4, '2021-11-19', 'Raccoon City, niegdyś kwitnąca siedziba giganta farmaceutycznego Umbrella Corporation, jest teraz umierającym miastem na Środkowym Zachodzie. Przeniesienie firmy sprawiło, że miasto stało się pustkowi', 4, 4, 4, 4, 4, 4, 'Resident Evil Witajcei w raccoon City'),
(5, 5, '2021-12-03', 'Jak daleko posunie się Blanco (Javier Bardem), charyzmatyczny właściciel rodzinnej fabryki, aby otrzymać lokalną nagrodę dla najlepszego biznesu? Presja, by wszystko było idealnie, zderza się z nieprz', 5, 5, 5, 5, 5, 5, 'Szef Roku'),
(6, 6, '2021-12-03', 'Spokój mieszkańców kamienicy na warszawskim Mokotowie burzy pojawienie się rzekomego, prawnego właściciela budynku. Stosując bezwzględne metody, mężczyzna zaczyna zmuszać kolejne rodziny do wyprowadzk', 6, 6, 6, 6, 6, 6, 'Lokatorka'),
(7, 7, '2021-01-14', 'Kiedy tajemniczy wynalazek Van Helsinga wariuje, Drakula i jego potworni przyjaciele zostają zamienieni w ludzi, a Johnny staje się potworem. Pozbawiony swoich wampirzych mocy Drac musi połączyć siły ', 7, 7, 7, 7, 7, 7, 'Hotel Transylwania Transformania');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kina`
--

CREATE TABLE `kina` (
  `ID_KINA` int(11) NOT NULL,
  `ULICA` varchar(65) COLLATE utf8_polish_ci DEFAULT NULL,
  `NAZWA_KINA` varchar(65) COLLATE utf8_polish_ci DEFAULT NULL,
  `OPIS_KINA` varchar(265) COLLATE utf8_polish_ci DEFAULT NULL,
  `KINA_ID` int(11) NOT NULL,
  `REZERWACJA_REZERWACJA_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kina`
--

INSERT INTO `kina` (`ID_KINA`, `ULICA`, `NAZWA_KINA`, `OPIS_KINA`, `KINA_ID`, `REZERWACJA_REZERWACJA_ID`) VALUES
(1, ' Odrodzenia 9', 'Stylowy', 'Serwis internetowy Centrum Kultury Filmowej Stylowy, zamojskiego ', 1, 1),
(2, 'CH Plaza, Lipowa 13', 'Cinema City', 'Cinema City Lublin Plaza składa się z 8 klimatyzowanych sal, któr', 2, 2),
(3, 'Aleja Spółdzielczości Pracy 36B, 20-147 Lublin', 'Multikino', 'Multikino, należące do Grupy Vue International – lidera na europe', 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `ID_KLIECI` int(11) NOT NULL,
  `KLIENT_NAZWISKO` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `KLIENT_IMIE` varchar(35) COLLATE utf8_polish_ci NOT NULL,
  `haslo` char(25) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` char(30) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `ID_KINO` int(1) NOT NULL,
  `ID_SALA` int(11) NOT NULL,
  `ID_GODZINA` int(11) DEFAULT NULL,
  `ID_KLIENT` int(11) DEFAULT NULL,
  `ID_FILM` int(11) DEFAULT NULL,
  `data_filmu` int(11) NOT NULL,
  `gen_opis_id_filmu` int(11) NOT NULL,
  `rezerwacja_id` int(11) NOT NULL,
  `klienci_klienci_id` int(11) NOT NULL,
  `kina_kina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `studia`
--

CREATE TABLE `studia` (
  `ID_STUDIO` int(11) NOT NULL,
  `STUDIO_NAZWA` varchar(55) COLLATE utf8_polish_ci NOT NULL,
  `STUDIO_OPIS` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `studia`
--

INSERT INTO `studia` (`ID_STUDIO`, `STUDIO_NAZWA`, `STUDIO_OPIS`) VALUES
(1, '20TH Century Fox', ' jedna z głównych amerykańskich wytwórni filmowych, położona w Century City w obszarze hrabstwa Los Angeles na zachód od Beverly Hills, własność The Walt Disney Company. W 1949 roku powstał oddział 20'),
(2, 'Blue Sky', 'Blue Sky Studios powstało 22 lutego 1987 roku, założone przez artystów i techników, którzy wcześniej pracowali dla firmy The Walt Disney Company podczas tworzenia filmu Tron, a jednocześnie zatrudnien'),
(3, 'Goldwyn Pictures', 'amerykańska wytwórnia filmowa założona w 1916 roku przez Samuela Goldfisha we współpracy z broadwayowskimi producentami teatralnymi Edgarem i Archibaldem Selwyn. Z połączenia obu nazwisk powstała nazw');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjęcia_filmów`
--

CREATE TABLE `zdjęcia_filmów` (
  `ID_ZDJECIA` int(11) NOT NULL,
  `LINK` varchar(500) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zdjęcia_filmów`
--

INSERT INTO `zdjęcia_filmów` (`ID_ZDJECIA`, `LINK`) VALUES
(1, 'https://fwcdn.pl/fpo/94/76/469476/7972251.6.jpg'),
(2, 'https://fwcdn.pl/fpo/02/61/850261/7985243.6.jpg'),
(3, 'https://fwcdn.pl/fpo/85/24/838524/7983979.6.jpg'),
(4, 'https://fwcdn.pl/fpo/25/93/862593/7986029.6.jpg'),
(5, 'https://fwcdn.pl/fpo/03/14/10000314/7982390.6.jpg'),
(6, 'https://fwcdn.pl/fpo/01/20/870120/7979691.6.jpg'),
(7, 'https://fwcdn.pl/fpo/03/26/840326/7976952.6.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`ID_AKTOR`);

--
-- Indeksy dla tabeli `dane_rezyser`
--
ALTER TABLE `dane_rezyser`
  ADD PRIMARY KEY (`ID_REZYSER`);

--
-- Indeksy dla tabeli `gen_aktorzy`
--
ALTER TABLE `gen_aktorzy`
  ADD PRIMARY KEY (`ID_AKTOR`);

--
-- Indeksy dla tabeli `gen_opisy`
--
ALTER TABLE `gen_opisy`
  ADD PRIMARY KEY (`ID_FILM`),
  ADD KEY `ID_REZYSER` (`ID_REZYSER`);

--
-- Indeksy dla tabeli `kina`
--
ALTER TABLE `kina`
  ADD PRIMARY KEY (`ID_KINA`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`ID_KLIECI`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`rezerwacja_id`),
  ADD KEY `ID_KINO` (`ID_KINO`),
  ADD KEY `ID_KLIENT` (`ID_KLIENT`),
  ADD KEY `IF_FILM` (`ID_FILM`);

--
-- Indeksy dla tabeli `studia`
--
ALTER TABLE `studia`
  ADD PRIMARY KEY (`ID_STUDIO`);

--
-- Indeksy dla tabeli `zdjęcia_filmów`
--
ALTER TABLE `zdjęcia_filmów`
  ADD PRIMARY KEY (`ID_ZDJECIA`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD CONSTRAINT `aktorzy_ibfk_1` FOREIGN KEY (`ID_AKTOR`) REFERENCES `gen_aktorzy` (`ID_AKTOR`);

--
-- Ograniczenia dla tabeli `gen_opisy`
--
ALTER TABLE `gen_opisy`
  ADD CONSTRAINT `gen_opisy_ibfk_1` FOREIGN KEY (`ID_REZYSER`) REFERENCES `dane_rezyser` (`ID_REZYSER`);

--
-- Ograniczenia dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`ID_KINO`) REFERENCES `kina` (`ID_KINA`),
  ADD CONSTRAINT `rezerwacje_ibfk_2` FOREIGN KEY (`ID_KLIENT`) REFERENCES `klienci` (`ID_KLIECI`),
  ADD CONSTRAINT `rezerwacje_ibfk_3` FOREIGN KEY (`ID_FILM`) REFERENCES `gen_opisy` (`ID_FILM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
