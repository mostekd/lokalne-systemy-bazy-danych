CREATE DATABASE Sklep;
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
