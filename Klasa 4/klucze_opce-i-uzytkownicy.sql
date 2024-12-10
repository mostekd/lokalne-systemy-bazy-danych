use sklep;

alter table klienci 
    add foreign key (id_lokalizacja) references lokalizacje(id_lokalizacja)
;
alter table pracownicy
    add foreign key (id_stanowisko) references stanowiska(id_stanowisko),
    add foreign key (id_lokalizacja) references lokalizacje(id_lokalizacja)
;
alter table produkty
    add foreign key (id_typ_produktu) references typy_produktu(id_typ_produktu),
    add foreign key (id_lokalizacja) references lokalizacje(id_lokalizacja)
;
alter table lokalizacja_do_produkt
    add foreign key (id_lokalizacja) references lokalizacje(id_lokalizacja),
    add foreign key (id_produkt) references produkty(id_produktu)
;

alter table magazyny
    add foreign key (id_lokalizacja) references lokalizacje(id_lokalizacja)
;
alter table sklepy
    add foreign key (id_pracownik_menager) references pracownicy(id_pracownik),
    add foreign key (id_lokalizacja) references lokalizacje(id_lokalizacja)
;
alter table zamowienia
    add foreign key (id_klienta) references klienci(id_klient),
    add foreign key (id_lokalizacja_produktu) references lokalizacje(id_lokalizacja),
    add foreign key (id_lokalizacja_odbioru) references lokalizacje(id_lokalizacja),
    add foreign key (id_pracownika) references pracownicy(id_pracownik),
    add foreign key (id_typ_platnosci) references typy_platnosci(id_typ_platnosci),
    add foreign key (id_produkt) references produkty(id_produktu),
    add foreign key (id_typ_dostawy) references typy_dostawy(id_typ_dostawy)
;
alter table dostawcy_do_zamowienia
    add foreign key (id_zamowienia) references zamowienia(id_zamowienia),
    add foreign key (id_dostawca) references dostawcy(id_dostawcy)
;

create user 'administrator_sklep'@'localhost' identified by 'admin';
grant select, insert, update, delete on sklep.zamowienia to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.typy_produktu to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.typy_platnosci to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.sklepy to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.typy_dostawy to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.stanowiska to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.produkty to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.lokalizacja_do_produkt to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.pracownicy to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.lokalizacje to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.dostawcy_do_zamowienia to 'administrator_sklep'@'localhost';
grant select, insert, update, delete on sklep.dostawcy to 'administrator_sklep'@'localhost';

create user 'system_sklep'@'localhost' identified by 'system';
grant select, delete on sklep.klienci to 'system_sklep'@'localhost';

create user 'klient_sklep'@'localhost' identified by 'klient';
grant update on sklep.klienci to 'klient_sklep'@'localhost';
grant select, insert, update on sklep.klienci to 'klient_sklep'@'localhost';
grant select on sklep.produkty to 'klient_sklep'@'localhost';
grant select on sklep.sklepy to 'klient_sklep'@'localhost';

create user 'pracownik_sklep'@'localhost' identified by 'pracownik';
grant select, insert, update on  sklep.dostawcy to 'pracownik_sklep'@'localhost';
grant select, insert, update on  sklep.dostawcy_do_zamowienia to 'pracownik_sklep'@'localhost';
grant select on  sklep.klienci to 'pracownik_sklep'@'localhost';
grant select on  sklep.magazyny to 'pracownik_sklep'@'localhost';
grant select on  sklep.pracownicy to 'pracownik_sklep'@'localhost';
grant select, insert, update on  sklep.lokalizacja_do_produkt to 'pracownik_sklep'@'localhost';
grant select, insert, update on  sklep.produkty to 'pracownik_sklep'@'localhost';
grant select  on  sklep.sklepy to 'pracownik_sklep'@'localhost';
grant select, update on  sklep.zamowienia to 'pracownik_sklep'@'localhost';