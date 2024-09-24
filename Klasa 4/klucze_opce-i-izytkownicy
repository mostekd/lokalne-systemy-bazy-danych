Use Sklep;

ALTER TABLE Klienci (
    FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacja(id_lokalizacja)
);
ALTER TABLE Pracownicy (
    FOREIGN KEY (id_stanowisko) REFERENCES Stanowiska(id_stanowisko),
    FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacja(id_lokalizacja)
);
ALTER TABLE Produkty  (
    FOREIGN KEY (id_typ_produktu) REFERENCES Typy_produktu(id_typ_produktu),
    FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacja(id_lokalizacja)
);
ALTER TABLE Magazyny (
    FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacja(id_lokalizacja)
);
ALTER TABLE Sklepy (
    FOREIGN KEY (id_pracownik_menager) REFERENCES Pracownicy(id_pracownik),
    FOREIGN KEY (id_lokalizacja) REFERENCES Lokalizacja(id_lokalizacja)
);
ALTER TABLE Zamowienia (
    FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klient),
    FOREIGN KEY (id_lokalizacja_produktu) REFERENCES Lokalizacja(id_lokalizacja),
    FOREIGN KEY (id_lokalizacja_odbioru) REFERENCES Lokalizacja(id_lokalizacja),
    FOREIGN KEY (id_pracownika) REFERENCES Pracownicy(id_pracownik),
    FOREIGN KEY (id_typ_platnosci) REFERENCES Typy_platnosci(id_typ_platnosci),
    FOREIGN KEY (id_produkt) REFERENCES Produkty(id_produktu)
    FOREIGN KEY (id_typ_dostawy) REFERENCES typy_dostawy(id_typ_dostawy)
);
ALTER TABLE Dostawcy_do_zamowienia (
    FOREIGN KEY (id_zamowienia) REFERENCES Zamowienia(id_zamowienia),
    FOREIGN KEY (id_dostawca) REFERENCES Dostawcy(id_dostawcy)
);