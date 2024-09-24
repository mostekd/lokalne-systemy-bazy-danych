CREATE DATABASE IF NOT EXISTS Sklep;
USE Sklep;

-- Tabela: Lokalizacja
CREATE TABLE Lokalizacja (
    id_lokalizacja INT PRIMARY KEY AUTO_INCREMENT,
    Ulica VARCHAR(100),
    Miejscowosc VARCHAR(100),
    Kod_pocztowy VARCHAR(10),
    Kraj VARCHAR(50)
);

-- Tabela: Klient
CREATE TABLE Klient (
    id_klient INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Id_lokalizacja INT,
    Numer_telefonu VARCHAR(15),
    Adres_email VARCHAR(100)
);

-- Tabela: Stanowiska
CREATE TABLE Stanowiska (
    id_stanowisko INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa_stanowiska VARCHAR(100)
);

-- Tabela: Pracownicy
CREATE TABLE Pracownicy (
    id_pracownik INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Adres_zamieszkania VARCHAR(100),
    Numer_telefonu VARCHAR(15),
    Adres_email VARCHAR(100),
    id_stanowisko INT,
    id_lokalizacja INT,
    Wynagrodzenie DECIMAL(10, 2)
);

-- Tabela: Typy produktu
CREATE TABLE Typy_produktu (
    id_typ_produktu INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100)
);

-- Tabela: Produkt
CREATE TABLE Produkt (
    id_produktu INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100),
    id_typ_produktu INT,
    Cena DECIMAL(10, 2),
    Ilosc INT,
    Kolor VARCHAR(50),
    Opis TEXT,
    id_lokalizacja INT
);

-- Tabela: Magazyny
CREATE TABLE Magazyny (
    id_magazyn INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100),
    id_lokalizacja INT
);

-- Tabela: Sklepy
CREATE TABLE Sklepy (
    id_sklep INT PRIMARY KEY AUTO_INCREMENT,
    id_pracownik_menager INT,
    id_lokalizacja INT,
    Godziny_otwarcia VARCHAR(50)
);

-- Tabela: Dostawcy
CREATE TABLE Dostawcy (
    id_dostawcy INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100),
    Numer_telefonu VARCHAR(15),
    Adres_email VARCHAR(100)
);

-- Tabela: Typy płatności
CREATE TABLE Typy_platnosci (
    id_typ_platnosci INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(50)
);

-- Tabela: Zamówienia
CREATE TABLE Zamowienia (
    id_zamowienia INT PRIMARY KEY AUTO_INCREMENT,
    id_klienta INT,
    id_lokalizacja INT,
    id_pracownika INT,
    id_typ_platnosci INT,
    id_produkt INT,
    Kwota_zamowienia DECIMAL(10, 2),
    Typ_dostawy VARCHAR(50)
);

-- Tabela: Dostawcy do zamówienia
CREATE TABLE Dostawcy_do_zamowienia (
    id_dostawca_do_zamowienia INT PRIMARY KEY AUTO_INCREMENT,
    id_zamowienia INT,
    id_dostawca INT
);


 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
 
 INSERT INTO `dostawcy`(`id_dostawcy`, `Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')


INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `dostawcy_do_zamowienia`(`id_dostawca_do_zamowienia`, `id_zamowienia`, `id_dostawca`) VALUES ('[value-1]','[value-2]','[value-3]')


INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')

INSERT INTO `klient`(`id_klient`, `Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]')


INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')

INSERT INTO `lokalizacja`(`id_lokalizacja`, `Ulica`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')


INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')

INSERT INTO `magazyny`(`id_magazyn`, `Nazwa`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]')


INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')

INSERT INTO `pracownicy`(`id_pracownik`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]')


INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `produkt`(`id_produktu`, `Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')


INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

INSERT INTO `sklepy`(`id_sklep`, `id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')


INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')

INSERT INTO `stanowiska`(`id_stanowisko`, `Nazwa_stanowiska`) VALUES ('[value-1]','[value-2]')


INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_platnosci`(`id_typ_platnosci`, `Nazwa`) VALUES ('[value-1]','[value-2]')


INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')

INSERT INTO `typy_produktu`(`id_typ_produktu`, `Nazwa`) VALUES ('[value-1]','[value-2]')


INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')

INSERT INTO `zamowienia`(`id_zamowienia`, `id_klienta`, `id_lokalizacja`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `Typ_dostawy`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]')