Use Sklep;

ALTER TABLE Klienci 
    ADD FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacje(id_lokalizacja)
;
ALTER TABLE Pracownicy
    ADD FOREIGN KEY (id_stanowisko) REFERENCES Stanowiska(id_stanowisko),
    ADD FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacje(id_lokalizacja)
;
ALTER TABLE Produkty
    ADD FOREIGN KEY (id_typ_produktu) REFERENCES Typy_produktu(id_typ_produktu),
    ADD FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacje(id_lokalizacja)
;
ALTER TABLE Lokalizacja_do_Produkt
    ADD FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacje(id_lokalizacja),
    ADD FOREIGN KEY (id_produkt) REFERENCES Produkty(id_produktu)
;

ALTER TABLE Magazyny
    ADD FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacje(id_lokalizacja)
;
ALTER TABLE Sklepy
    ADD FOREIGN KEY (id_pracownik_menager) REFERENCES Pracownicy(id_pracownik),
    ADD FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacje(id_lokalizacja)
;
ALTER TABLE Zamowienia
    ADD FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klient),
    ADD FOREIGN KEY (id_lokalizacja_produktu) REFERENCES Lokalizacje(id_lokalizacja),
    ADD FOREIGN KEY (id_lokalizacja_odbioru) REFERENCES Lokalizacje(id_lokalizacja),
    ADD FOREIGN KEY (id_pracownika) REFERENCES Pracownicy(id_pracownik),
    ADD FOREIGN KEY (id_typ_platnosci) REFERENCES Typy_platnosci(id_typ_platnosci),
    ADD FOREIGN KEY (id_produkt) REFERENCES Produkty(id_produktu),
    ADD FOREIGN KEY (id_typ_dostawy) REFERENCES typy_dostawy(id_typ_dostawy)
;
ALTER TABLE Dostawcy_do_zamowienia
    ADD FOREIGN KEY (id_zamowienia) REFERENCES Zamowienia(id_zamowienia),
    ADD FOREIGN KEY (id_dostawca) REFERENCES Dostawcy(id_dostawcy)
;

CREATE USER 'administrator_sklep'@'localhost' IDENTIFIED BY 'admin';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.zamowienia TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.typy_produktu TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.typy_platnosci TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.sklepy TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.typy_dostawy TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.stanowiska TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.produkty TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.lokalizacja_do_produkt TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.pracownicy TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.lokaliazcje TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.dostawcy_do_zamowienia TO 'administrator_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON sklep.dostawcy TO 'administrator_sklep'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'system_sklep'@'localhost' IDENTIFIED BY 'system';
GRANT SELECT, DELETE ON sklep.klienci TO 'system_sklep'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'klient_sklep'@'localhost' IDENTIFIED BY 'klient';
GRANT UPDATE ON sklep.klienci TO 'klient_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE ON sklep.klienci TO 'klient_sklep'@'localhost';
GRANT SELECT ON sklep.produkty TO 'klient_sklep'@'localhost';
GRANT SELECT ON sklep.sklepy TO 'klient_sklep'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'pracownik_sklep'@'localhost' IDENTIFIED BY 'pracownik';
GRANT SELECT, INSERT, UPDATE ON  sklep.dostawcy TO 'pracownik_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE ON  sklep.dostawcy_do_zamowienia TO 'pracownik_sklep'@'localhost';
GRANT SELECT ON  sklep.klienci TO 'pracownik_sklep'@'localhost';
GRANT SELECT ON  sklep.magazyny TO 'pracownik_sklep'@'localhost';
GRANT SELECT ON  sklep.pracownicy TO 'pracownik_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE ON  sklep.lokalizacja_do_produkt TO 'pracownik_sklep'@'localhost';
GRANT SELECT, INSERT, UPDATE ON  sklep.produkty TO 'pracownik_sklep'@'localhost';
GRANT SELECT  ON  sklep.sklepy TO 'pracownik_sklep'@'localhost';
GRANT SELECT, UPDATE ON  sklep.zamowienia TO 'pracownik_sklep'@'localhost';
FLUSH PRIVILEGES;