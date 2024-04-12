-- Tworzenie tabeli kraje
CREATE TABLE kraje (
    id_kraju SERIAL PRIMARY KEY,
    nazwa_kraju VARCHAR(100)
);

-- Tworzenie tabeli gatunek
CREATE TABLE gatunek (
    id_gatunek SERIAL PRIMARY KEY,
    nazwa VARCHAR(50)
);

-- Tworzenie tabeli autorzy
CREATE TABLE autorzy (
    id_autor SERIAL PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    data_urodzenia DATE
);

-- Tworzenie tabeli wydawnictwo
CREATE TABLE wydawnictwo (
    id_wydawnictwo SERIAL PRIMARY KEY,
    nazwa VARCHAR(100)
);

-- Tworzenie tabeli rangi
CREATE TABLE rangi (
    id_rangi SERIAL PRIMARY KEY,
    id_rabatu INT,
    nazwa_rangi VARCHAR(100),
    ilosc_ptk INT,
    poziom INT,
    FOREIGN KEY (id_rabatu) REFERENCES rabaty(id_rabatu)
);

-- Tworzenie tabeli rabaty
CREATE TABLE rabaty (
    id_rabatu SERIAL PRIMARY KEY,
    wartosc_rabatu DECIMAL(5,2)
);

-- Tworzenie tabeli karta_czlonkowska
CREATE TABLE karta_czlonkowska (
    id_karty_czlonkowskiej SERIAL PRIMARY KEY,
    id_rangi INT,
    data_zalozenia_karty DATE,
    data_wygasniecia DATE,
    data_oplaty DATE,
    FOREIGN KEY (id_rangi) REFERENCES rangi(id_rangi)
);

-- Tworzenie tabeli lokalizacje
CREATE TABLE lokalizacje (
    id_lokalizacja SERIAL PRIMARY KEY,
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

-- Tworzenie tabeli biblioteka
CREATE TABLE biblioteka (
    id_biblioteka SERIAL PRIMARY KEY,
    nazwa VARCHAR(100),
    menadzer VARCHAR(100)
);

-- Tworzenie tabeli stanowisko
CREATE TABLE stanowisko (
    id_stanowisko SERIAL PRIMARY KEY,
    nazwa_stanowiska VARCHAR(100),
    opis TEXT
);

-- Tworzenie tabeli gatunek_do_ksiazka
CREATE TABLE gatunek_do_ksiazka (
    id_ksiazki INT,
    id_gatunek INT,
    PRIMARY KEY (id_ksiazki, id_gatunek),
    FOREIGN KEY (id_ksiazki) REFERENCES ksiazki(id_ksiazki),
    FOREIGN KEY (id_gatunek) REFERENCES gatunek(id_gatunek)
);

-- Tworzenie tabeli autor_do_ksiazka
CREATE TABLE autor_do_ksiazka (
    id_ksiazki INT,
    id_autor INT,
    PRIMARY KEY (id_ksiazki, id_autor),
    FOREIGN KEY (id_ksiazki) REFERENCES ksiazki(id_ksiazki),
    FOREIGN KEY (id_autor) REFERENCES autorzy(id_autor)
);

-- Tworzenie tabeli wydawnictwo_do_ksiazka
CREATE TABLE wydawnictwo_do_ksiazka (
    id_wydawnictwo INT,
    id_ksiazki INT,
    id_wydawnictwo_do_ksiazka SERIAL PRIMARY KEY,
    rok_wydania INT,
    cena DECIMAL(10,2),
    FOREIGN KEY (id_wydawnictwo) REFERENCES wydawnictwo(id_wydawnictwo),
    FOREIGN KEY (id_ksiazki) REFERENCES ksiazki(id_ksiazki)
);

-- Tworzenie tabeli ksiazki
CREATE TABLE ksiazki (
    id_ksiazki SERIAL PRIMARY KEY,
    ibsn VARCHAR(20),
    aktywna BOOLEAN,
    nazwa VARCHAR(100),
    ilosc_dni_wypozyczenia INT
);

-- Tworzenie tabeli miejsce_ksiazki
CREATE TABLE miejsce_ksiazki (
    id_miejsce SERIAL PRIMARY KEY,
    id_wydawnictwo_do_ksiazka INT,
    id_lokalizacja INT,
    ilosc INT,
    regal VARCHAR(20),
    FOREIGN KEY (id_wydawnictwo_do_ksiazka) REFERENCES wydawnictwo_do_ksiazka(id_wydawnictwo_do_ksiazka),
    FOREIGN KEY (id_lokalizacja) REFERENCES lokalizacje(id_lokalizacja)
);

-- Tworzenie tabeli wypozyczenia
CREATE TABLE wypozyczenia (
    id_wypozyczenia SERIAL PRIMARY KEY,
    id_uzytkownika INT,
    id_uzytkownik_pracownik INT,
    id_wydawnictwo_do_ksiazka INT,
    kwota_kary DECIMAL(10,2),
    czy_kara_oplacona BOOLEAN,
    uwagi TEXT,
    data_wypozyczenia DATE,
    data_oddania DATE,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_uzytkownik_pracownik) REFERENCES uzytkownik(id_uzytkownik),
    FOREIGN KEY (id_wydawnictwo_do_ksiazka) REFERENCES wydawnictwo_do_ksiazka(id_wydawnictwo_do_ksiazka)
);

