INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('4','Włochy');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('5','Słowacja');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('6','Słowenia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('7','Portugalia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('8','Hiszpania');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('9','Chorwacja');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('10','Austria');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('11','Belgia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('12','Holandia');
INSERT INTO `kraje`(`id_kraju`, `nazwa_kraju`) VALUES ('13','Francja');

INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('4','Romans');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('5','Fantastyka naukowa');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('6','Dreszczowiec');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('7','Powieść dystopijna');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('8','Historia alternatywna');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('9','Literatura przygodowa');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('10','Literatura dziecięca');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('11','Literatura młodzieżowa');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('12','Powieść');
INSERT INTO `gatunek`(`id_gatunek`, `nazwa`) VALUES ('13','Fantastyka postapokaliptyczna');

INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('4','Stephen','King','1947-09-21');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('5','Cassandra','Clare','1973-07-27');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('6','Agatha','Christie','1890-09-15');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('7','Remigiusz','Mróz','1987-01-15');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('8','Stanisław','Lem','1921-09-12');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('9','Olga','Tokarczuk','1962-01-29');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('10','Suzanne','Collins','1962-08-10');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('11','Stephenie','Meyer','1973-12-24');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('12','Veronica','Roth','1988-08-19');
INSERT INTO `autorzy`(`id_autor`, `imie`, `nazwisko`, `data_urodzenia`) VALUES ('13','Lucy Maud','Montgomery','1874-11-30');

INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('4','Biblioteka Wesoła Szkoła - Działoszyn','Józef Nitkiewicz');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('5','Biblioteka Wesoła Szkoła - Pajęczno','Jan Nowak');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('6','Biblioteka Wesoła Szkoła - Gdańsk','Adam Kowalski');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('7','Biblioteka Wesoła Szkoła - Gdynia','Tomasz Świech');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('8','Biblioteka Wesoła Szkoła - Elbląg','Mikołaj Całus');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('9','Biblioteka Wesoła Szkoła - Hel','Wojciech Warwas');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('10','Biblioteka Wesoła Szkoła - Zakopane','Wiktor Ochal');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('11','Biblioteka Wesoła Szkoła - Mikoszewo','Remigiusz Kalinowski');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('12','Biblioteka Wesoła Szkoła - Kraków','Kacper Stefanek');
INSERT INTO `biblioteka`(`id_biblioteka`, `nazwa`, `menadzer`) VALUES ('13','Biblioteka Wesoła Szkoła - Łódź','Piotr Wawrzyczek');

INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('4','4','1','test1','test1',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('5','5','2','test2','test2',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('6','6','2','test3','test3',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('7','7','3','test4','test4',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('8','8','3','test5','test5',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('9','9','1','test6','test6',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('10','10','1','test7','test7',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('11','11','3','test8','test8',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('12','12','1','test9','test9',NULL,'2024-04-25',NULL);
INSERT INTO `artykuly`(`id_artykulu`, `id_biblioteka`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_dodania`, `data_wygasniecia`) VALUES ('13','13','1','test10','test10',NULL,'2024-04-25',NULL);

INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('9','4');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('10','5');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('11','6');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('12','7');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('13','8');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('14','9');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('15','10');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('16','11');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('17','12');
INSERT INTO `autor_do_ksiazka`(`id_ksiazki`, `id_autor`) VALUES ('18','13');

INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('9','2');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('10','1');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('11','3');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('12','3');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('13','5');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('14','6');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('15','5');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('15','7');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('15','8');
INSERT INTO `gatunek_do_ksiazka`(`id_ksiazki`, `id_gatunek`) VALUES ('15','9');

INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('4','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('5','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('6','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('7','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('8','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('9','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('10','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('11','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('12','1','2024-05-28','2024-06-27','2024-05-28');
INSERT INTO `karta_czlonkowska`(`id_karty_czlonkowskiej`, `id_rangi`, `data_zalozenia_karty`, `data_wygasniecia`, `data_oplaty`) VALUES ('13','1','2024-05-28','2024-06-27','2024-05-28');

INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('9','9788382156843','1','To',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('10','9781534406254','1','Miasto Kości',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('11','9780006137122','1','Morderstwo w Orient Expressie',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('12','9788382809343','1','Ekspozycja ',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('13','9788308030219','1','Bajki robotów',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('14','9781910695715','1','Prowadź swój pług przez kości umarłych',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('15','9788372786371','1','Igrzyska śmierci',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('16','9781594133299','1','Zmierzch',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('17','9780062024022','1','Niezgodna',NULL);
INSERT INTO `ksiazki`(`id_ksiazki`, `ibsn`, `aktywna`, `nazwa`, `ilosc_dni_wypozyczenia`) VALUES ('18','9788842516231','1','Ania z Zielonego Wzgórza',NULL);

INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('4','1','4','plac Jana Pawła II 1','Działoszyn','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('5','1','5','plac Jana Pawła II 1','Pajęczno','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('6','1','6','plac Jana Pawła II 1','Gdańsk','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('7','1','7','plac Jana Pawła II 1','Gdynia','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('8','1','8','plac Jana Pawła II 1','Elbląg','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('9','1','9','plac Jana Pawła II 1','Hel','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('10','1','10','plac Jana Pawła II 1','Zakopane','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('11','1','11','plac Jana Pawła II 1','Mikoszewo','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('12','1','12','plac Jana Pawła II 1','Kraków','98-355','Łudzkie','0');
INSERT INTO `lokalizacje`(`id_lokalizacja`, `id_kraju`, `id_biblioteka`, `adres`, `miejscowosc`, `kod_pocztowy`, `wojewodztwo`, `czy_magazyn`) VALUES ('13','1','13','plac Jana Pawła II 1','Łódź','98-355','Łudzkie','0');

INSERT INTO `miejsce_ksiazki`(`id_miejsce`, `id_wydawnictwo_do_ksiazka`, `id_lokalizacja`, `ilosc`, `regal`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]');

INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('4','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('5','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('6','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('7','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('8','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('9','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('10','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('11','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('12','4','2024-05-28','10.00','1');
INSERT INTO `oplaty`(`id_oplata`, `id_karty_czlonkowskiej`, `data_oplacenia`, `kwota`, `ilosc_oplaconych_miesiecy`) VALUES ('13','4','2024-05-28','10.00','1');

INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('4','0.40');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('5','0.50');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('6','0.60');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('7','0.70');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('8','0.80');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('9','0.90');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('10','0.10');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('11','0.11');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('12','0.22');
INSERT INTO `rabaty`(`id_rabatu`, `wartosc_rabatu`) VALUES ('13','0.33');

INSERT INTO `rangi`(`id_rangi`, `id_rabatu`, `nazwa_rangi`, `ilosc_ptk`, `poziom`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]');

INSERT INTO `stanowisko`(`id_stanowisko`, `nazwa_stanowiska`, `opis`) VALUES ('[value-1]','[value-2]','[value-3]');

INSERT INTO `typ_problemu`(`id_problemu`, `nazwa`, `kwota`) VALUES ('[value-1]','[value-2]','[value-3]');

INSERT INTO `uzytkownik`(`id_uzytkownika`, `id_biblioteka`, `id_stanowisko`, `id_karty_czlonkowskiej`, `imie`, `nazwisko`, `nr_dowodu`, `data_urodzenia`, `czarna_lista`, `login`, `haslo`, `czy_pracownik`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]','[value-10]','[value-11]','[value-12]');

INSERT INTO `wpisy_uzytkownikow`(`id_wpisu`, `id_uzytkownika`, `id_uzytkownik_pracownik`, `tytul`, `tresc`, `link`, `data_zatwierdzenia`, `data_dodania`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]');

INSERT INTO `wydawnictwo`(`id_wydawnictwo`, `nazwa`) VALUES ('[value-1]','[value-2]');

INSERT INTO `wydawnictwo_do_ksiazka`(`id_wydawnictwo`, `id_ksiazki`, `id_wydawnictwo_do_ksiazka`, `rok_wydania`, `cena`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]');

INSERT INTO `wypozyczenia`(`id_wypozyczenia`, `id_uzytkownika`, `id_uzytkownik_pracownik`, `id_wydawnictwo_do_ksiazka`, `kwota_kary`, `czy_kara_oplacona`, `uwagi`, `data_wypozyczenia`, `data_oddania`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]');

INSERT INTO `wypozyczenia_do_typ_problemu`(`id_wypozyczenia`, `id_problemu`) VALUES ('[value-1]','[value-2]');
