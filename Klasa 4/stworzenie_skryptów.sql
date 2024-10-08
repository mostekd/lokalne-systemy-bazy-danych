CREATE DATABASE IF NOT EXISTS Sklep;
USE Sklep;

-- Tabela: Lokalizacja
CREATE TABLE Lokalizacje (
    id_lokalizacja INT PRIMARY KEY AUTO_INCREMENT,
    Ulica VARCHAR(100),
    Numer_budynku VARCHAR(10),
    Miejscowosc VARCHAR(100),
    Kod_pocztowy VARCHAR(10),
    Kraj VARCHAR(50)
);

-- Tabela: Klient
CREATE TABLE Klienci (
    id_klient INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    id_lokalizacja INT,
    Numer_telefonu VARCHAR(15),
    Adres_email VARCHAR(100)
);

-- Tabela: Stanowiska
CREATE TABLE Stanowiska (
    id_stanowisko INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa_stanowiska VARCHAR(100)
);

-- Tabela: Pracownicy
CREATE TABLE Pracownicy (
    id_pracownik INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Adres_zamieszkania VARCHAR(100),
    Numer_telefonu VARCHAR(15),
    Adres_email VARCHAR(100),
    id_stanowisko INT,
    id_lokalizacja INT,
    Wynagrodzenie DECIMAL(10, 2)
);

-- Tabela: Typy produktu
CREATE TABLE Typy_produktu (
    id_typ_produktu INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100)
);

-- Tabela: Produkt
CREATE TABLE Produkty (
    id_produktu INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100),
    id_typ_produktu INT,
    Cena DECIMAL(10, 2),
    Ilosc INT,
    Kolor VARCHAR(50),
    Opis VARCHAR(20000000),
    id_lokalizacja INT
);

CREATE TABLE Lokalizacja_do_Produkt (
    id_lokalizacja_do_produkt int primary key auto_increment,
    id_lokalizacja int,
    id_produkt int
);

-- Tabela: Magazyny
CREATE TABLE Magazyny (
    id_magazyn INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100),
    id_lokalizacja INT
);

-- Tabela: Sklepy
CREATE TABLE Sklepy (
    id_sklep INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(255),
    id_pracownik_menager INT,
    id_lokalizacja INT,
    Godziny_otwarcia VARCHAR(50)
);

-- Tabela: Dostawcy
CREATE TABLE Dostawcy (
    id_dostawcy INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(100),
    Numer_telefonu VARCHAR(15),
    Adres_email VARCHAR(100)
);

-- Tabela: Typy płatności
CREATE TABLE Typy_platnosci (
    id_typ_platnosci INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa VARCHAR(50)
);

CREATE TABLE typy_dostawy (
    id_typ_dostawy INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(255)
);
-- Tabela: Zamówienia
CREATE TABLE Zamowienia (
    id_zamowienia INT PRIMARY KEY AUTO_INCREMENT,
    id_klienta INT,
    id_lokalizacja_produktu INT,
    id_lokalizacja_odbioru INT,
    id_pracownika INT,
    id_typ_platnosci INT,
    id_produkt INT,
    Kwota_zamowienia DECIMAL(10, 2),
    id_typ_dostawy INT,
    czy_wyslane boolean
);

-- Tabela: Dostawcy do zamówienia
CREATE TABLE Dostawcy_do_zamowienia (
    id_dostawca_do_zamowienia INT PRIMARY KEY AUTO_INCREMENT,
    id_zamowienia INT,
    id_dostawca INT
);

INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Aleja Jana Pawła II','795','Warszawa','00-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Floriańska','309','Kraków','30-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Świętego Mikołaja','835','Wrocław','50-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Piłsudskiego','802','Poznań','60-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Długa','580','Gdańsk','80-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Dąbrowskiego','500','Szczecin','70-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Złota','101','Łódź','90-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('3 Maja','340','Lublin','20-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Królewska','331','Katowice','40-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Słowiańska','867','Bydgoszcz','85-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Kościuszki','18','Białystok','15-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Lecha','635','Toruń','87-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Sienkiewicza','907','Rzeszów','35-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Wyszyńskiego','451','Olsztyn','10-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Główna','557','Gdynia','81-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Kwiatowa','351','Zielona Góra','65-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Łaskotka','142','Opole','45-000','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Jagiellońska','819','Koszalin','75-001','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Sportowa','162','Radom','26-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Białego Orła','271','Częstochowa','42-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Żeromskiego','334','Gliwice','44-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Cicha','722','Tychy','43-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Strzeszyńska','447','Sosnowiec','44-280','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Słoneczna','848','Elbląg','36-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Łaskotka','739','Zabrze','41-800','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Węgierska','913','Rybnik','41-800','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Wojska Polskiego','716','Tarnów','32-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Bławatna','494','Jastrzębie-Zdrój','28-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Górska','43','Mysłowice','41-500','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Graniczna','712','Nowy Sącz','33-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Północna','549','Słupsk','08-110','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Mściwoja','761','Płock','76-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Świerkowa','432','Jaworzno','95-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Jagodowa','341','Kalisz','62-800','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Zielona','523','Siedlce','08-110','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Krzywa','224','Zamość','67-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Orzechowa','210','Krosno','46-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Staromiejska','425','Gorzów Wielkopolski','66-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Stawna','24','Chorzów','41-500','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Warszawska','940','Stalowa Wola','41-700','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Strzeszyńska','934','Łomża','18-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Sadowa','318','Świnoujście','78-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Spokojna','939','Kędzierzyn-Koźle','47-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Głogowska','136','Radomsko','47-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Lipowa','869','Rybnik','44-240','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Parkowa','253','Sopot','81-710','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Lechicka','848','Świętochłowice','32-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Stara','6','Ostrów Wielkopolski','36-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Słowackiego','733','Nowa Sól','63-000','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Świeżego Powietrza','957','Kołobrzeg','78-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Księcia Poniatowskiego','309','Bielsko-Biała','43-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Porzeczkowa','471','Gniezno','62-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Główna','529','Wołomin','05-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Topolowa','638','Piła','89-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Złota','630','Starachowice','97-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Błękitna','372','Dąbrowa Górnicza','44-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Lechicka','811','Sandomierz','27-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Kwitnąca','224','Białogard','38-500','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Piękna','641','Legionowo','05-120','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Urocza','42','Żory','45-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Polan','276','Ciechanów','07-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Chłopska','726','Pabianice','05-800','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Słoneczna','552','Chojnice','32-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Akacjowa','446','Oświęcim','32-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Grunwaldzka','172','Świecie','41-800','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Sienkiewicza','877','Piotrków Trybunalski','39-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Towarowa','905','Lubin','48-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Białego Orła','478','Kłodzko','33-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Kalinowa','687','Sochaczew','05-500','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Nowa','130','Lędziny','95-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Promienna','945','Nowy Tomyśl','28-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Klonowa','155','Ustka','59-900','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Łaskotka','436','Chrzanów','43-500','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Księdza Popiełuszki','426','Stawiski','39-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Aleja Róż','3','Szczytno','87-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Bławatna','912','Głogów','38-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Wiatraczek','542','Kraśnik','65-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Tęczowa','5
80','Suwałki','38-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Orla','136','Mikołów','35-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Marzeń','776','Sanok','24-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Jodłowa','46','Nowa Dęba','39-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Owocowa','489','Czerwionka-Leszczyny','38-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Malwowa','321','Działdowo','48-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Ciepła','149','Gorlice','41-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Kręta','908','Żyrardów','56-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Wierzbowa','230','Jawor','24-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Akacjowa','530','Sieradz','26-600','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Stawna','10','Płońsk','32-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Leśna','962','Wołów','65-400','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Urokliwa','641','Sokołów Podlaski','39-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Strzałowa','720','Września','62-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Kwiatowa','376','Chełm','22-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Rynkowska','584','Oborniki','85-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Szafirowa','584','Zgierz','95-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Paprociowa','371','Żnin','88-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Gdyńska','324','Dębica','39-200','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Chłopska','303','Nysa','48-300','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Zimowa','428','Miechów','38-500','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Rynkowska','287','Nowy Wiśnicz','32-100','Polska');
INSERT INTO `lokalizacje`(`Ulica`, `Numer_budynku`, `Miejscowosc`, `Kod_pocztowy`, `Kraj`) VALUES ('Fiołkowa','94','Trzebinia','32-540','Polska');

INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Jakub','Kowalski','1','+48698234567','jakub.kowalski@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Zofia','Nowak','2','+48721456789','zofia.nowak@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Michał','Wiśniewski','3','+48601987654','michal.wisniewski@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Natalia','Wójcik','4','+48794321876','natalia.wojcik@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Kacper','Kamiński','5','+48605123890','kacper.kaminski@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Oliwia','Lewandowska','6','+48782654321','oliwia.lewandowska@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Tomasz','Zieliński','7','+48609876543','tomasz.zielinski@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Agnieszka','Szymańska','8','+48730987120','agnieszka.szymanska@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Bartosz','Dąbrowski','9','+48785432109','bartosz.dabrowski@example.com');
INSERT INTO `klienci`(`Imie`, `Nazwisko`, `Id_lokalizacja`, `Numer_telefonu`, `Adres_email`) VALUES ('Ewa','Kaczmarek','10','+48602345678','ewa.kaczmarek@example.com');

INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Kierownik');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Serwisant');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Praktykant');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Starzysta');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Kasjer');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Magazynier');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Sprzedawca');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Księgowy');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Konsultant ds.. IT');
INSERT INTO `stanowiska`(`Nazwa_stanowiska`) VALUES ('Specjalista ds.. Marketingu');

INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Mateusz','Nowak','ul. Piłsudskiego 15/3 15-444 Białystok','+48512345678','mateusz.nowak@example.com','1','11','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Aleksandra','Kowalska','ul. Kopernika 12/8 87-100 Toruń','+48698234569','aleksandra.kowalska@example.com','1','12','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Michał','Wiśniewski','ul. Hetmańska 45/10 35-003 Rzeszów','+48723987654','michal.wisniewski@example.com','1','13','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Zofia','Kamińska','ul. Pieniężnego 7/2 10-900 Olsztyn','+48604876543','zofia.kaminska@example.com','1','14','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Kacper','Zieliński','ul. Świętojańska 32/5 81-393 Gdynia ','+48785432107','kacper.zielinski@example.com','1','15','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Emilia','Wójcik','ul. Bohaterów Westerplatte 23/6 65-001 Zielona Góra','+48661543210','emilia.wojcik@example.com','1','16','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Piotr','Szymański','ul. Krakowska 52/1 45-018 Opole','+48792876432','piotr.szymanski@example.com','1','17','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Natalia','Lewandowska','ul. Zwycięstwa 20/9 75-037 Koszalin','+48536789321','natalia.lewandowska@example.com','1','18','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Jakub','Dąbrowski','ul. Żeromskiego 101/4 26-600 Radom','+48606123456','jakub.dabrowski@example.com','1','19','5500');
INSERT INTO `pracownicy`( `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Numer_telefonu`, `Adres_email`, `id_stanowisko`, `id_lokalizacja`, `Wynagrodzenie`) VALUES ('Anna','Kaczmarek','Aleja NMP 43/7 42-200 Częstochowa','+48724654321','anna.kaczmarek@example.com','1','20','5500');

INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Laptop');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Komputer Stacjonarny');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Monitor');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Klawiatura');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Myszka');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Karta Graficzna');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Procesor');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Dysk HDD');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Dysk SSD');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Płyta Główna');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Obudowa Komputera');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Pamięć RAM');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Zasilacz');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Chłodzenie Powietrzne');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Chłodzenie Wodne');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Karta Dźwiękowa');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Karta Sieciowa');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Napęd Optyczny');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Mikrofon');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Drukarka');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Głośnik');
INSERT INTO `typy_produktu`(`Nazwa`) VALUES ('Słuchawki');

INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('ASUS ROG Strix SCAR 18','1','22299','15','Czarny','Procesor
Intel® Core™ i9-14900HX (24 rdzenie, 32 wątki, 2.20-5.80 GHz, 36 MB cache)
Chipset
Intel HM770
Pamięć RAM
64 GB (DDR5, 5600 MHz)
Maksymalna obsługiwana ilość pamięci RAM
64 GB
Liczba gniazd pamięci (ogółem / wolne)
2/0
Dysk SSD M.2 PCIe
2000 GB (2 x 1000 GB)
Dotykowy ekran
Nie
Typ ekranu
Matowy, LED, IPS
Przekątna ekranu
18""
Rozdzielczość ekranu
2560 x 1600 (WQXGA)
Częstotliwość odświeżania ekranu
240 Hz
Jasność matrycy
500 cd/m²
Karta graficzna
NVIDIA GeForce RTX 4090
Maks. moc karty graficznej (TGP)
175 W
Pamięć karty graficznej
16 GB GDDR6
Dźwięk
Wbudowane cztery głośniki
Wbudowany mikrofon
Kamera internetowa
HD
Łączność
LAN 2.5 Gb/s
Wi-Fi 6E
Moduł Bluetooth 5.3
Złącza
USB 3.2 Gen. 2 - 2 szt.
USB Typu-C (z DisplayPort i Power Delivery) - 1 szt.
HDMI 2.1 - 1 szt.
Thunderbolt™ 4 - 1 szt.
RJ-45 (LAN) - 1 szt.
Wyjście słuchawkowe/głośnikowe - 1 szt.
DC-in (wejście zasilania) - 1 szt.
Typ baterii
Litowo-jonowa
Kolor dominujący
Czarny
Czytnik linii papilarnych
Nie
Podświetlana klawiatura
Tak
Kolor podświetlenia klawiatury
Wielokolorowy
Zabezpieczenia
Szyfrowanie TPM
System operacyjny
Microsoft Windows 11 Pro
Dołączone oprogramowanie
Partycja recovery (opcja przywrócenia systemu z dysku)
Zasilacz
20 V
16,5 A
330 W
Dodatkowe informacje
Wydzielona klawiatura numeryczna
Wielodotykowy, intuicyjny touchpad
NVIDIA G-Sync
Matryca z pokryciem barw 100% DCI-P3
Technologia DLSS 3
Wysokość
30,8 mm
Szerokość
399 mm
Głębokość
294 mm
Waga
3,10 kg
Dołączone akcesoria
Zasilacz','21');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('G4M3R ELITE','2','18900','10','Czarny','Procesor
Intel Core i9-14900KF (24 rdzenie, 32 wątki, 3.20-6.00 GHz, 36 MB cache)
Chipset
Intel Z790
Pamięć RAM
96 GB (DIMM DDR5, 6000MHz)
Architektura pamięci
Dual-channel
Maksymalna obsługiwana ilość pamięci RAM
192 GB
Liczba gniazd pamięci (ogółem / wolne)
4/2
Napięcie pamięci RAM
1.35 V
Karta graficzna
NVIDIA GeForce RTX 4090
Wielkość pamięci karty graficznej
24576 MB GDDR6X (pamięć własna)
Dysk SSD PCIe 4.0
2000 GB
Opcje dołożenia dysków
Możliwość montażu pięciu dysków SATA
Możliwość montażu dwóch dysków M.2 PCIe
Wbudowane napędy optyczne
Brak
Dźwięk
Zintegrowana karta dźwiękowa
Łączność
Wi-Fi 6E
LAN 2.5 Gbps
Bluetooth
Złącza - panel tylny
USB 2.0 - 4 szt.
USB 3.2 Gen. 1 - 4 szt.
USB 3.2 Gen. 2 - 1 szt.
USB Type-C - 1 szt.
Wejście/wyjścia audio - 3 szt.
RJ-45 (LAN) - 1 szt.
HDMI (nieaktywne) - 1 szt.
HDMI (karta graficzna) - 1 szt.
Display Port (nieaktywne) - 1 szt.
Display Port (karta graficzna) - 3 szt.
PS/2 - 1 szt.
AC-in (wejście zasilania) - 1 szt.
Złącze antenowe - 2 szt.
Złącza - panel górny
USB 3.2 Gen. 1 - 2 szt.
USB Type-C - 1 szt.
Wejście mikrofonowe - 1 szt.
Wyjście słuchawkowe/głośnikowe - 1 szt.
Porty wewnętrzne (wolne)
PCI-e x16 - 2 szt.
PCI-e x1 - 2 szt.
SATA III - 6 szt.
M.2 PCIe - 2 szt.
Kieszeń wewnętrzna 5,25"" - 2 szt.
Kieszeń wewnętrzna 3,5""/2,5"" - 3 szt.
Kieszeń wewnętrzna 2,5"" - 2 szt.
Zasilacz
1000 W
Sprawność zasilacza
80 Plus Gold
Podświetlenie obudowy
Wielokolorowe (ARGB)
Tryby podświetlenia
14 trybów
Dodatkowe informacje
Chłodzenie wodne AIO 280 mm
Obsługa DLSS 3
Dołączone akcesoria
Kabel zasilający
Antena WiFi
System operacyjny
Microsoft Windows 11 Pro
Wysokość
520 mm
Szerokość
230 mm
Głębokość
522 mm','22');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Samsung LS49AG950NPXEN','3','7959','7','Biały','Przeznaczenie produktu
Dla graczy
Przekątna ekranu
49""
Powłoka matrycy
Matowa
Rodzaj matrycy
LED, VA
Typ ekranu
Zakrzywiony
Monitor bezramkowy
Nie
Rozdzielczość ekranu
5120 x 1440 (lDUAL-QHD)
Format obrazu
32:9
Częstotliwość odświeżania ekranu
240 Hz
Odwzorowanie przestrzeni barw
Adobe RGB: 95%
DCI-P3: 95%
sRGB: 125%
Liczba wyświetlanych kolorów
1,07 mld
HDR
HDR 10+
Czas reakcji
1 ms (GTG)
Wbudowany kalibrator
Nie
Technologia synchronizacji
FreeSync™ Premium
NVIDIA® G-SYNC®
Technologia ochrony oczu
Redukcja migotania (Flicker free)
Filtr światła niebieskiego
Jasność
2000 cd/m²
Kontrast statyczny
1 000 000:1
Kontrast dynamiczny
Mega ∞
Kąt widzenia w poziomie
178 stopni
Kąt widzenia w pionie
178 stopni
Złącza
HDMI 2.1 - 2 szt.
DisplayPort - 1 szt.
Wyjście słuchawkowe - 1 szt.
USB 3.2 Gen. 1 - 2 szt.
Tuner TV
Nie
Głośniki
Nie
Moc głośników
Nie dotyczy
Regulacja wysokości (Height)
Tak
Regulacja kąta pochylenia (Tilt)
Tak
Regulacja kąta obrotu (Swivel)
Tak
Możliwość montażu na ścianie - VESA
VESA 100 x 100 mm
Pobór mocy podczas spoczynku
0,5 W
Kolor
Biały
Dodatkowe informacje
Zakrzywienia ekranu - 1000R
Podświetlenie LED
Dołączone akcesoria
Skrócona instrukcja obsługi
Instrukcja bezpieczeństwa
Kabel zasilający
Szerokość
1149 mm
Wysokość (z podstawą)
537 mm
Głębokość (z podstawą)
418 mm
Waga
14,5 kg','23');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Razer DeathStalker V2 Pro Clicky','4','899','17','Czarny','Rodzaj przełączników
Razer™ Clicky Optical Switch
Typ
Dla graczy
Klasyczna
Łączność
Przewodowa
Bezprzewodowa
Interfejs
2,4 GHz
Bluetooth
Klawisze numeryczne
Tak
Klawisze multimedialne / funkcyjne
Tak
Obsługa makr
Tak
Podświetlenie klawiszy
Tak
Kolor podświetlenia klawiszy
Wielokolorowe - RGB
Rodzaj podświetlenia
Punktowe - każdy klawisz w innym kolorze
Strefowe - każda strefa w innym kolorze
Jednostrefowe - wszystkie klawisze w tym samym kolorze
Złącza
USB-C - 1 szt.
Podpórka pod nadgarstki
Nie
Kolor
Czarny
Zasilanie
Akumulator
Obudowa
Aluminiowa
Dodatkowe informacje
Anti-Ghosting z pełnym N-Key Rollover','22');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Swiftpoint Z2','5','1099','2','Czarny','Typ myszy
Dla graczy
Łączność
Przewodowa
Sensor
Optyczny
Model sensora
PixArt PAW 3395
Rozdzielczość
26000 dpi
Liczba przycisków
13
Rolka przewijania
1
Długość przewodu
2,1 m
Profil
Praworęczny
Dodatkowe informacje
Programowalne przyciski
Profile ustawień
Wbudowana pamięć
Wbudowany wyświetlacz
Kolor
Czarny
Długość
130 mm
Szerokość
90 mm
Wysokość
40 mm
Waga
117 g','24');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('ASUS GeForce RTX 4070 Ti SUPER ROG STRIX GAMING','6','5099','17','Czarny','Seria karty graficznej
GeForce RTX z serii 40
Obsługa Ray tracingu
Tak
Technika upscalingu
Nvidia DLSS 3.5
Układ graficzny
GeForce RTX 4070 Ti Super
Rodzaj złącza
PCIe 4.0 x16
Pamięć
16 GB
Rodzaj pamięci
GDDR6X
Szyna pamięci
256 bit
Efektywne taktowanie pamięci
21000 MHz
Taktowanie rdzenia w trybie boost
2670 MHz
2700 MHz OC Mode
Rdzenie CUDA
8448
Typ chłodzenia
Aktywne
Liczba wentylatorów
3
Podświetlenie
Tak
Rodzaje wyjść
HDMI 2.1a - 2 szt.
DisplayPort 1.4a - 3 szt.
Liczba obsługiwanych monitorów
4
Obsługiwane biblioteki
DirectX 12 Ultimate
OpenGL 4.6
Złącze zasilania
16 pin - 1 szt.
Rekomendowana moc zasilacza
750 W
Długość
336 mm
Szerokość
150 mm
Wysokość
63 mm
Format PCB
ATX
Liczba zajmowanych slotów
3.15 slot
Dołączone akcesoria
Wspornik
Adapter PCIe 16pin do 3x 8pin','25');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('AMD Ryzen 9 9950X','7','2999','10','','Rodzina procesorów
AMD Ryzen™
Seria procesora
Ryzen™ 9 9950X
Gniazdo procesora (socket)
Socket AM5
Obsługiwany chipset
X670
X670E
B650E
B650
A620
X870
X870E
Architektura
Zen 5
Taktowanie rdzenia
4.3 GHz (5.7 GHz w trybie turbo)
Liczba rdzeni fizycznych
16 rdzeni
Liczba wątków
32 wątki
Odblokowany mnożnik
Tak
Pamięć podręczna
80 MB
Zintegrowany układ graficzny
Tak
Model układu graficznego
Radeon™ Graphics
Rodzaj obsługiwanej pamięci
DDR5-5600
DDR5-3600
Proces litograficzny
4 nm
Pobór mocy (TDP)
170 W
Zastosowane technologie
AMD EXPO™
AMD Precision Boost 2
Dodatkowe informacje
Obsługa pamięci ECC
Wersja BOX
Chłodzenie w zestawie
Nie','24');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Seagate IRONWOLF PRO','8','2469','0','','Pojemność
22000 GB
Format
3.5""
Interfejs
SATA III (6.0 Gb/s) - 1 szt.
Pamięć podręczna cache
512 MB
Prędkość obrotowa
7200 obr./min
Prędkość odczytu (maksymalna)
285 MB/s
Niezawodność MTBF
2 500 000 godz
Dodatkowe informacje
Technologia zapisu CMR
Zgodność z systemami NAS
Seagate Rescue Services (usługi odzyskiwania danych)
Wysokość
26,1 mm
Szerokość
101,85 mm
Głębokość
147 mm
Waga
690 g','26');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Samsung 4TB M.2 PCIe Gen4 NVMe 990 Pro Heatsink','9','1999','5','Czarny','Przeznaczenie produktu
PC
Gaming
PlayStation 5
Pojemność
4000 GB
Format
M.2
Interfejs
PCIe NVMe 4.0 x4
Prędkość odczytu (maksymalna)
7450 MB/s
Prędkość zapisu (maksymalna)
6900 MB/s
Odczyt losowy
1,200,000 IOPS
Zapis losowy
1,550,000 IOPS
Rodzaj kości pamięci
TLC
Niezawodność MTBF
1 500 000 godz
Radiator
Tak
Dodatkowe informacje
Technologia TRIM
Technologia S.M.A.R.T
256-bitowe szyfrowanie danych AES
Dołączone akcesoria
Instrukcja obsługi
Kolor
Czarny
Wysokość
8,2 mm
Szerokość
24 mm
Głębokość
80 mm
Waga
28 g','26');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('ASUS ROG STRIX Z790-E GAMING WIFI II','10','2509','19','Czarny','Budowa sekcji zasilania
18+1+2
Rodzaj chłodzenia chipsetu płyty głównej
Pasywny
Obsługiwane rodziny procesorów
Intel Core i9
Intel Core i7
Intel Core i5
Intel Core i3
Intel Celeron
Intel Pentium
Gniazdo procesora
Socket 1700
Chipset
Intel Z790
Architektura procesora
Raptor Lake Refresh (14 generacja)
Raptor Lake (13 generacja)
Alder Lake-S (12 generacja)
Typ obsługiwanej pamięci
DDR5-5600 MHz
DDR5-5400 MHz
DDR5-5200 MHz
DDR5-5000 MHz
DDR5-4800 MHz
Typ obsługiwanej pamięci OC
DDR5-8000 MHz
DDR5-7800 MHz
DDR5-7600 MHz
DDR5-7400 MHz
DDR5-7200 MHz
DDR5-7000 MHz
DDR5-6800 MHz
DDR5-6600 MHz
DDR5-6400 MHz
DDR5-6200 MHz
DDR5-6000 MHz
DDR5-5800 MHz
Liczba banków pamięci
4 x DIMM
Maksymalna wielkość pamięci RAM
192 GB
Architektura pamięci
Dual-channel
Wewnętrzne złącza
SATA III (6 Gb/s) - 4 szt.
M.2 PCIe NVMe 4.0 x4 / SATA - 1 szt.
M.2 PCIe NVMe 4.0 x4 - 3 szt.
M.2 PCIe NVMe 5.0 x4 - 1 szt.
PCIe 5.0 x16 - 1 szt.
PCIe 4.0 x16 (tryb x4) - 2 szt.
USB 3.2 Gen. 2x2 Typu-C - 1 szt.
USB 3.2 Gen. 1 - 2 szt.
USB 2.0 - 3 szt.
Złącze wentylatora CPU 4 pin - 2 szt.
Złącze wentylatora SYS/CHA - 5 szt.
Złącze pompy AIO - 1 szt.
Złącze zasilania 8 pin - 2 szt.
Złącze zasilania 24 pin - 1 szt.
Thunderbolt 4 - 1 szt.
Zewnętrzne złącza
HDMI - 1 szt.
DisplayPort - 1 szt.
RJ45 (LAN) 2.5 Gbps - 1 szt.
USB Type-C - 2 szt.
USB 3.2 Gen. 2 - 10 szt.
Audio jack - 5 szt.
S/PDIF - 1 szt.
Złącze anteny Wi-Fi - 2 szt.
Przycisk Clear CMOS - 1 szt.
Przycisk USB BIOS Flashback - 1 szt.
Obsługa RAID
RAID 0
RAID 1
RAID 5
RAID 10
Obsługa układów graficznych w procesorach
Tak
Układ audio
Realtek ALC4080
Łączność bezprzewodowa
Bluetooth
Wi-Fi 7 (802.11 be)
Dodatkowe informacje
Podświetlenie LED
Format
ATX
Szerokość
244 mm
Wysokość
305 mm
Dołączone akcesoria
Instrukcja obsługi
Kabel SATA - 2 szt.
Elementy montażowe
Antena Wi-Fi 2.4/5/6 GHz - 1 szt.
Kolor
Czarny','28');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('ASUS ROG HYPERION GR701','11','1599','5','Czarny','Typ obudowy
Big Tower
Panel boczny
Szkło hartowane
Podświetlenie
ARGB
Standard płyty głównej
ATX
microATX
Mini-ITX
EATX
Miejsca na wewnętrzne dyski/napędy
2 x 3,5""/2,5""
2 x 5,25""
Miejsca na karty rozszerzeń
9
Maksymalna długość karty graficznej
460 mm
Maksymalna wysokość chłodzenia CPU
190 mm
Maksymalna liczba wentylatorów
7
Opcje montażu wentylatorów
3x 120/140 mm (przód)
1x 120/140 mm (tył)
3x 120/140 mm (góra)
Opcje montażu chłodzenia wodnego
1 x 120 mm (przód) - chłodnica
1 x 140 mm (przód) - chłodnica
1 x 240 mm (przód) - chłodnica
1 x 280 mm (przód) - chłodnica
1 x 360 mm (przód) - chłodnica
1 x 420 mm (przód) - chłodnica
1 x 120 mm (tył) - chłodnica
1 x 140 mm (tył) - chłodnica
1 x 120 mm (góra) - chłodnica
1 x 140 mm (góra) - chłodnica
1 x 240 mm (góra) - chłodnica
1 x 280 mm (góra) - chłodnica
1 x 360 mm (góra) - chłodnica
1 x 420 mm (góra) - chłodnica
Liczba zainstalowanych wentylatorów
4
Zainstalowane wentylatory
3x 140 mm (przód)
1x 140 mm (tył)
Przyciski i regulatory
Kontroler LED
Power
Reset
Wyprowadzone złącza
USB 3.2 Gen. 1 - 4 szt.
USB 3.2 Gen. 2 Typu-C - 1 szt.
USB 3.2 Gen. 2x2 Typu-C - 1 szt.
Wyjście słuchawkowe/wejście mikrofonowe - 1 szt
Materiał
Aluminium
Stal
Szkło hartowane
Kolor
Czarny
Dodatkowe informacje
System aranżowania kabli
Otwór wspomagający montaż chłodzenia na procesor
Montaż zasilacza na dole obudowy
Filtry antykurzowe
Panele boczne w formie drzwi
Kontroler / hub wentylatorów
Dołączone akcesoria
Instrukcja montażu
Komplet śrubek i elementów montażowych
Wysokość
639 mm
Szerokość
268 mm
Głębokość
659 mm
Waga
21 kg','27');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Kingston FURY 128GB','12','1779','2','Czarny','Seria
Beast
Rodzaj pamięci
DDR5
Pojemność całkowita
128 GB (4x32 GB)
Pojemność kości
32 GB
Liczba modułów
4
Taktowanie
5600 MHz
Opóźnienia (cycle latency)
CL 40
Timingi
CL40-40-40
Napięcie
1,1 V
Obsługiwane profile OC
Intel XMP
Chłodzenie
Radiator
Wysokość z chłodzeniem
34,9 mm
Pamięć ECC
Tak
Podświetlenie pamięci
Nie
Kolor
Czarny','29');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('be quiet! DARK POWER PRO 13','13','1999','15','Czarny','Moc maksymalna
1600 W
Standard
ATX 3.0
Wyprowadzone złącza
CPU 4+4 (8) pin - 1 szt.
CPU 8-pin - 1 szt.
EPS12V 20+4 (24) pin - 1 szt.
PCI-E 5.0 12+4 (16) pin - 2 szt
PCI-E 2.0 6+2 (8) pin - 6 szt.
MOLEX 4-pin - 5 szt.
SATA - 16 szt.
Sprawność
92-94% przy 230V oraz 20-100% obciążeniu.
Certyfikat
80 PLUS Titanium
Zabezpieczenia
Przed zbyt wysokim prądem (OCP)
Przeciwprzeciążeniowe (OPP)
Termiczne (OTP)
Przeciwprzepięciowe (OVP)
Przeciwzwarciowe (SCP)
Przed prądami udarowymi (SIP)
Przed zbyt niskim napięciem (UVP)
Typ okablowania
Modularny
Średnica wentylatora
135 mm
Kolor
Czarny
Dodatkowe informacje
Zgodny z normami CB, CE
Dołączone akcesoria
Elementy montażowe
Wysokość
86 mm
Szerokość
150 mm
Głębokość
200 mm','30');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Deepcool AK620 Digital ARGB','14','309','1','Czarny','Rodzaj chłodzenia
Aktywne
Kompatybilność
2066
2011-3
2011
1700
1200
1155
1151
1150
AM5
AM4
Rozmiar radiatora
127 x 110 x 157 mm
Materiał radiatora
Miedź
Ciepłowody
6 x 6 mm
Liczba wentylatorów
2x 120 mm
Kontrola obrotów
PWM
Prędkość obrotowa
500 - 1850 obr./min
Rodzaj łożyska
Fluid Dynamic Bearing
Maksymalny poziom hałasu
28 dB
Maksymalny przepływ powietrza
68,9 CFM
Rozmiar wentylatora
120 x 120 x 25 mm
Prąd zasilający
0,12 A
Podświetlenie
RGB
Dodatkowe informacje
Kolorowy ekran LCD
Wysokość
162 mm
Szerokość
129 mm
Głębokość
138 mm
Dołączone akcesoria
Pasta termoprzewodząca
Zestaw montażowy backplate Intel & AMD
Zestaw montażowy','29');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Corsair iCUE H150i ELITE LCD XT Black','15','1369','8','Czarny','Rodzaj chłodzenia
Wodne
Kompatybilność
2066
2011
1700
1200
1156
1151
1150
sTR4
AM5
AM4
Materiał radiatora
Aluminium
Liczba wentylatorów
3x 120 mm
Kontrola obrotów
PWM
Prędkość obrotowa
550 - 2100 obr./min
Maksymalny poziom hałasu
34,1 dB
Maksymalny przepływ powietrza
65,6 CFM
Rozmiar wentylatora
120 x 120 x 25 mm
Podświetlenie
RGB
Dodatkowe informacje
Kolorowy ekran LCD
Waga
1100 g
Dołączone akcesoria
Zestaw montażowy backplate Intel & AMD
Instrukcja instalacji
Śrubki montażowe
Kontroler RGB','27');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Creative Sound Blaster X AE-5 Plus','16','579','20','Czarny','Typ karty dźwiękowej
Wewnętrzna
System dźwięku
5.1
Interfejs
PCI-E
Procesor dźwięku
Sound Core3D
Próbkowanie
32 bit
Częstοtliwość próbkowania
384 kHz
Stosunek sygnału do szumu (SNR)
122 dB
Obsługiwane standardy dźwięku
Dolby Surround
DTS Connect
Rodzaje wejść / wyjść
Wyjście słuchawkowe/głośnikowe (jack 3,5 mm) - 4 szt.
Wejście mikrofonowe - 1 szt.
Wyjście optyczne S/PDIF Toslink - 1 szt.
Dodatkowe informacje
Kontroler audio DAC klasy premium
Dołączone akcesoria
Skrócona instrukcja obsługi','30');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('ASUS XG-C100F','17','449','16','Czerwony','Rodzaj
Przewodowa
Interfejs
PCI-E
Rodzaje wejść / wyjść
SFP+ - 1 szt.
Maksymalna prędkość transmisji bezprzewodowej
do 10000 Mb/s
Dodatkowe informacje
Aluminiowy radiator
QoS','24');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('ASUS SDRW-08U5S Slim','18','229','3','Srebrny','Rodzaj napędu
Zewnętrzny
Funkcje napędu
Nagrywanie płyt DVD
Nagrywanie płyt CD
Odtwarzanie płyt DVD
Odtwarzanie płyt CD
Interfejs
USB 2.0
Prędkość zapisu
DVD±R - 8x
DVD±R DL - 6x
DVD-RAM - 5x
DVD+RW - 8x
DVD-RW - 6x
CD-R - 24x
CD-RW - 24x
Prędkość odczytu
DVD-ROM - 8x
CD-ROM - 24x
DVD±R - 8x
DVD±R DL - 8x
DVD-RAM - 5x
DVD+RW - 8x
DVD-RW - 8x
CD-R - 24x
CD-RW - 24x
Czas dostępu
DVD - 160 ms
CD - 160 ms
Wysokość
12,9 mm
Szerokość
135,5 mm
Głebokość
140 mm
Waga
255 g','26');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('HyperX ProCast ','19','1119','2','Czarny','Przeznaczenie
Komputerowe
System mocowania
Statyw biurkowy
Rodzaj łączności
Przewodowa
Charakterystyka kierunkowości
Kardioidalna
Złącze
XLR - 1 szt.
Czułość
-38 dB
Zasilanie
Phantom 48V
Dodatkowe informacje
Gwint 3/8""
Gwint 5/8""
Uchwyt antywstrząsowy
Filtr górnoprzepustowy - 80 Hz
Stosunek sygnału do szumu: 75 dB
Kolor
Czarny
Dołączone akcesoria
Filtr pop
Instrukcja obsługi
Adapter do statywu
Waga
372 g','27');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('HP DesignJet T230','20','4239','4','Czarny','Przeznaczenie produktu
Do biura i korporacji
Zastosowanie
Rysunki liniowe
Prezentacje
Renderingi
Technologia druku
Atramentowa, kolorowa
Obsługiwany typ nośnika
Papier zwykły
Obsługiwane formaty nośników
A4
A3
A2
A1
24""
System stałego zasilania atramentem (CISS)
Nie
Rozmiar zwoju
Od 279 do 610 mm
Rodzaje podajników papieru
Rolka
Szybkość druku w kolorze
do 1,1 str./min
Maksymalna rozdzielczość druku
2400 x 1200 dpi
Maksymalna gramatura papieru
280 g/m²
Druk dwustronny (dupleks)
Brak
Wersja z WiFi
Tak
Interfejsy
USB
Wi-Fi
LAN (Ethernet)
AirPrint
Wyświetlacz
Wbudowany
Liczba wkładów drukujących
4
Dodatkowe informacje
Drukowanie bezpośrednio ze smartfonów i tabletów
Automatyczna gilotyna
Dołączone akcesoria
Kabel zasilający
Tusze startowe
Kolor
Czarny
Szerokość
1013 mm
Wysokość
285 mm
Głębokość
440 mm
Waga
21,5 kg','29');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('Sony BRAVIA Theatre Bar 9 + SA-RS3S','21','6399','14','Czarny','Liczba kanałów
7.0.2
Subwoofer
Brak
Łączność bezprzewodowa
Bluetooth
Wi-Fi
AirPlay
Zakrzywiona konstrukcja
Nie
Systemy dźwięku
Dolby Digital
Dolby Digital Plus
Dolby True HD
DTS
DTS-ES
Dolby Dual Mono
Dolby Atmos
DTS: X
IMAX Enhanced
360 Spatial Sound Mapping
Odtwarzane formaty plików
AAC
SBC
LDAC
Rodzaje wejść
HDMI 1 szt.
Rodzaje wyjść
HDMI (eARC)
Funkcje dodatkowe
Tryb głosowy
Tryb nocny
Spotify Connect
Informacje uzupełniające
Technologia wirtualnego dźwięku przestrzennego
Kolor
Czarny
Wysokość
64 mm
Szerokość
1300 mm
Głębokość
113 mm
Waga
5,5 kg
Dołączone akcesoria
Kabel HDMI
Pilot
Kabel zasilający
Baterie do pilota
Uchwyty do montażu na ścianie
Głośniki
Podstawa stołowa','28');
INSERT INTO `produkty`(`Nazwa`, `id_typ_produktu`, `Cena`, `Ilosc`, `Kolor`, `Opis`, `id_lokalizacja`) VALUES ('JBL QUANTUM 910 PSP','22','999','20','Biały','Łączność
Bezprzewodowa i przewodowa
Rodzaj łączności
Bluetooth 5.2
Budowa słuchawek
Nauszne
Zamknięte
System audio
Stereo 2.0
Wielokanałowy 7.1 - wirtualne
Redukcja hałasu
Aktywna - ANC
Średnica membrany
50 mm
Pasmo przenoszenia słuchawek
20 ~ 40000 Hz
Impedancja słuchawek
32 Ω
Czułość słuchawek
111 dB
Wbudowany mikrofon
Posiada, przy słuchawce
Odłączany mikrofon
Nie
Charakterystyka mikrofonu
Jednokierunkowy
Pasmo przenoszenia mikrofonu
100 ~ 8000 Hz
Czułość mikrofonu
-38 dB
Zasilanie
Wbudowany akumulator 1300 mAh
Czas ładowania
ok. 3,5h
Maksymalny czas pracy
do 47 h (przy wyłączonym podświetleniu)
Kompatybilność
Android
Windows
Mac OS
iOS
Nintendo Switch
Xbox One
Xbox Series X
Xbox Series S
PlayStation 4
PlayStation 5
Połączenie z konsolą
Bezprzewodowo
Bezprzewodowo – wymagany adapter USB
Przewodowo – jack 3,5mm
Zastosowane technologie
Certyfikat Hi-Res Audio
A2DP
HFP
QuantumSPHERE 360™
QuantumSURROUND
Materiał nauszników
Pianka
Skóra naturalna
Dodatkowe informacje
Regulowany pałąk
Podświetlane nauszniki
Pianka memory w nausznicach
Miękko wyściełany pałąk
Przetwornik dynamiczny
Możliwość wyciszania mikrofonu
Ruchomy mikrofon
Funkcja śledzenia ruchu głowy
Kolor
Biało-niebieskie
Dołączone akcesoria
Odbiornik
Kabel USB
Kabel Jack 3,5 mm
Adapter USB-A - USB-C
Osłona przeciwwietrzna
Instrukcja obsługi','21');

INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_1','21');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_2','22');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_3','23');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_4','24');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_5','25');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_6','26');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_7','27');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_8','28');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_9','29');
INSERT INTO `magazyny`(`Nazwa`, `id_lokalizacja`) VALUES ('Magazyn_10','30');

INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','1','11','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','2','12','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','3','13','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','4','14','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','5','15','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','6','16','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','7','17','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','8','18','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','9','19','09:00 - 18:00');
INSERT INTO `sklepy`(`nazwa`,`id_pracownik_menager`, `id_lokalizacja`, `Godziny_otwarcia`) VALUES ('TechZone','10','20','09:00 - 18:00');

INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('FedEx','+48501234567','fedex@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('UPS','+48602345676','ups@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('GLS','+48600456789','dhl@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('DPD','+48503567890','gls@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('TNT','+48604678901','dpd@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('Hermes','+48505789012','tnt@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('Yodel','+48606890123','hermes@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('PostNL','+48507901234','yodel@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('Chronopost','+48608012345','postnl@example.com');
INSERT INTO `dostawcy`(`Nazwa`, `Numer_telefonu`, `Adres_email`) VALUES ('Aramex','+48509123456','aramex@example.com');

INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('BLIK');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Karta Debetowa');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Karta Kredytowa');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Przelew Bankowy');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Gotówka');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Google Pay');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Apple Pay');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Płatność za pobraniem');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Płatność przy użyciu karty podarunkowej');
INSERT INTO `typy_platnosci`(`Nazwa`) VALUES ('Płatność na raty');

INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa do domu');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa do punktu odbioru');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa międzynarodowa');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa ekspresowa do domu');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa ekspresowa do punktu odbioru');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa w sobotę do domu');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa w sobotę do punktu odbioru');
INSERT INTO `typy_dostawy`(`nazwa`) VALUES ('Dostawa za pobraniem ');

INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('1', '21', '31', '1', '1', '1', '22299', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('2', '22', '32', '2', '1', '2', '18900', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('3', '23', '33', '3', '1', '3', '7959', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('4', '22', '34', '4', '1', '4', '899', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('5', '22', '35', '5', '1', '2', '18900', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('6', '2', '36', '6', '1', '5', '1099', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('7', '22', '37', '7', '1', '2', '18900', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('8', '24', '38', '8', '1', '5', '1099', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('9', '22', '37', '7', '1', '2', '18900', '2');
INSERT INTO `zamowienia`(`id_klienta`, `id_lokalizacja_produktu`, `id_lokalizacja_odbioru`, `id_pracownika`, `id_typ_platnosci`, `id_produkt`, `Kwota_zamowienia`, `id_typ_dostawy`) VALUES ('10', '22', '39', '9', '1', '2', '18900', '2');


INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('1','1');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('2','2');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('3','6');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('4','7');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('5','8');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('6','9');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('7','4');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('8','5');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('9','4');
INSERT INTO `dostawcy_do_zamowienia`( `id_zamowienia`, `id_dostawca`) VALUES ('10','3')