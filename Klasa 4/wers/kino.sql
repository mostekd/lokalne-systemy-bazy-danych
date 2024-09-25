CREATE DATABASE Kino;
USE Kino;

-- Tabela Klienci
CREATE TABLE Klienci (
    Id_klient INT AUTO_INCREMENT PRIMARY KEY,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Adres_email VARCHAR(100),
    Numer_telefon VARCHAR(15)
);

-- Tabela Filmy
CREATE TABLE Filmy (
    Id_film INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa VARCHAR(100),
    Id_rodzaj_filmu INT,
    Id_rezyser INT,
    Id_aktorzy INT,
    Czas_trwania INT,
    FOREIGN KEY (Id_rodzaj_filmu) REFERENCES Rodzaje_filmu(Id_rodzaj_filmu),
    FOREIGN KEY (Id_rezyser) REFERENCES Rezyserzy(Id_rezyser),
    FOREIGN KEY (Id_aktorzy) REFERENCES Aktorzy(Id_aktor)
);

-- Tabela Pracownicy
CREATE TABLE Pracownicy (
    Id_pracownik INT AUTO_INCREMENT PRIMARY KEY,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Adres_email VARCHAR(100),
    Numer_telefon VARCHAR(15),
    Wynagrodzenie DECIMAL(10,2),
    Data_zatrudnienia DATE,
    Id_stanowisko INT,
    Data_urodzenia DATE,
    Id_lokalizacja_pracy INT,
    FOREIGN KEY (Id_stanowisko) REFERENCES Stanowiska(Id_stanowisko),
    FOREIGN KEY (Id_lokalizacja_pracy) REFERENCES Lokalizacja(Id_lokalizacja)
);

-- Tabela Oferta
CREATE TABLE Oferta (
    Id_oferta INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa VARCHAR(100),
    Cena DECIMAL(10,2),
    Rodzaj VARCHAR(50)
);

-- Tabela Seanse
CREATE TABLE Seanse (
    Id_seans INT AUTO_INCREMENT PRIMARY KEY,
    Id_film INT,
    Cena DECIMAL(10,2),
    Godzina_rozpoczecia TIME,
    Data_seansu DATE,
    FOREIGN KEY (Id_film) REFERENCES Filmy(Id_film)
);

-- Tabela Rodzaje_filmu
CREATE TABLE Rodzaje_filmu (
    Id_rodzaj_filmu INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa VARCHAR(50)
);

-- Tabela Lokalizacja
CREATE TABLE Lokalizacja (
    Id_lokalizacja INT AUTO_INCREMENT PRIMARY KEY,
    Numer_budynku VARCHAR(10),
    Ulica VARCHAR(100),
    Miejscowosc VARCHAR(50),
    Kod_pocztowy VARCHAR(10),
    Kraj VARCHAR(50)
);

-- Tabela Rezyserzy
CREATE TABLE Rezyserzy (
    Id_rezyser INT AUTO_INCREMENT PRIMARY KEY,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Data_urodzenia DATE
);

-- Tabela Aktorzy
CREATE TABLE Aktorzy (
    Id_aktor INT AUTO_INCREMENT PRIMARY KEY,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Data_urodzenia DATE
);

-- Tabela Stanowiska
CREATE TABLE Stanowiska (
    Id_stanowisko INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa VARCHAR(50)
);

-- Tabela Zamowienia
CREATE TABLE Zamowienia (
    Id_zamowienie INT AUTO_INCREMENT PRIMARY KEY,
    Id_klient INT,
    Id_film INT,
    Id_kina INT,
    FOREIGN KEY (Id_klient) REFERENCES Klienci(Id_klient),
    FOREIGN KEY (Id_film) REFERENCES Filmy(Id_film),
    FOREIGN KEY (Id_kina) REFERENCES Kina(Id_kina)
);

-- Tabela Kina
CREATE TABLE Kina (
    Id_kina INT AUTO_INCREMENT PRIMARY KEY,
    Id_lokalizacja INT,
    Id_pracownik_menager INT,
    Godziny_otwarcia VARCHAR(100),
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja),
    FOREIGN KEY (Id_pracownik_menager) REFERENCES Pracownicy(Id_pracownik)
);
