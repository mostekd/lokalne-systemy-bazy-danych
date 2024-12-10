select * from lokalizacje;

select imie, nazwisko from klienci;

select * from pracownicy where wynagrodzenie > 5000;

select nazwisko, wynagrodzenie from pracownicy order by wynagrodzenie desc;

select count(*) as liczba_pracownikow from pracownicy;

select id_stanowisko, count(*) as liczba_pracownikow 
from pracownicy 
group by id_stanowisko;

select id_stanowisko, count(*) as liczba_pracownikow 
from pracownicy 
group by id_stanowisko 
having count(*) > 2;

select k.imie, k.nazwisko, l.miejscowosc 
from klienci as k
join lokalizacje as l on k.id_lokalizacja = l.id_lokalizacja;

select p.imie, p.nazwisko, s.nazwa_stanowiska 
from pracownicy as p
inner join stanowiska as s on p.id_stanowisko = s.id_stanowisko;

select p.imie, p.nazwisko, l.miejscowosc, s.nazwa_stanowiska 
from pracownicy as p
join lokalizacje as l on p.id_lokalizacja = l.id_lokalizacja
join stanowiska as s on p.id_stanowisko = s.id_stanowisko;

select concat(imie, ' ', nazwisko) as pełne_imie from klienci;