-- Tworzenie tabeli wypozyczenia_do_typ_problemu
CREATE TABLE wypozyczenia_do_typ_problemu (
    id_wypozyczenia INT,
    id_problemu INT,
    PRIMARY KEY (id_wypozyczenia, id_problemu),
    FOREIGN KEY (id_wypozyczenia) REFERENCES wypozyczenia(id_wypozyczenia),
    FOREIGN KEY (id_problemu) REFERENCES typ_problemu(id_problemu)
);

-- Tworzenie tabeli typ_problemu
CREATE TABLE typ_problemu (
    id_problemu SERIAL PRIMARY KEY,
    nazwa VARCHAR(100),
    kwota DECIMAL(10,2)
);

-- Tworzenie tabeli uzytkownik
CREATE TABLE uzytkownik (
    id_uzytkownika SERIAL PRIMARY KEY,
    id_biblioteka INT,
    id_stanowisko INT,
    id_kary_czlonkowskiej INT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    nr_dowodu VARCHAR(20),
    data_urodzenia DATE,
    czarna_lista BOOLEAN,
    login VARCHAR(50),
    haslo VARCHAR(100),
    FOREIGN KEY (id_biblioteka) REFERENCES biblioteka(id_biblioteka),
    FOREIGN KEY (id_stanowisko) REFERENCES stanowisko(id_stanowisko),
    FOREIGN KEY (id_kary_czlonkowskiej) REFERENCES karta_czlonkowska(id_karty_czlonkowskiej)
);

-- Tworzenie tabeli wpisy_uzytkownikow
CREATE TABLE wpisy_uzytkownikow (
    id_wpisu SERIAL PRIMARY KEY,
    id_uzytkownik INT,
    id_uzytkownik_pracownik INT,
    tytul VARCHAR(200),
    tresc TEXT,
    link VARCHAR(200),
    data_zatwierdzenia DATE,
    data_dodania DATE,
    FOREIGN KEY (id_uzytkownik) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_uzytkownik_pracownik) REFERENCES uzytkownik(id_uzytkownik)
);

-- Tworzenie tabeli artykuly
CREATE TABLE artykuly (
    id_artykulu SERIAL PRIMARY KEY,
    id_biblioteka INT,
    id_uzytkownik_pracownik INT,
    tytul VARCHAR(200),
    tresc TEXT,
    link VARCHAR(200),
    data_dodania DATE,
    data_wygasniecia DATE,
    FOREIGN KEY (id_biblioteka) REFERENCES biblioteka(id_biblioteka),
    FOREIGN KEY (id_uzytkownik_pracownik) REFERENCES uzytkownik(id_uzytkownik)
);

-- Tworzenie tabeli oplaty
CREATE TABLE oplaty (
    id_oplata SERIAL PRIMARY KEY,
    id_karty_czlonkowskiej INT,
    data_oplacenia DATE,
    kwota DECIMAL(10,2),
    ilosc_oplaconych_miesiecy INT,
    FOREIGN KEY (id_karty_czlonkowskiej) REFERENCES karta_czlonkowska(id_karty_czlonkowskiej)
);