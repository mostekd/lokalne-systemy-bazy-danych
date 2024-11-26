create database Kino;
use Kino;

-- Tabela Klienci
create table Klienci (
    id_klient int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Adres_email varchar(100),
    Numer_telefon varchar(15)
);

-- Tabela Filmy
create table Filmy (
    id_film int auto_increment primary key,
    Nazwa varchar(100),
    id_rodzaj_filmu int,
    id_rezyser int,
    id_aktorzy int,
    Czas_trwania int
);

-- Tabela Pracownicy
create table Pracownicy (
    id_pracownik int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Adres_email varchar(100),
    Numer_telefon varchar(15),
    Wynagrodzenie decimal(10,2),
    Data_zatrudnienia date,
    id_stanowisko int,
    Data_urodzenia date,
    id_lokalizacja_pracy int
);

-- Tabela Oferta
create table Oferta (
    id_oferta int auto_increment primary key,
    Nazwa varchar(100),
    Cena decimal(10,2),
    Rodzaj varchar(50)
);

-- Tabela Seanse
create table Seanse (
    id_seans int auto_increment primary key,
    id_film int,
    Cena decimal(10,2),
    Godzina_rozpoczecia time,
    Data_seansu date
);

-- Tabela Rodzaje_filmu
create table Rodzaje_filmu (
    id_rodzaj_filmu int auto_increment primary key,
    Nazwa varchar(50)
);

-- Tabela Lokalizacja
create table Lokalizacja (
    id_lokalizacja int auto_increment primary key,
    Numer_budynku varchar(10),
    Ulica varchar(100),
    Miejscowosc varchar(50),
    Kod_pocztowy varchar(10),
    Kraj varchar(50)
);

-- Tabela Rezyserzy
create table Rezyserzy (
    id_rezyser int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Data_urodzenia date
);

-- Tabela Aktorzy
create table Aktorzy (
    id_aktor int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Data_urodzenia date
);

-- Tabela Stanowiska
create table Stanowiska (
    id_stanowisko int auto_increment primary key,
    Nazwa varchar(50)
);

-- Tabela Zamowienia
create table Zamowienia (
    id_zamowienie int auto_increment primary key,
    id_klient int,
    id_film int,
    id_kina int
);

-- Tabela Kina
create table Kina (
    id_kina int auto_increment primary key,
    id_lokalizacja int,
    id_pracownik_menager int,
    Godziny_otwarcia varchar(100)
);