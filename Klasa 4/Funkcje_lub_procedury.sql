DELIMITER //
CREATE PROCEDURE sp_RaportZyskow(IN start_date DATE, IN end_date DATE)
BEGIN
    SELECT 
        z.id_zamowienia AS 'ID Zamówienia',
        z.id_klienta AS 'ID Klienta',
        z.Kwota_zamowienia AS 'Kwota Zamówienia',
        p.typ_platnosci AS 'Typ Płatności',
        d.koszt_dostawy AS 'Koszt Dostawy',
        (z.Kwota_zamowienia - d.koszt_dostawy) AS 'Łączna Wartość Sprzedaży'
    FROM 
        zamowienia z
    JOIN 
        typy_platnosci p ON z.id_typ_platnosci = p.id_typ_platnosci
    JOIN 
        dostawcy_do_zamowienia d ON z.id_zamowienia = d.id_zamowienia
    WHERE 
        z.data_zamowienia BETWEEN start_date AND end_date;
    
    SELECT 
        SUM(z.Kwota_zamowienia - d.koszt_dostawy) AS 'Suma Zysków'
    FROM 
        zamowienia z
    JOIN 
        dostawcy_do_zamowienia d ON z.id_zamowienia = d.id_zamowienia
    WHERE 
        z.data_zamowienia BETWEEN start_date AND end_date;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE sp_RaportEfektywnosciPracownikow(IN start_date DATE, IN end_date DATE)
BEGIN
    SELECT 
        pr.imie AS 'Imię Pracownika',
        pr.nazwisko AS 'Nazwisko Pracownika',
        s.stanowisko AS 'Stanowisko',
        COUNT(z.id_zamowienia) AS 'Liczba Zrealizowanych Zamówień',
        SUM(z.Kwota_zamowienia) AS 'Łączna Kwota Zamówień'
    FROM 
        zamowienia z
    JOIN 
        pracownicy pr ON z.id_pracownika = pr.id_pracownika
    JOIN 
        stanowiska s ON pr.id_stanowiska = s.id_stanowiska
    WHERE 
        z.data_zamowienia BETWEEN start_date AND end_date
    GROUP BY 
        pr.id_pracownika;
    
    SELECT 
        AVG(SUM(z.Kwota_zamowienia)) OVER () AS 'Średnia Wartość Zamówień na Pracownika',
        COUNT(z.id_zamowienia) AS 'Ogólna Liczba Obsłużonych Zamówień'
    FROM 
        zamowienia z
    WHERE 
        z.data_zamowienia BETWEEN start_date AND end_date;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE sp_RaportMagazynowy(IN id_magazyn INT)
BEGIN
    SELECT 
        m.nazwa_magazynu AS 'Nazwa Magazynu',
        p.nazwa AS 'Nazwa Produktu',
        p.ilosc AS 'Ilość Dostępnych Sztuk',
        p.cena AS 'Cena Jednostkowa',
        (p.ilosc * p.cena) AS 'Łączna Wartość Produktów'
    FROM 
        produkty p
    JOIN 
        magazyny m ON p.id_lokalizacja = m.id_magazynu
    WHERE 
        m.id_magazynu = id_magazyn;
    
    SELECT 
        SUM(p.ilosc * p.cena) AS 'Suma Wartości Produktów w Magazynie'
    FROM 
        produkty p
    JOIN 
        magazyny m ON p.id_lokalizacja = m.id_magazynu
    WHERE 
        m.id_magazynu = id_magazyn;
END //
DELIMITER ;
