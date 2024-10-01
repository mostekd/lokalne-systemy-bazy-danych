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