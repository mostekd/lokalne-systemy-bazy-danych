use Kino;

alter table Filmy 
    add foreign key (id_rodzaj_filmu) references Rodzaje_filmu(id_rodzaj_filmu),
    add foreign key (id_rezyser) references Rezyserzy(id_rezyser),
    add foreign key (id_aktorzy) references Aktorzy(id_aktor);

alter table Pracownicy 
    add foreign key (id_stanowisko) references Stanowiska(id_stanowisko),
    add foreign key (id_lokalizacja_pracy) references Lokalizacja(id_lokalizacja);

alter table Seanse 
    add foreign key (id_film) references Filmy(id_film);

alter table Zamowienia 
    add foreign key (id_klient) references Klienci(id_klient),
    add foreign key (id_film) references Filmy(id_film),
    add foreign key (id_kina) references Kina(id_kina);

alter table Kina 
    add foreign key (id_lokalizacja) references Lokalizacja(id_lokalizacja),
    add foreign key (id_pracownik_manager) references Pracownicy(id_pracownik);

drop user if exists 'klient_kino'@'localhost';
drop user if exists 'administrator_kino'@'localhost';
drop user if exists 'system_kino'@'localhost';
drop user if exists 'pracownik_kino'@'localhost';

create user 'klient_kino'@'localhost' identified by 'klient_password';
create user 'administrator_kino'@'localhost' identified by 'admin_password';
create user 'system_kino'@'localhost' identified by 'system_password';
create user 'pracownik_kino'@'localhost' identified by 'pracownik_password';

grant select on Kino.Klienci to 'klient'@'localhost';
grant select on Kino.Filmy to 'klient'@'localhost';
grant select, insert on Kino.Zamowienia to 'klient'@'localhost';

grant all privileges on Kino.* to 'administrator'@'localhost';

grant select, insert, update on Kino.Seanse to 'system'@'localhost';
grant select, insert, update on Kino.Oferta to 'system'@'localhost';

grant select on Kino.Pracownicy to 'pracownik'@'localhost';
grant select on Kino.Lokalizacja to 'pracownik'@'localhost';
grant select, update on Kino.Stanowiska to 'pracownik'@'localhost';
grant select, insert, update on Kino.Seanse to 'pracownik'@'localhost';

flush privileges;
