drop database if exists Kino;
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
    id_pracownik_manager int,
    Godziny_otwarcia varchar(100)
);

insert into Klienci (Imie, Nazwisko, Adres_email, Numer_telefon)
values 
    ('Jan', 'Kowalski', 'jan.kowalski@example.com', '123456789'),
    ('Anna', 'Nowak', 'anna.nowak@example.com', '987654321'),
    ('Piotr', 'Wiśniewski', 'piotr.w@example.com', '564738291'),
    ('Maria', 'Zielińska', 'm.zielinska@example.com', '192837465'),
    ('Krzysztof', 'Kamiński', 'k.kaminski@example.com', '876543210');

insert into Filmy (Nazwa, id_rodzaj_filmu, id_rezyser, id_aktorzy, Czas_trwania)
values 
    ('Film A', 1, 1, 1, 120),
    ('Film B', 2, 2, 2, 90),
    ('Film C', 3, 3, 3, 150),
    ('Film D', 4, 4, 4, 105),
    ('Film E', 1, 5, 5, 95);

insert into Pracownicy (Imie, Nazwisko, Adres_email, Numer_telefon, Wynagrodzenie, Data_zatrudnienia, id_stanowisko, Data_urodzenia, id_lokalizacja_pracy)
values 
    ('Marcin', 'Kowalski', 'm.kowalski@kino.com', '111222333', 3000.00, '2022-01-10', 1, '1990-05-15', 1),
    ('Paulina', 'Nowak', 'p.nowak@kino.com', '444555666', 2800.00, '2021-06-20', 2, '1985-08-20', 2),
    ('Tomasz', 'Wiśniewski', 't.wisniewski@kino.com', '777888999', 3200.00, '2023-02-15', 3, '1992-12-01', 1),
    ('Karolina', 'Zawadzka', 'k.zawadzka@kino.com', '123123123', 2900.00, '2020-09-05', 2, '1988-11-22', 2),
    ('Marek', 'Krawczyk', 'm.krawczyk@kino.com', '999111222', 3100.00, '2019-12-15', 1, '1982-04-10', 1);

insert into Oferta (Nazwa, Cena, Rodzaj)
values 
    ('Popcorn', 10.50, 'Jedzenie'),
    ('Coca-Cola', 5.00, 'Napój'),
    ('Nachos', 12.00, 'Jedzenie'),
    ('Sok', 4.50, 'Napój'),
    ('Czekolada', 6.00, 'Jedzenie');

insert into Seanse (id_film, Cena, Godzina_rozpoczecia, Data_seansu)
values 
    (1, 20.00, '18:00:00', '2023-11-01'),
    (2, 18.00, '20:00:00', '2023-11-02'),
    (3, 22.00, '15:00:00', '2023-11-03'),
    (4, 25.00, '19:00:00', '2023-11-04'),
    (5, 15.00, '14:00:00', '2023-11-05');

insert into Rodzaje_filmu (Nazwa)
values 
    ('Dramat'),
    ('Komedia'),
    ('Akcja'),
    ('Horror'),
    ('Science Fiction');

insert into Lokalizacja (Numer_budynku, Ulica, Miejscowosc, Kod_pocztowy, Kraj)
values 
    ('10', 'Marszałkowska', 'Warszawa', '00-001', 'Polska'),
    ('5', 'Nowy Świat', 'Warszawa', '00-002', 'Polska'),
    ('8', 'Chmielna', 'Warszawa', '00-003', 'Polska'),
    ('3', 'Koszykowa', 'Warszawa', '00-004', 'Polska'),
    ('15', 'Jasna', 'Warszawa', '00-005', 'Polska');

insert into Rezyserzy (Imie, Nazwisko, Data_urodzenia)
values 
    ('Andrzej', 'Wajda', '1926-03-06'),
    ('Roman', 'Polanski', '1933-08-18'),
    ('Agnieszka', 'Holland', '1948-11-28'),
    ('Krzysztof', 'Kieslowski', '1941-06-27'),
    ('Jerzy', 'Skolimowski', '1938-05-27');

insert into Aktorzy (Imie, Nazwisko, Data_urodzenia)
values 
    ('Jan', 'Nowicki', '1939-11-05'),
    ('Boguslaw', 'Linda', '1952-06-27'),
    ('Maja', 'Ostaszewska', '1972-09-03'),
    ('Robert', 'Więckiewicz', '1967-06-15'),
    ('Marcin', 'Dorociński', '1973-06-22');

insert into Stanowiska (Nazwa)
values 
    ('Kasjer'),
    ('Manager'),
    ('Technik kinowy'),
    ('Biletowy'),
    ('Ochrona');

insert into Zamowienia (id_film, id_kina)
values 
    (1, 1),
    (2, 2),
    (3, 1),
    (4, 3),
    (5, 2);

insert into Kina (id_lokalizacja, id_pracownik_manager, Godziny_otwarcia)
values 
    (1, 1, '9:00 - 22:00'),
    (2, 2, '10:00 - 23:00'),
    (3, 3, '8:00 - 22:00'),
    (4, 4, '9:30 - 21:00'),
    (5, 5, '10:30 - 23:30');