create database Kino;
USE Kino;

-- Tabela Klienci
create table Klienci (
    Id_klient int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Adres_email varchar(100),
    Numer_telefon varchar(15)
);

-- Tabela Filmy
create table Filmy (
    Id_film int auto_increment primary key,
    Nazwa varchar(100),
    Id_rodzaj_filmu int,
    Id_rezyser int,
    Id_aktorzy int,
    Czas_trwania int,
    foreign key (Id_rodzaj_filmu) references Rodzaje_filmu(Id_rodzaj_filmu),
    foreign key (Id_rezyser) references Rezyserzy(Id_rezyser),
    foreign key (Id_aktorzy) references Aktorzy(Id_aktor)
);

-- Tabela Pracownicy
create table Pracownicy (
    Id_pracownik int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Adres_email varchar(100),
    Numer_telefon varchar(15),
    Wynagrodzenie decimal(10,2),
    Data_zatrudnienia date,
    Id_stanowisko int,
    Data_urodzenia date,
    Id_lokalizacja_pracy int,
    foreign key (Id_stanowisko) references Stanowiska(Id_stanowisko),
    foreign key (Id_lokalizacja_pracy) references Lokalizacja(Id_lokalizacja)
);

-- Tabela Oferta
create table Oferta (
    Id_oferta int auto_increment primary key,
    Nazwa varchar(100),
    Cena decimal(10,2),
    Rodzaj varchar(50)
);

-- Tabela Seanse
create table Seanse (
    Id_seans int auto_increment primary key,
    Id_film int,
    Cena decimal(10,2),
    Godzina_rozpoczecia time,
    Data_seansu date,
    foreign key (Id_film) references Filmy(Id_film)
);

-- Tabela Rodzaje_filmu
create table Rodzaje_filmu (
    Id_rodzaj_filmu int auto_increment primary key,
    Nazwa varchar(50)
);

-- Tabela Lokalizacja
create table Lokalizacja (
    Id_lokalizacja int auto_increment primary key,
    Numer_budynku varchar(10),
    Ulica varchar(100),
    Miejscowosc varchar(50),
    Kod_pocztowy varchar(10),
    Kraj varchar(50)
);

-- Tabela Rezyserzy
create table Rezyserzy (
    Id_rezyser int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Data_urodzenia date
);

-- Tabela Aktorzy
create table Aktorzy (
    Id_aktor int auto_increment primary key,
    Imie varchar(50),
    Nazwisko varchar(50),
    Data_urodzenia date
);

-- Tabela Stanowiska
create table Stanowiska (
    Id_stanowisko int auto_increment primary key,
    Nazwa varchar(50)
);

-- Tabela Zamowienia
create table Zamowienia (
    Id_zamowienie int auto_increment primary key,
    Id_klient int,
    Id_film int,
    Id_kina int,
    foreign key (Id_klient) references Klienci(Id_klient),
    foreign key (Id_film) references Filmy(Id_film),
    foreign key (Id_kina) references Kina(Id_kina)
);

-- Tabela Kina
create table Kina (
    Id_kina int auto_increment primary key,
    Id_lokalizacja int,
    Id_pracownik_menager int,
    Godziny_otwarcia varchar(100),
    foreign key (Id_lokalizacja) references Lokalizacja(Id_lokalizacja),
    foreign key (Id_pracownik_menager) references Pracownicy(Id_pracownik)
);
