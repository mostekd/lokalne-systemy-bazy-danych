Use Sklep;

ALTER TABLE Klient (
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja)
);
ALTER TABLE Pracownicy (
    FOREIGN KEY (Id_stanowisko) REFERENCES Stanowiska(Id_stanowisko),
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja)
);
ALTER TABLE Produkt (
    FOREIGN KEY (Id_typ_produktu) REFERENCES Typy_produktu(Id_typ_produktu),
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja)
);
ALTER TABLE Magazyny (
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja)
);
ALTER TABLE Sklepy (
    FOREIGN KEY (Id_pracownik_menager) REFERENCES Pracownicy(Id_pracownik),
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja)
);
ALTER TABLE Zamowienia (
    FOREIGN KEY (Id_klienta) REFERENCES Klient(Id_klient),
    FOREIGN KEY (Id_lokalizacja) REFERENCES Lokalizacja(Id_lokalizacja),
    FOREIGN KEY (Id_pracownika) REFERENCES Pracownicy(Id_pracownik),
    FOREIGN KEY (Id_typ_platnosci) REFERENCES Typy_platnosci(Id_typ_platnosci),
    FOREIGN KEY (Id_produkt) REFERENCES Produkt(Id_produktu)
);
ALTER TABLE Dostawcy_do_zamowienia (
    FOREIGN KEY (Id_zamowienia) REFERENCES Zamowienia(Id_zamowienia),
    FOREIGN KEY (Id_dostawca) REFERENCES Dostawcy(Id_dostawcy)
);