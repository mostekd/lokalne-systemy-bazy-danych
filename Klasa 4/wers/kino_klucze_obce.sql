use Kino;

-- Dodanie kluczy obcych do tabeli Filmy
alter table Filmy 
    add foreign key (id_rodzaj_filmu) references Rodzaje_filmu(id_rodzaj_filmu),
    add foreign key (id_rezyser) references Rezyserzy(id_rezyser),
    add foreign key (id_aktorzy) references Aktorzy(id_aktor);

-- Dodanie kluczy obcych do tabeli Pracownicy
alter table Pracownicy 
    add foreign key (id_stanowisko) references Stanowiska(id_stanowisko),
    add foreign key (id_lokalizacja_pracy) references Lokalizacja(id_lokalizacja);

-- Dodanie kluczy obcych do tabeli Seanse
alter table Seanse 
    add foreign key (id_film) references Filmy(id_film);

-- Dodanie kluczy obcych do tabeli Zamowienia
alter table Zamowienia 
    add foreign key (id_klient) references Klienci(id_klient),
    add foreign key (id_film) references Filmy(id_film),
    add foreign key (id_kina) references Kina(id_kina);

-- Dodanie kluczy obcych do tabeli Kina
alter table Kina 
    add foreign key (id_lokalizacja) references Lokalizacja(id_lokalizacja),
    add foreign key (id_pracownik_menager) references Pracownicy(id_pracownik);
