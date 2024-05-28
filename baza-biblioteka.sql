CREATE DATABASE IF NOT EXISTS biblioteka;
USE biblioteka;

CREATE TABLE kraje (
    id_kraju INT PRIMARY KEY,
    nazwa_kraju VARCHAR(100)
);

CREATE TABLE gatunek (
    id_gatunek INT PRIMARY KEY,
    nazwa VARCHAR(50)
);

CREATE TABLE autorzy (
    id_autor INT PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    data_urodzenia DATE
);

CREATE TABLE biblioteka (
    id_biblioteka INT PRIMARY KEY,
    nazwa VARCHAR(100),
    menadzer VARCHAR(100)
);

CREATE TABLE stanowisko (
    id_stanowisko INT PRIMARY KEY,
    nazwa_stanowiska VARCHAR(100),
    opis TEXT
);

CREATE TABLE wydawnictwo (
    id_wydawnictwo INT PRIMARY KEY,
    nazwa VARCHAR(100)
);

CREATE TABLE rabaty (
    id_rabatu INT PRIMARY KEY,
    wartosc_rabatu DECIMAL(5,2)
);

CREATE TABLE ksiazki (
    id_ksiazki INT PRIMARY KEY,
    ibsn VARCHAR(20),
    aktywna BOOLEAN,
    nazwa VARCHAR(100),
    ilosc_dni_wypozyczenia INT
);

CREATE TABLE typ_problemu (
    id_problemu INT PRIMARY KEY,
    nazwa VARCHAR(100),
    kwota DECIMAL(10,2)
);

CREATE TABLE rangi (
    id_rangi INT PRIMARY KEY,
    id_rabatu INT,
    nazwa_rangi VARCHAR(100),
    ilosc_ptk INT,
    poziom INT,
    FOREIGN KEY (id_rabatu) REFERENCES rabaty(id_rabatu)
);


CREATE TABLE karta_czlonkowska (
    id_karty_czlonkowskiej INT PRIMARY KEY,
    id_rangi INT,
    data_zalozenia_karty DATE,
    data_wygasniecia DATE,
    data_oplaty DATE,
    FOREIGN KEY (id_rangi) REFERENCES rangi(id_rangi)
);

CREATE TABLE lokalizacje (
    id_lokalizacja INT PRIMARY KEY,
    id_kraju INT,
    id_biblioteka INT,
    adres VARCHAR(200),
    miejscowosc VARCHAR(100),
    kod_pocztowy VARCHAR(20),
    wojewodztwo VARCHAR(50),
    czy_magazyn BOOLEAN,
    FOREIGN KEY (id_kraju) REFERENCES kraje(id_kraju),
    FOREIGN KEY (id_biblioteka) REFERENCES biblioteka(id_biblioteka)
);

CREATE TABLE gatunek_do_ksiazka (
    id_ksiazki INT,
    id_gatunek INT,
    PRIMARY KEY (id_ksiazki, id_gatunek),
    FOREIGN KEY (id_ksiazki) REFERENCES ksiazki(id_ksiazki),
    FOREIGN KEY (id_gatunek) REFERENCES gatunek(id_gatunek)
);

CREATE TABLE autor_do_ksiazka (
    id_ksiazki INT,
    id_autor INT,
    PRIMARY KEY (id_ksiazki, id_autor),
    FOREIGN KEY (id_ksiazki) REFERENCES ksiazki(id_ksiazki),
    FOREIGN KEY (id_autor) REFERENCES autorzy(id_autor)
);

CREATE TABLE wydawnictwo_do_ksiazka (
    id_wydawnictwo INT,
    id_ksiazki INT,
    id_wydawnictwo_do_ksiazka INT PRIMARY KEY,
    rok_wydania INT,
    cena DECIMAL(10,2),
    FOREIGN KEY (id_wydawnictwo) REFERENCES wydawnictwo(id_wydawnictwo),
    FOREIGN KEY (id_ksiazki) REFERENCES ksiazki(id_ksiazki)
);

CREATE TABLE miejsce_ksiazki (
    id_miejsce INT PRIMARY KEY,
    id_wydawnictwo_do_ksiazka INT,
    id_lokalizacja INT,
    ilosc INT,
    regal VARCHAR(20),
    FOREIGN KEY (id_wydawnictwo_do_ksiazka) REFERENCES wydawnictwo_do_ksiazka(id_wydawnictwo_do_ksiazka),
    FOREIGN KEY (id_lokalizacja) REFERENCES lokalizacje(id_lokalizacja)
);

CREATE TABLE uzytkownik (
    id_uzytkownika INT PRIMARY KEY,
    id_biblioteka INT,
    id_stanowisko INT,
    id_karty_czlonkowskiej INT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    nr_dowodu VARCHAR(20),
    data_urodzenia DATE,
    czarna_lista BOOLEAN,
    login VARCHAR(50),
    haslo VARCHAR(100),
    czy_pracownik INT,
    FOREIGN KEY (id_biblioteka) REFERENCES biblioteka(id_biblioteka),
    FOREIGN KEY (id_stanowisko) REFERENCES stanowisko(id_stanowisko),
    FOREIGN KEY (id_karty_czlonkowskiej) REFERENCES karta_czlonkowska(id_karty_czlonkowskiej)
);

CREATE TABLE wypozyczenia (
    id_wypozyczenia INT PRIMARY KEY,
    id_uzytkownika INT,
    id_uzytkownik_pracownik INT,
    id_wydawnictwo_do_ksiazka INT,
    kwota_kary DECIMAL(10,2),
    czy_kara_oplacona BOOLEAN,
    uwagi TEXT,
    data_wypozyczenia DATE,
    data_oddania DATE,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_uzytkownik_pracownik) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_wydawnictwo_do_ksiazka) REFERENCES wydawnictwo_do_ksiazka(id_wydawnictwo_do_ksiazka)
);

CREATE TABLE wypozyczenia_do_typ_problemu (
    id_wypozyczenia INT,
    id_problemu INT,
    PRIMARY KEY (id_wypozyczenia, id_problemu),
    FOREIGN KEY (id_wypozyczenia) REFERENCES wypozyczenia(id_wypozyczenia),
    FOREIGN KEY (id_problemu) REFERENCES typ_problemu(id_problemu)
);

CREATE TABLE wpisy_uzytkownikow (
    id_wpisu INT PRIMARY KEY,
    id_uzytkownika INT,
    id_uzytkownik_pracownik INT,
    tytul VARCHAR(200),
    tresc TEXT,
    link VARCHAR(200),
    data_zatwierdzenia DATE,
    data_dodania DATE,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_uzytkownik_pracownik) REFERENCES uzytkownik(id_uzytkownika)
);

CREATE TABLE artykuly (
    id_artykulu INT PRIMARY KEY,
    id_biblioteka INT,
    id_uzytkownik_pracownik INT,
    tytul VARCHAR(200),
    tresc TEXT,
    link VARCHAR(200),
    data_dodania DATE,
    data_wygasniecia DATE,
    FOREIGN KEY (id_biblioteka) REFERENCES biblioteka(id_biblioteka),
    FOREIGN KEY (id_uzytkownik_pracownik) REFERENCES uzytkownik(id_uzytkownika)
);

CREATE TABLE oplaty (
    id_oplata INT PRIMARY KEY,
    id_karty_czlonkowskiej INT,
    data_oplacenia DATE,
    kwota DECIMAL(10,2),
    ilosc_oplaconych_miesiecy INT,
    FOREIGN KEY (id_karty_czlonkowskiej) REFERENCES karta_czlonkowska(id_karty_czlonkowskiej)
);
