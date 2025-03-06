create database if not exists szkola;
use szkola;

create table uczniowie (
    id_uczen int primary key auto_increment,
    imie varchar(50),
    nazwisko varchar(50),
);

create table przedmioty (
    id_przedmiot int primary key auto_increment,
    nazwa varchar(50),
);

create table oceny (
    id_ocena int primary key auto_increment,
    id_uczen int,
    id_przedmiot int,
    ocena int,
    foreign key (id_uczen) references uczniowie(id_uczen),
    foreign key (id_przedmiot) references przedmioty(id_przedmiot)
);

insert into uczniowie (imie, nazwisko) values
('Jan', 'Kowalski'),
('Anna', 'Nowak'),

insert into przedmioty (nazwa) values
('Informatyka'),
('Matematyka'),

insert into oceny (id_uczen, id_przedmiot, ocena) values
(1, 1, 5),
(1, 2, 4),
(2, 1, 3),
(2, 2, 5);      