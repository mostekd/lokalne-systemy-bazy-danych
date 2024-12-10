delimiter //
create procedure sp_raportzyskow(in start_date date, in end_date date, in id_klienta int)
begin
    select 
        z.id_zamowienia as 'id zamówienia',
        z.id_klienta as 'id klienta',
        z.kwota_zamowienia as 'kwota zamówienia',
        p.nazwa as 'typ płatności',
        d.nazwa as 'dostawca',
        (z.kwota_zamowienia - d.koszt_dostawy) as 'łączna wartość sprzedaży'
    from 
        zamowienia z
    join 
        typy_platnosci p on z.id_typ_platnosci = p.id_typ_platnosci
    join 
        dostawcy_do_zamowienia dz on z.id_zamowienia = dz.id_zamowienia
    join
        dostawcy d on dz.id_dostawca = d.id_dostawcy
    where 
        z.data_zamowienia between start_date and end_date
        and (id_klienta is null or z.id_klienta = id_klienta);

    select 
        sum(z.kwota_zamowienia - d.koszt_dostawy) as 'suma zysków'
    from 
        zamowienia z
    join 
        dostawcy_do_zamowienia dz on z.id_zamowienia = dz.id_zamowienia
    join
        dostawcy d on dz.id_dostawca = d.id_dostawcy
    where 
        z.data_zamowienia between start_date and end_date
        and (id_klienta is null or z.id_klienta = id_klienta);
end //
delimiter ;



delimiter //
create procedure sp_raportefektywnoscipracownikow(in start_date date, in end_date date)
begin
    select 
        pr.imie as 'imię pracownika',
        pr.nazwisko as 'nazwisko pracownika',
        s.stanowisko as 'stanowisko',
        count(z.id_zamowienia) as 'liczba zrealizowanych zamówień',
        sum(z.kwota_zamowienia) as 'łączna kwota zamówień'
    from 
        zamowienia z
    join 
        pracownicy pr on z.id_pracownika = pr.id_pracownika
    join 
        stanowiska s on pr.id_stanowiska = s.id_stanowiska
    where 
        z.data_zamowienia between start_date and end_date
    group by 
        pr.id_pracownika;
    
    select 
        avg(sum(z.kwota_zamowienia)) over () as 'średnia wartość zamówień na pracownika',
        count(z.id_zamowienia) as 'ogólna liczba obsłużonych zamówień'
    from 
        zamowienia z
    where 
        z.data_zamowienia between start_date and end_date;
end //
delimiter ;


delimiter //
create procedure sp_raportmagazynowy(in id_magazyn int)
begin
    select 
        m.nazwa_magazynu as 'nazwa magazynu',
        p.nazwa as 'nazwa produktu',
        p.ilosc as 'ilość dostępnych sztuk',
        p.cena as 'cena jednostkowa',
        (p.ilosc * p.cena) as 'łączna wartość produktów'
    from 
        produkty p
    join 
        magazyny m on p.id_lokalizacja = m.id_magazynu
    where 
        m.id_magazynu = id_magazyn;
    
    select 
        sum(p.ilosc * p.cena) as 'suma wartości produktów w magazynie'
    from 
        produkty p
    join 
        magazyny m on p.id_lokalizacja = m.id_magazynu
    where 
        m.id_magazynu = id_magazyn;
end //
delimiter ;
