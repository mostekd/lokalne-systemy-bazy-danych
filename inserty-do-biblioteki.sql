INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('1','Polska');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('2','Słowacja');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('3','Słowenia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('4','Portugalia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('5','Hiszpania');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('6','Chorwacja');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('7','Austria');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('8','Belgia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('9','Holandia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('10','Francja');

INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('1','Romans');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('2','Fantastyka naukowa');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('3','Dreszczowiec');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('4','Powieść dystopijna');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('5','Historia alternatywna');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('6','Literatura przygodowa');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('7','Literatura dziecięca');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('8','Literatura młodzieżowa');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('9','Powieść');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('10','Fantastyka postapokaliptyczna');

INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('1','Stephen','King','1947-09-21');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('2','Cassandra','Clare','1973-07-27');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('3','Agatha','Christie','1890-09-15');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('4','Remigiusz','Mróz','1987-01-15');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('5','Stanisław','Lem','1921-09-12');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('6','Olga','Tokarczuk','1962-01-29');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('7','Suzanne','Collins','1962-08-10');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('8','Stephenie','Meyer','1973-12-24');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('9','Veronica','Roth','1988-08-19');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('10','Lucy Maud','Montgomery','1874-11-30');

INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('1','Biblioteka Wesoła Szkoła - Działoszyn','Józef Nitkiewicz');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('2','Biblioteka Wesoła Szkoła - Pajęczno','Jan Nowak');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('3','Biblioteka Wesoła Szkoła - Gdańsk','Adam Kowalski');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('4','Biblioteka Wesoła Szkoła - Gdynia','Tomasz Świech');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('5','Biblioteka Wesoła Szkoła - Elbląg','Mikołaj Całus');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('6','Biblioteka Wesoła Szkoła - Hel','Wojciech Warwas');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('7','Biblioteka Wesoła Szkoła - Zakopane','Wiktor Ochal');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('8','Biblioteka Wesoła Szkoła - Mikoszewo','Remigiusz Kalinowski');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('9','Biblioteka Wesoła Szkoła - Kraków','Kacper Stefanek');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('10','Biblioteka Wesoła Szkoła - Łódź','Piotr Wawrzyczek');

INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('1','Dyrektor biblioteki',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('2','Zastępca dyrektora biblioteki',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('3','Kierownik działu zbiorów specjalnych',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('4','Bibliotekarz ds. katalogowania',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('5','Bibliotekarz ds. informacji naukowej',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('6','Bibliotekarz ds. wypożyczeń',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('7','Bibliotekarz dziecięcy',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('8','Archiwista',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('9','Pracownik administracyjny',NULL);
INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('10','Asystent bibliotekarza',NULL);

INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('1','Wydawnictwo Albatros');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('2','Marginesy');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('3','Wydawnictwo Dolnośląskie');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('4','Wydawnictwo Sonia Draga');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('5','Wydawnictwo Literackie');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('6','Wydawnictwo Noir sur Blanc');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('7','Media Rodzina');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('8','Wydawnictwo Dolnośląskie');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('9','Wydawnictwo Amber');
INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('10','Wydawnictwo Nasza Księgarnia');


INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('1','0.10');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('2','0.20');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('3','0.30');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('4','0.40');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('5','0.50');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('6','0.60');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('7','0.70');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('8','0.80');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('9','0.90');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('10','1.00');

INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('1','9788382156843','1','To',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('2','9781534406254','1','Miasto Kości',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('3','9780006137122','1','Morderstwo w Orient Expressie',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('4','9788382809343','1','Ekspozycja ',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('5','9788308030219','1','Bajki robotów',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('6','9781910695715','1','Prowadź swój pług przez kości umarłych',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('7','9788372786371','1','Igrzyska śmierci',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('8','9781594133299','1','Zmierzch',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('9','9780062024022','1','Niezgodna',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('10','9788842516231','1','Ania z Zielonego Wzgórza',NULL);

INSERT INTO `typ_problemu`(`id_problemu`, `nazwa`, `kwota`) VALUES ('[value-1]','[value-2]','[value-3]');

INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('1','1','Nowicjusz Czytelniczy','30','4');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('2','2','Początkujący Czytelnik','40','5');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('3','3','Książkowy Adept','50','6');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('4','4','Entuzjasta Literatury','60','7');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('5','5','Młody Miłośnik Książek','70','8');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('6','6','Ciekawy Czytelnik','80','9');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('7','7','Pasjonat Książek','90','10');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('8','8','Zasłużony Czytelnik','100','11');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('9','9','Książkowy Ekspert','110','12');
INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('10','10','Książkowy Pasjonat','120','13');

INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('1','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('2','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('3','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('4','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('5','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('6','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('7','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('8','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('9','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('10','1','2024-05-28','2024-06-27','2024-05-28');

INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('1','1','1','plac Jana Pawła II 1','Działoszyn','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('2','1','2','plac Jana Pawła II 1','Pajęczno','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('3','1','3','plac Jana Pawła II 1','Gdańsk','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('4','1','4','plac Jana Pawła II 1','Gdynia','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('5','1','5','plac Jana Pawła II 1','Elbląg','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('6','1','6','plac Jana Pawła II 1','Hel','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('7','1','7','plac Jana Pawła II 1','Zakopane','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('8','1','8','plac Jana Pawła II 1','Mikoszewo','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('9','1','9','plac Jana Pawła II 1','Kraków','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('10','1','10','plac Jana Pawła II 1','Łódź','98-355','Łudzkie','0');

INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('1','2');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('2','1');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('3','3');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('4','3');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('5','5');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('6','6');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('7','5');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('8','7');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('9','8');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('10','9');

INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('1','1');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('2','2');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('3','3');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('4','4');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('5','5');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('6','6');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('7','7');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('8','8');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('9','9');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('10','10');

INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('1','1','1','1986','49.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('2','2','2','2007','39.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('3','3','3','1934','29.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('4','4','4','2015','34.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('5','5','5','1964','24.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('6','6','6','2009','45.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('7','7','7','2008','39.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('8','8','8','2005','39.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('9','9','9','2011','42.99');
INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('10','10','10','1908','19.99');


INSERT INTO `miejsce_ksiazki`(`id_miejsce`, `id_wydawnictwo_do_ksiazka`, `id_lokalizacja`, `ilosc`, `regal`) VALUES 
('1','1','1','10','A1'),
('2','2','2','5','B2'),
('3','3','3','7','C3'),
('4','4','4','6','D4'),
('5','5','5','8','E5'),
('6','6','6','12','F6'),
('7','7','7','15','G7'),
('8','8','8','9','H8'),
('9','9','9','11','I9'),
('10','10','10','14','J10');


INSERT INTO `uzytkownik`(`id_uzytkownika`, `id_biblioteka`, `id_stanowisko`, `id_karty_czlonkowskiej`, `imie`, `nazwisko`, `nr_dowodu`, `data_urodzenia`, `czarna_lista`, `login`, `haslo`, `czy_pracownik`) VALUES 
('1','1','1','1','Anna','Kowalska','AB1234567','1990-01-01','0','annak','password1','1'),
('2','2','2','2','Jan','Nowak','CD2345678','1985-05-05','0','jnowak','password2','0'),
('3','3','3','3','Maria','Wiśniewska','EF3456789','1978-07-15','0','mwisniewska','password3','1'),
('4','4','4','4','Piotr','Zieliński','GH4567890','1995-03-20','0','pzielinski','password4','0'),
('5','5','5','5','Katarzyna','Wójcik','IJ5678901','1982-09-25','1','kwojcik','password5','1'),
('6','6','6','6','Tomasz','Kamiński','KL6789012','1970-11-30','0','tkaminski','password6','0'),
('7','7','7','7','Aleksandra','Lewandowska','MN7890123','1992-04-10','0','alewandowska','password7','1'),
('8','8','8','8','Michał','Szymański','OP8901234','1988-12-12','1','mszymanski','password8','0'),
('9','9','9','9','Magdalena','Dąbrowska','QR9012345','1975-08-18','0','mdabrowska','password9','1'),
('10','10','10','10','Andrzej','Kozłowski','ST0123456','1980-06-06','0','akozlowski','password10','0');


INSERT INTO `wypozyczenia`(`id_wypozyczenia`, `id_uzytkownika`, `id_uzytkownik_pracownik`, `id_wydawnictwo_do_ksiazka`, `kwota_kary`, `czy_kara_oplacona`, `uwagi`, `data_wypozyczenia`, `data_oddania`) VALUES 
('1','1','1','1','10.00','0','Brak uwag','2024-01-01','2024-01-15'),
('2','2','2','2','0.00','1','Brak uwag','2024-02-01','2024-02-15'),
('3','3','3','3','5.00','0','Brak uwag','2024-03-01','2024-03-15'),
('4','4','4','4','0.00','1','Brak uwag','2024-04-01','2024-04-15'),
('5','5','5','5','15.00','0','Brak uwag','2024-05-01','2024-05-15'),
('6','6','6','6','0.00','1','Brak uwag','2024-06-01','2024-06-15'),
('7','7','7','7','20.00','0','Brak uwag','2024-07-01','2024-07-15'),
('8','8','8','8','0.00','1','Brak uwag','2024-08-01','2024-08-15'),
('9','9','9','9','25.00','0','Brak uwag','2024-09-01','2024-09-15'),
('10','10','10','10','0.00','1','Brak uwag','2024-10-01','2024-10-15');


INSERT INTO `wypozyczenia_do_typ_problemu`(`id_wypozyczenia`, `id_problemu`) VALUES 
('1',NULL),
('2',NULL),
('3',NULL),
('4',NULL),
('5',NULL),
('6',NULL),
('7',NULL),
('8',NULL),
('9',NULL),
('10',NULL);


INSERT INTO `wpisy_uzytkownikow`(`id_wpisu`, `id_uzytkownika`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_zatwierdzenia`, `data_dodania`) VALUES 
('1','1','1','Tytuł 1','Treść wpisu 1', NULL, '2024-01-01','2024-01-01'),
('2','2','2','Tytuł 2','Treść wpisu 2', NULL, '2024-02-01','2024-02-01'),
('3','3','3','Tytuł 3','Treść wpisu 3', NULL, '2024-03-01','2024-03-01'),
('4','4','4','Tytuł 4','Treść wpisu 4', NULL, '2024-04-01','2024-04-01'),
('5','5','5','Tytuł 5','Treść wpisu 5', NULL, '2024-05-01','2024-05-01'),
('6','6','6','Tytuł 6','Treść wpisu 6', NULL, '2024-06-01','2024-06-01'),
('7','7','7','Tytuł 7','Treść wpisu 7', NULL, '2024-07-01','2024-07-01'),
('8','8','8','Tytuł 8','Treść wpisu 8', NULL, '2024-08-01','2024-08-01'),
('9','9','9','Tytuł 9','Treść wpisu 9', NULL, '2024-09-01','2024-09-01'),
('10','10','10','Tytuł 10','Treść wpisu 10', NULL, '2024-10-01','2024-10-01');



INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('1','1','1','test1','test1',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('2','2','2','test2','test2',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('3','3','3','test3','test3',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('4','4','3','test4','test4',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('5','5','1','test5','test5',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('6','1','1','test6','test6',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('7','1','1','test7','test7',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('8','1','1','test8','test8',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('9','1','1','test9','test9',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('10','1','1','test10','test10',NULL,'2024-04-25',NULL);

INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('1','1','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('2','2','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('3','3','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('4','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('5','5','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('6','6','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('7','7','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('8','8','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('9','9','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('10','10','2024-05-28','10.00','1');