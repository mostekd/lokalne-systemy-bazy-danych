drop database if exists shop;
create database shop;
use shop;

-- table: locations
create table locations (
    id_location int primary key auto_increment,
    street varchar(100),
    building_number varchar(10),
    city varchar(100),
    postal_code varchar(10),
    country varchar(50)
);

-- table: customers
create table customers (
    id_customer int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    id_location int,
    phone_number varchar(15),
    email_address varchar(100)
);

-- table: positions
create table positions (
    id_position int primary key auto_increment,
    position_name varchar(100)
);

-- table: employees
create table employees (
    id_employee int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    home_address varchar(100),
    phone_number varchar(15),
    email_address varchar(100),
    id_position int,
    id_location int,
    salary decimal(10, 2)
);

-- table: product_types
create table product_types (
    id_product_type int primary key auto_increment,
    name varchar(100)
);

-- table: products
create table products (
    id_product int primary key auto_increment,
    name varchar(100),
    id_product_type int,
    price decimal(10, 2),
    quantity int,
    color varchar(50),
    description longtext
);

create table location_to_product (
    id_location_to_product int primary key auto_increment,
    id_location int,
    id_product int
);

-- table: warehouses
create table warehouses (
    id_warehouse int primary key auto_increment,
    name varchar(100),
    id_location int
);

-- table: stores
create table stores (
    id_store int primary key auto_increment,
    name varchar(255),
    id_employee_manager int,
    id_location int,
    opening_hours varchar(50)
);

-- table: suppliers
create table suppliers (
    id_supplier int primary key auto_increment,
    name varchar(100),
    phone_number varchar(15),
    email_address varchar(100)
);

-- table: payment_types
create table payment_types (
    id_payment_type int primary key auto_increment,
    name varchar(50)
);

create table delivery_types (
    id_delivery_type int primary key auto_increment,
    name varchar(255)
);

-- table: orders
create table orders (
    id_order int primary key auto_increment,
    id_customer int,
    id_location_product int,
    id_location_pickup int,
    id_employee int,
    id_payment_type int,
    id_product int,
    order_amount decimal(10, 2),
    id_delivery_type int,
    is_shipped boolean
);

-- table: suppliers_to_order
create table suppliers_to_order (
    id_supplier_to_order int primary key auto_increment,
    id_order int,
    id_supplier int
);

insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('aleja jana pawła ii','795','warszawa','00-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('floriańska','309','kraków','30-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('świętego mikołaja','835','wrocław','50-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('piłsudskiego','802','poznań','60-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('długa','580','gdańsk','80-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('dąbrowskiego','500','szczecin','70-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('złota','101','łódź','90-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('3 maja','340','lublin','20-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('królewska','331','katowice','40-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('słowiańska','867','bydgoszcz','85-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('kościuszki','18','białystok','15-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('lecha','635','toruń','87-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('sienkiewicza','907','rzeszów','35-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('wyszyńskiego','451','olsztyn','10-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('główna','557','gdynia','81-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('kwiatowa','351','zielona góra','65-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('łaskotka','142','opole','45-000','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('jagiellońska','819','koszalin','75-001','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('sportowa','162','radom','26-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('białego orła','271','częstochowa','42-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('żeromskiego','334','gliwice','44-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('cicha','722','tychy','43-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('strzeszyńska','447','sosnowiec','44-280','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('słoneczna','848','elbląg','36-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('łaskotka','739','zabrze','41-800','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('węgierska','913','rybnik','41-800','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('wojska polskiego','716','tarnów','32-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('bławatna','494','jastrzębie-zdrój','28-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('górska','43','mysłowice','41-500','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('graniczna','712','nowy sącz','33-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('północna','549','słupsk','08-110','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('mściwoja','761','płock','76-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('świerkowa','432','jaworzno','95-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('jagodowa','341','kalisz','62-800','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('zielona','523','siedlce','08-110','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('krzywa','224','zamość','67-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('orzechowa','210','krosno','46-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('staromiejska','425','gorzów wielkopolski','66-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('stawna','24','chorzów','41-500','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('warszawska','940','stalowa wola','41-700','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('strzeszyńska','934','łomża','18-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('sadowa','318','świnoujście','78-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('spokojna','939','kędzierzyn-koźle','47-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('głogowska','136','radomsko','47-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('lipowa','869','rybnik','44-240','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('parkowa','253','sopot','81-710','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('lechicka','848','świętochłowice','32-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('stara','6','ostrów wielkopolski','36-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('słowackiego','733','nowa sól','63-000','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('świeżego powietrza','957','kołobrzeg','78-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('księcia poniatowskiego','309','bielsko-biała','43-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('porzeczkowa','471','gniezno','62-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('główna','529','wołomin','05-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('topolowa','638','piła','89-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('złota','630','starachowice','97-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('błękitna','372','dąbrowa górnicza','44-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('lechicka','811','sandomierz','27-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('kwitnąca','224','białogard','38-500','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('piękna','641','legionowo','05-120','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('urocza','42','żory','45-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('polan','276','ciechanów','07-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('chłopska','726','pabianice','05-800','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('słoneczna','552','chojnice','32-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('akacjowa','446','oświęcim','32-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('grunwaldzka','172','świecie','41-800','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('sienkiewicza','877','piotrków trybunalski','39-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('towarowa','905','lubin','48-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('białego orła','478','kłodzko','33-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('kalinowa','687','sochaczew','05-500','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('nowa','130','lędziny','95-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('promienna','945','nowy tomyśl','28-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('klonowa','155','ustka','59-900','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('łaskotka','436','chrzanów','43-500','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('księdza popiełuszki','426','stawiski','39-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('aleja róż','3','szczytno','87-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('bławatna','912','głogów','38-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('wiatraczek','542','kraśnik','65-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('tęczowa','580','suwałki','38-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('orla','136','mikołów','35-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('marzeń','776','sanok','24-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('jodłowa','46','nowa dęba','39-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('owocowa','489','czerwionka-leszczyny','38-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('malwowa','321','działdowo','48-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('ciepła','149','gorlice','41-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('kręta','908','żyrardów','56-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('wierzbowa','230','jawor','24-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('akacjowa','530','sieradz','26-600','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('stawna','10','płońsk','32-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('leśna','962','wołów','65-400','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('urokliwa','641','sokołów podlaski','39-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('strzałowa','720','września','62-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('kwiatowa','376','chełm','22-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('rynkowska','584','oborniki','85-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('szafirowa','584','zgierz','95-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('paprociowa','371','żnin','88-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('gdyńska','324','dębica','39-200','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('chłopska','303','nysa','48-300','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('zimowa','428','miechów','38-500','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('rynkowska','287','nowy wiśnicz','32-100','polska');
insert into `locations`(`street`, `building_number`, `city`, `postal_code`, `country`) values ('fiołkowa','94','trzebinia','32-540','polska');

insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('jakub','kowalski','1','+48698234567','jakub.kowalski@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('zofia','nowak','2','+48721456789','zofia.nowak@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('michał','wiśniewski','3','+48601987654','michal.wisniewski@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('natalia','wójcik','4','+48794321876','natalia.wojcik@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('kacper','kamiński','5','+48605123890','kacper.kaminski@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('oliwia','lewandowska','6','+48782654321','oliwia.lewandowska@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('tomasz','zieliński','7','+48609876543','tomasz.zielinski@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('agnieszka','szymańska','8','+48730987120','agnieszka.szymanska@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('bartosz','dąbrowski','9','+48785432109','bartosz.dabrowski@example.com');
insert into `customers`(`first_name`, `last_name`, `id_location`, `phone_number`, `email_address`) values ('ewa','kaczmarek','10','+48602345678','ewa.kaczmarek@example.com');

insert into `positions`(`position_name`) values ('kierownik');
insert into `positions`(`position_name`) values ('serwisant');
insert into `positions`(`position_name`) values ('praktykant');
insert into `positions`(`position_name`) values ('starzysta');
insert into `positions`(`position_name`) values ('kasjer');
insert into `positions`(`position_name`) values ('magazynier');
insert into `positions`(`position_name`) values ('sprzedawca');
insert into `positions`(`position_name`) values ('księgowy');
insert into `positions`(`position_name`) values ('konsultant ds.. it');
insert into `positions`(`position_name`) values ('specjalista ds.. marketingu');

insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('mateusz','nowak','ul. piłsudskiego 15/3 15-444 białystok','+48512345678','mateusz.nowak@example.com','1','11','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('aleksandra','kowalska','ul. kopernika 12/8 87-100 toruń','+48698234569','aleksandra.kowalska@example.com','1','12','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('michał','wiśniewski','ul. hetmańska 45/10 35-003 rzeszów','+48723987654','michal.wisniewski@example.com','1','13','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('zofia','kamińska','ul. pieniężnego 7/2 10-900 olsztyn','+48604876543','zofia.kaminska@example.com','1','14','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('kacper','zieliński','ul. świętojańska 32/5 81-393 gdynia ','+48785432107','kacper.zielinski@example.com','1','15','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('emilia','wójcik','ul. bohaterów westerplatte 23/6 65-001 zielona góra','+48661543210','emilia.wojcik@example.com','1','16','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('piotr','szymański','ul. krakowska 52/1 45-018 opole','+48792876432','piotr.szymanski@example.com','1','17','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('natalia','lewandowska','ul. zwycięstwa 20/9 75-037 koszalin','+48536789321','natalia.lewandowska@example.com','1','18','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('jakub','dąbrowski','ul. żeromskiego 101/4 26-600 radom','+48606123456','jakub.dabrowski@example.com','1','19','5500');
insert into `employees`( `first_name`, `last_name`, `home_address`, `phone_number`, `email_address`, `id_position`, `id_location`, `salary`) values ('anna','kaczmarek','aleja nmp 43/7 42-200 częstochowa','+48724654321','anna.kaczmarek@example.com','1','20','5500');

insert into `product_types`(`name`) values ('laptop');
insert into `product_types`(`name`) values ('komputer stacjonarny');
insert into `product_types`(`name`) values ('monitor');
insert into `product_types`(`name`) values ('klawiatura');
insert into `product_types`(`name`) values ('myszka');
insert into `product_types`(`name`) values ('karta graficzna');
insert into `product_types`(`name`) values ('procesor');
insert into `product_types`(`name`) values ('dysk hdd');
insert into `product_types`(`name`) values ('dysk ssd');
insert into `product_types`(`name`) values ('płyta główna');
insert into `product_types`(`name`) values ('obudowa komputera');
insert into `product_types`(`name`) values ('pamięć ram');
insert into `product_types`(`name`) values ('zasilacz');
insert into `product_types`(`name`) values ('chłodzenie powietrzne');
insert into `product_types`(`name`) values ('chłodzenie wodne');
insert into `product_types`(`name`) values ('karta dźwiękowa');
insert into `product_types`(`name`) values ('karta sieciowa');
insert into `product_types`(`name`) values ('napęd optyczny');
insert into `product_types`(`name`) values ('mikrofon');
insert into `product_types`(`name`) values ('drukarka');
insert into `product_types`(`name`) values ('głośnik');
insert into `product_types`(`name`) values ('słuchawki');

insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('asus rog strix scar 18','1','22299','15','czarny','procesor
intel® core™ i9-14900hx (24 rdzenie, 32 wątki, 2.20-5.80 ghz, 36 mb cache)
chipset
intel hm770
pamięć ram
64 gb (ddr5, 5600 mhz)
maksymalna obsługiwana ilość pamięci ram
64 gb
liczba gniazd pamięci (ogółem / wolne)
2/0
dysk ssd m.2 pcie
2000 gb (2 x 1000 gb)
dotykowy ekran
nie
typ ekranu
matowy, led, ips
przekątna ekranu
18""
rozdzielczość ekranu
2560 x 1600 (wqxga)
częstotliwość odświeżania ekranu
240 hz
jasność matrycy
500 cd/m²
karta graficzna
nvidia geforce rtx 4090
maks. moc karty graficznej (tgp)
175 w
pamięć karty graficznej
16 gb gddr6
dźwięk
wbudowane cztery głośniki
wbudowany mikrofon
kamera internetowa
hd
łączność
lan 2.5 gb/s
wi-fi 6e
moduł bluetooth 5.3
złącza
usb 3.2 gen. 2 - 2 szt.
usb typu-c (z displayport i power delivery) - 1 szt.
hdmi 2.1 - 1 szt.
thunderbolt™ 4 - 1 szt.
rj-45 (lan) - 1 szt.
wyjście słuchawkowe/głośnikowe - 1 szt.
dc-in (wejście zasilania) - 1 szt.
typ baterii
litowo-jonowa
kolor dominujący
czarny
czytnik linii papilarnych
nie
podświetlana klawiatura
tak
kolor podświetlenia klawiatury
wielokolorowy
zabezpieczenia
szyfrowanie tpm
system operacyjny
microsoft windows 11 pro
dołączone oprogramowanie
partycja recovery (opcja przywrócenia systemu z dysku)
zasilacz
20 v
16,5 a
330 w
dodatkowe informacje
wydzielona klawiatura numeryczna
wielodotykowy, intuicyjny touchpad
nvidia g-sync
matryca z pokryciem barw 100% dci-p3
technologia dlss 3
wysokość
30,8 mm
szerokość
399 mm
głębokość
294 mm
waga
3,10 kg
dołączone akcesoria
zasilacz');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('g4m3r elite','2','18900','10','czarny','procesor
intel core i9-14900kf (24 rdzenie, 32 wątki, 3.20-6.00 ghz, 36 mb cache)
chipset
intel z790
pamięć ram
96 gb (dimm ddr5, 6000mhz)
architektura pamięci
dual-channel
maksymalna obsługiwana ilość pamięci ram
192 gb
liczba gniazd pamięci (ogółem / wolne)
4/2
napięcie pamięci ram
1.35 v
karta graficzna
nvidia geforce rtx 4090
wielkość pamięci karty graficznej
24576 mb gddr6x (pamięć własna)
dysk ssd pcie 4.0
2000 gb
opcje dołożenia dysków
możliwość montażu pięciu dysków sata
możliwość montażu dwóch dysków m.2 pcie
wbudowane napędy optyczne
brak
dźwięk
zintegrowana karta dźwiękowa
łączność
wi-fi 6e
lan 2.5 gbps
bluetooth
złącza - panel tylny
usb 2.0 - 4 szt.
usb 3.2 gen. 1 - 4 szt.
usb 3.2 gen. 2 - 1 szt.
usb type-c - 1 szt.
wejście/wyjścia audio - 3 szt.
rj-45 (lan) - 1 szt.
hdmi (nieaktywne) - 1 szt.
hdmi (karta graficzna) - 1 szt.
display port (nieaktywne) - 1 szt.
display port (karta graficzna) - 3 szt.
ps/2 - 1 szt.
ac-in (wejście zasilania) - 1 szt.
złącze antenowe - 2 szt.
złącza - panel górny
usb 3.2 gen. 1 - 2 szt.
usb type-c - 1 szt.
wejście mikrofonowe - 1 szt.
wyjście słuchawkowe/głośnikowe - 1 szt.
porty wewnętrzne (wolne)
pci-e x16 - 2 szt.
pci-e x1 - 2 szt.
sata iii - 6 szt.
m.2 pcie - 2 szt.
kieszeń wewnętrzna 5,25"" - 2 szt.
kieszeń wewnętrzna 3,5""/2,5"" - 3 szt.
kieszeń wewnętrzna 2,5"" - 2 szt.
zasilacz
1000 w
sprawność zasilacza
80 plus gold
podświetlenie obudowy
wielokolorowe (argb)
tryby podświetlenia
14 trybów
dodatkowe informacje
chłodzenie wodne aio 280 mm
obsługa dlss 3
dołączone akcesoria
kabel zasilający
antena wifi
system operacyjny
microsoft windows 11 pro
wysokość
520 mm
szerokość
230 mm
głębokość
522 mm');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('samsung ls49ag950npxen','3','7959','7','biały','przeznaczenie produktu
dla graczy
przekątna ekranu
49""
powłoka matrycy
matowa
rodzaj matrycy
led, va
typ ekranu
zakrzywiony
monitor bezramkowy
nie
rozdzielczość ekranu
5120 x 1440 (ldual-qhd)
format obrazu
32:9
częstotliwość odświeżania ekranu
240 hz
odwzorowanie przestrzeni barw
adobe rgb: 95%
dci-p3: 95%
srgb: 125%
liczba wyświetlanych kolorów
1,07 mld
hdr
hdr 10+
czas reakcji
1 ms (gtg)
wbudowany kalibrator
nie
technologia synchronizacji
freesync™ premium
nvidia® g-sync®
technologia ochrony oczu
redukcja migotania (flicker free)
filtr światła niebieskiego
jasność
2000 cd/m²
kontrast statyczny
1 000 000:1
kontrast dynamiczny
mega ∞
kąt widzenia w poziomie
178 stopni
kąt widzenia w pionie
178 stopni
złącza
hdmi 2.1 - 2 szt.
displayport - 1 szt.
wyjście słuchawkowe - 1 szt.
usb 3.2 gen. 1 - 2 szt.
tuner tv
nie
głośniki
nie
moc głośników
nie dotyczy
regulacja wysokości (height)
tak
regulacja kąta pochylenia (tilt)
tak
regulacja kąta obrotu (swivel)
tak
możliwość montażu na ścianie - vesa
vesa 100 x 100 mm
pobór mocy podczas spoczynku
0,5 w
kolor
biały
dodatkowe informacje
zakrzywienia ekranu - 1000r
podświetlenie led
dołączone akcesoria
skrócona instrukcja obsługi
instrukcja bezpieczeństwa
kabel zasilający
szerokość
1149 mm
wysokość (z podstawą)
537 mm
głębokość (z podstawą)
418 mm
waga
14,5 kg');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('razer deathstalker v2 pro clicky','4','899','17','czarny','rodzaj przełączników
razer™ clicky optical switch
typ
dla graczy
klasyczna
łączność
przewodowa
bezprzewodowa
interfejs
2,4 ghz
bluetooth
klawisze numeryczne
tak
klawisze multimedialne / funkcyjne
tak
obsługa makr
tak
podświetlenie klawiszy
tak
kolor podświetlenia klawiszy
wielokolorowe - rgb
rodzaj podświetlenia
punktowe - każdy klawisz w innym kolorze
strefowe - każda strefa w innym kolorze
jednostrefowe - wszystkie klawisze w tym samym kolorze
złącza
usb-c - 1 szt.
podpórka pod nadgarstki
nie
kolor
czarny
zasilanie
akumulator
obudowa
aluminiowa
dodatkowe informacje
anti-ghosting z pełnym n-key rollover');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('swiftpoint z2','5','1099','2','czarny','typ myszy
dla graczy
łączność
przewodowa
sensor
optyczny
model sensora
pixart paw 3395
rozdzielczość
26000 dpi
liczba przycisków
13
rolka przewijania
1
długość przewodu
2,1 m
profil
praworęczny
dodatkowe informacje
programowalne przyciski
profile ustawień
wbudowana pamięć
wbudowany wyświetlacz
kolor
czarny
długość
130 mm
szerokość
90 mm
wysokość
40 mm
waga
117 g');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('asus geforce rtx 4070 ti super rog strix gaming','6','5099','17','czarny','seria karty graficznej
geforce rtx z serii 40
obsługa ray tracingu
tak
technika upscalingu
nvidia dlss 3.5
układ graficzny
geforce rtx 4070 ti super
rodzaj złącza
pcie 4.0 x16
pamięć
16 gb
rodzaj pamięci
gddr6x
szyna pamięci
256 bit
efektywne taktowanie pamięci
21000 mhz
taktowanie rdzenia w trybie boost
2670 mhz
2700 mhz oc mode
rdzenie cuda
8448
typ chłodzenia
aktywne
liczba wentylatorów
3
podświetlenie
tak
rodzaje wyjść
hdmi 2.1a - 2 szt.
displayport 1.4a - 3 szt.
liczba obsługiwanych monitorów
4
obsługiwane biblioteki
directx 12 ultimate
opengl 4.6
złącze zasilania
16 pin - 1 szt.
rekomendowana moc zasilacza
750 w
długość
336 mm
szerokość
150 mm
wysokość
63 mm
format pcb
atx
liczba zajmowanych slotów
3.15 slot
dołączone akcesoria
wspornik
adapter pcie 16pin do 3x 8pin');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('amd ryzen 9 9950x','7','2999','10','','rodzina procesorów
amd ryzen™
seria procesora
ryzen™ 9 9950x
gniazdo procesora (socket)
socket am5
obsługiwany chipset
x670
x670e
b650e
b650
a620
x870
x870e
architektura
zen 5
taktowanie rdzenia
4.3 ghz (5.7 ghz w trybie turbo)
liczba rdzeni fizycznych
16 rdzeni
liczba wątków
32 wątki
odblokowany mnożnik
tak
pamięć podręczna
80 mb
zintegrowany układ graficzny
tak
model układu graficznego
radeon™ graphics
rodzaj obsługiwanej pamięci
ddr5-5600
ddr5-3600
proces litograficzny
4 nm
pobór mocy (tdp)
170 w
zastosowane technologie
amd expo™
amd precision boost 2
dodatkowe informacje
obsługa pamięci ecc
wersja box
chłodzenie w zestawie
nie');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('seagate ironwolf pro','8','2469','0','','pojemność
22000 gb
format
3.5""
interfejs
sata iii (6.0 gb/s) - 1 szt.
pamięć podręczna cache
512 mb
prędkość obrotowa
7200 obr./min
prędkość odczytu (maksymalna)
285 mb/s
niezawodność mtbf
2 500 000 godz
dodatkowe informacje
technologia zapisu cmr
zgodność z systemami nas
seagate rescue services (usługi odzyskiwania danych)
wysokość
26,1 mm
szerokość
101,85 mm
głębokość
147 mm
waga
690 g');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('samsung 4tb m.2 pcie gen4 nvme 990 pro heatsink','9','1999','5','czarny','przeznaczenie produktu
pc
gaming
playstation 5
pojemność
4000 gb
format
m.2
interfejs
pcie nvme 4.0 x4
prędkość odczytu (maksymalna)
7450 mb/s
prędkość zapisu (maksymalna)
6900 mb/s
odczyt losowy
1,200,000 iops
zapis losowy
1,550,000 iops
rodzaj kości pamięci
tlc
niezawodność mtbf
1 500 000 godz
radiator
tak
dodatkowe informacje
technologia trim
technologia s.m.a.r.t
256-bitowe szyfrowanie danych aes
dołączone akcesoria
instrukcja obsługi
kolor
czarny
wysokość
8,2 mm
szerokość
24 mm
głębokość
80 mm
waga
28 g');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('asus rog strix z790-e gaming wifi ii','10','2509','19','czarny','budowa sekcji zasilania
18+1+2
rodzaj chłodzenia chipsetu płyty głównej
pasywny
obsługiwane rodziny procesorów
intel core i9
intel core i7
intel core i5
intel core i3
intel celeron
intel pentium
gniazdo procesora
socket 1700
chipset
intel z790
architektura procesora
raptor lake refresh (14 generacja)
raptor lake (13 generacja)
alder lake-s (12 generacja)
typ obsługiwanej pamięci
ddr5-5600 mhz
ddr5-5400 mhz
ddr5-5200 mhz
ddr5-5000 mhz
ddr5-4800 mhz
typ obsługiwanej pamięci oc
ddr5-8000 mhz
ddr5-7800 mhz
ddr5-7600 mhz
ddr5-7400 mhz
ddr5-7200 mhz
ddr5-7000 mhz
ddr5-6800 mhz
ddr5-6600 mhz
ddr5-6400 mhz
ddr5-6200 mhz
ddr5-6000 mhz
ddr5-5800 mhz
liczba banków pamięci
4 x dimm
maksymalna wielkość pamięci ram
192 gb
architektura pamięci
dual-channel
wewnętrzne złącza
sata iii (6 gb/s) - 4 szt.
m.2 pcie nvme 4.0 x4 / sata - 1 szt.
m.2 pcie nvme 4.0 x4 - 3 szt.
m.2 pcie nvme 5.0 x4 - 1 szt.
pcie 5.0 x16 - 1 szt.
pcie 4.0 x16 (tryb x4) - 2 szt.
usb 3.2 gen. 2x2 typu-c - 1 szt.
usb 3.2 gen. 1 - 2 szt.
usb 2.0 - 3 szt.
złącze wentylatora cpu 4 pin - 2 szt.
złącze wentylatora sys/cha - 5 szt.
złącze pompy aio - 1 szt.
złącze zasilania 8 pin - 2 szt.
złącze zasilania 24 pin - 1 szt.
thunderbolt 4 - 1 szt.
zewnętrzne złącza
hdmi - 1 szt.
displayport - 1 szt.
rj45 (lan) 2.5 gbps - 1 szt.
usb type-c - 2 szt.
usb 3.2 gen. 2 - 10 szt.
audio jack - 5 szt.
s/pdif - 1 szt.
złącze anteny wi-fi - 2 szt.
przycisk clear cmos - 1 szt.
przycisk usb bios flashback - 1 szt.
obsługa raid
raid 0
raid 1
raid 5
raid 10
obsługa układów graficznych w procesorach
tak
układ audio
realtek alc4080
łączność bezprzewodowa
bluetooth
wi-fi 7 (802.11 be)
dodatkowe informacje
podświetlenie led
format
atx
szerokość
244 mm
wysokość
305 mm
dołączone akcesoria
instrukcja obsługi
kabel sata - 2 szt.
elementy montażowe
antena wi-fi 2.4/5/6 ghz - 1 szt.
kolor
czarny');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('asus rog hyperion gr701','11','1599','5','czarny','typ obudowy
big tower
panel boczny
szkło hartowane
podświetlenie
argb
standard płyty głównej
atx
microatx
mini-itx
eatx
miejsca na wewnętrzne dyski/napędy
2 x 3,5""/2,5""
2 x 5,25""
miejsca na karty rozszerzeń
9
maksymalna długość karty graficznej
460 mm
maksymalna wysokość chłodzenia cpu
190 mm
maksymalna liczba wentylatorów
7
opcje montażu wentylatorów
3x 120/140 mm (przód)
1x 120/140 mm (tył)
3x 120/140 mm (góra)
opcje montażu chłodzenia wodnego
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
liczba zainstalowanych wentylatorów
4
zainstalowane wentylatory
3x 140 mm (przód)
1x 140 mm (tył)
przyciski i regulatory
kontroler led
power
reset
wyprowadzone złącza
usb 3.2 gen. 1 - 4 szt.
usb 3.2 gen. 2 typu-c - 1 szt.
usb 3.2 gen. 2x2 typu-c - 1 szt.
wyjście słuchawkowe/wejście mikrofonowe - 1 szt
materiał
aluminium
stal
szkło hartowane
kolor
czarny
dodatkowe informacje
system aranżowania kabli
otwór wspomagający montaż chłodzenia na procesor
montaż zasilacza na dole obudowy
filtry antykurzowe
panele boczne w formie drzwi
kontroler / hub wentylatorów
dołączone akcesoria
instrukcja montażu
komplet śrubek i elementów montażowych
wysokość
639 mm
szerokość
268 mm
głębokość
659 mm
waga
21 kg');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('kingston fury 128gb','12','1779','2','czarny','seria
beast
rodzaj pamięci
ddr5
pojemność całkowita
128 gb (4x32 gb)
pojemność kości
32 gb
liczba modułów
4
taktowanie
5600 mhz
opóźnienia (cycle latency)
cl 40
timingi
cl40-40-40
napięcie
1,1 v
obsługiwane profile oc
intel xmp
chłodzenie
radiator
wysokość z chłodzeniem
34,9 mm
pamięć ecc
tak
podświetlenie pamięci
nie
kolor
czarny');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('be quiet! dark power pro 13','13','1999','15','czarny','moc maksymalna
1600 w
standard
atx 3.0
wyprowadzone złącza
cpu 4+4 (8) pin - 1 szt.
cpu 8-pin - 1 szt.
eps12v 20+4 (24) pin - 1 szt.
pci-e 5.0 12+4 (16) pin - 2 szt
pci-e 2.0 6+2 (8) pin - 6 szt.
molex 4-pin - 5 szt.
sata - 16 szt.
sprawność
92-94% przy 230v oraz 20-100% obciążeniu.
certyfikat
80 plus titanium
zabezpieczenia
przed zbyt wysokim prądem (ocp)
przeciwprzeciążeniowe (opp)
termiczne (otp)
przeciwprzepięciowe (ovp)
przeciwzwarciowe (scp)
przed prądami udarowymi (sip)
przed zbyt niskim napięciem (uvp)
typ okablowania
modularny
średnica wentylatora
135 mm
kolor
czarny
dodatkowe informacje
zgodny z normami cb, ce
dołączone akcesoria
elementy montażowe
wysokość
86 mm
szerokość
150 mm
głębokość
200 mm');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('deepcool ak620 digital argb','14','309','1','czarny','rodzaj chłodzenia
aktywne
kompatybilność
2066
2011-3
2011
1700
1200
1155
1151
1150
am5
am4
rozmiar radiatora
127 x 110 x 157 mm
materiał radiatora
miedź
ciepłowody
6 x 6 mm
liczba wentylatorów
2x 120 mm
kontrola obrotów
pwm
prędkość obrotowa
500 - 1850 obr./min
rodzaj łożyska
fluid dynamic bearing
maksymalny poziom hałasu
28 db
maksymalny przepływ powietrza
68,9 cfm
rozmiar wentylatora
120 x 120 x 25 mm
prąd zasilający
0,12 a
podświetlenie
rgb
dodatkowe informacje
kolorowy ekran lcd
wysokość
162 mm
szerokość
129 mm
głębokość
138 mm
dołączone akcesoria
pasta termoprzewodząca
zestaw montażowy backplate intel & amd
zestaw montażowy');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('corsair icue h150i elite lcd xt black','15','1369','8','czarny','rodzaj chłodzenia
wodne
kompatybilność
2066
2011
1700
1200
1156
1151
1150
str4
am5
am4
materiał radiatora
aluminium
liczba wentylatorów
3x 120 mm
kontrola obrotów
pwm
prędkość obrotowa
550 - 2100 obr./min
maksymalny poziom hałasu
34,1 db
maksymalny przepływ powietrza
65,6 cfm
rozmiar wentylatora
120 x 120 x 25 mm
podświetlenie
rgb
dodatkowe informacje
kolorowy ekran lcd
waga
1100 g
dołączone akcesoria
zestaw montażowy backplate intel & amd
instrukcja instalacji
śrubki montażowe
kontroler rgb');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('creative sound blaster x ae-5 plus','16','579','20','czarny','typ karty dźwiękowej
wewnętrzna
system dźwięku
5.1
interfejs
pci-e
procesor dźwięku
sound core3d
próbkowanie
32 bit
częstοtliwość próbkowania
384 khz
stosunek sygnału do szumu (snr)
122 db
obsługiwane standardy dźwięku
dolby surround
dts connect
rodzaje wejść / wyjść
wyjście słuchawkowe/głośnikowe (jack 3,5 mm) - 4 szt.
wejście mikrofonowe - 1 szt.
wyjście optyczne s/pdif toslink - 1 szt.
dodatkowe informacje
kontroler audio dac klasy premium
dołączone akcesoria
skrócona instrukcja obsługi');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('asus xg-c100f','17','449','16','czerwony','rodzaj
przewodowa
interfejs
pci-e
rodzaje wejść / wyjść
sfp+ - 1 szt.
maksymalna prędkość transmisji bezprzewodowej
do 10000 mb/s
dodatkowe informacje
aluminiowy radiator
qos');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('asus sdrw-08u5s slim','18','229','3','srebrny','rodzaj napędu
zewnętrzny
funkcje napędu
nagrywanie płyt dvd
nagrywanie płyt cd
odtwarzanie płyt dvd
odtwarzanie płyt cd
interfejs
usb 2.0
prędkość zapisu
dvd±r - 8x
dvd±r dl - 6x
dvd-ram - 5x
dvd+rw - 8x
dvd-rw - 6x
cd-r - 24x
cd-rw - 24x
prędkość odczytu
dvd-rom - 8x
cd-rom - 24x
dvd±r - 8x
dvd±r dl - 8x
dvd-ram - 5x
dvd+rw - 8x
dvd-rw - 8x
cd-r - 24x
cd-rw - 24x
czas dostępu
dvd - 160 ms
cd - 160 ms
wysokość
12,9 mm
szerokość
135,5 mm
głebokość
140 mm
waga
255 g');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('hyperx procast ','19','1119','2','czarny','przeznaczenie
komputerowe
system mocowania
statyw biurkowy
rodzaj łączności
przewodowa
charakterystyka kierunkowości
kardioidalna
złącze
xlr - 1 szt.
czułość
-38 db
zasilanie
phantom 48v
dodatkowe informacje
gwint 3/8""
gwint 5/8""
uchwyt antywstrząsowy
filtr górnoprzepustowy - 80 hz
stosunek sygnału do szumu: 75 db
kolor
czarny
dołączone akcesoria
filtr pop
instrukcja obsługi
adapter do statywu
waga
372 g');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('hp designjet t230','20','4239','4','czarny','przeznaczenie produktu
do biura i korporacji
zastosowanie
rysunki liniowe
prezentacje
renderingi
technologia druku
atramentowa, kolorowa
obsługiwany typ nośnika
papier zwykły
obsługiwane formaty nośników
a4
a3
a2
a1
24""
system stałego zasilania atramentem (ciss)
nie
rozmiar zwoju
od 279 do 610 mm
rodzaje podajników papieru
rolka
szybkość druku w kolorze
do 1,1 str./min
maksymalna rozdzielczość druku
2400 x 1200 dpi
maksymalna gramatura papieru
280 g/m²
druk dwustronny (dupleks)
brak
wersja z wifi
tak
interfejsy
usb
wi-fi
lan (ethernet)
airprint
wyświetlacz
wbudowany
liczba wkładów drukujących
4
dodatkowe informacje
drukowanie bezpośrednio ze smartfonów i tabletów
automatyczna gilotyna
dołączone akcesoria
kabel zasilający
tusze startowe
kolor
czarny
szerokość
1013 mm
wysokość
285 mm
głębokość
440 mm
waga
21,5 kg');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('sony bravia theatre bar 9 + sa-rs3s','21','6399','14','czarny','liczba kanałów
7.0.2
subwoofer
brak
łączność bezprzewodowa
bluetooth
wi-fi
airplay
zakrzywiona konstrukcja
nie
systemy dźwięku
dolby digital
dolby digital plus
dolby true hd
dts
dts-es
dolby dual mono
dolby atmos
dts: x
imax enhanced
360 spatial sound mapping
odtwarzane formaty plików
aac
sbc
ldac
rodzaje wejść
hdmi 1 szt.
rodzaje wyjść
hdmi (earc)
funkcje dodatkowe
tryb głosowy
tryb nocny
spotify connect
informacje uzupełniające
technologia wirtualnego dźwięku przestrzennego
kolor
czarny
wysokość
64 mm
szerokość
1300 mm
głębokość
113 mm
waga
5,5 kg
dołączone akcesoria
kabel hdmi
pilot
kabel zasilający
baterie do pilota
uchwyty do montażu na ścianie
głośniki
podstawa stołowa');
insert into `products`(`name`, `id_product_type`, `price`, `quantity`, `color`, `description`) values ('jbl quantum 910 psp','22','999','20','biały','łączność
bezprzewodowa i przewodowa
rodzaj łączności
bluetooth 5.2
budowa słuchawek
nauszne
zamknięte
system audio
stereo 2.0
wielokanałowy 7.1 - wirtualne
redukcja hałasu
aktywna - anc
średnica membrany
50 mm
pasmo przenoszenia słuchawek
20 ~ 40000 hz
impedancja słuchawek
32 ω
czułość słuchawek
111 db
wbudowany mikrofon
posiada, przy słuchawce
odłączany mikrofon
nie
charakterystyka mikrofonu
jednokierunkowy
pasmo przenoszenia mikrofonu
100 ~ 8000 hz
czułość mikrofonu
-38 db
zasilanie
wbudowany akumulator 1300 mah
czas ładowania
ok. 3,5h
maksymalny czas pracy
do 47 h (przy wyłączonym podświetleniu)
kompatybilność
android
windows
mac os
ios
nintendo switch
xbox one
xbox series x
xbox series s
playstation 4
playstation 5
połączenie z konsolą
bezprzewodowo
bezprzewodowo – wymagany adapter usb
przewodowo – jack 3,5mm
zastosowane technologie
certyfikat hi-res audio
a2dp
hfp
quantumsphere 360™
quantumsurround
materiał nauszników
pianka
skóra naturalna
dodatkowe informacje
regulowany pałąk
podświetlane nauszniki
pianka memory w nausznicach
miękko wyściełany pałąk
przetwornik dynamiczny
możliwość wyciszania mikrofonu
ruchomy mikrofon
funkcja śledzenia ruchu głowy
kolor
biało-niebieskie
dołączone akcesoria
odbiornik
kabel usb
kabel jack 3,5 mm
adapter usb-a - usb-c
osłona przeciwwietrzna
instrukcja obsługi');

insert into `location_to_product`(`id_product`, `id_location`) values ('1', '21');
insert into `location_to_product`(`id_product`, `id_location`) values ('2', '22');
insert into `location_to_product`(`id_product`, `id_location`) values ('3', '23');
insert into `location_to_product`(`id_product`, `id_location`) values ('4', '22');
insert into `location_to_product`(`id_product`, `id_location`) values ('5', '24');
insert into `location_to_product`(`id_product`, `id_location`) values ('6', '25');
insert into `location_to_product`(`id_product`, `id_location`) values ('7', '24');
insert into `location_to_product`(`id_product`, `id_location`) values ('8', '26');
insert into `location_to_product`(`id_product`, `id_location`) values ('9', '26');
insert into `location_to_product`(`id_product`, `id_location`) values ('10', '28');
insert into `location_to_product`(`id_product`, `id_location`) values ('11', '27');
insert into `location_to_product`(`id_product`, `id_location`) values ('12', '29');
insert into `location_to_product`(`id_product`, `id_location`) values ('13', '30');
insert into `location_to_product`(`id_product`, `id_location`) values ('14', '29');
insert into `location_to_product`(`id_product`, `id_location`) values ('15', '27');
insert into `location_to_product`(`id_product`, `id_location`) values ('16', '30');
insert into `location_to_product`(`id_product`, `id_location`) values ('17', '24');
insert into `location_to_product`(`id_product`, `id_location`) values ('18', '26');
insert into `location_to_product`(`id_product`, `id_location`) values ('19', '27');
insert into `location_to_product`(`id_product`, `id_location`) values ('20', '29');
insert into `location_to_product`(`id_product`, `id_location`) values ('21', '28');
insert into `location_to_product`(`id_product`, `id_location`) values ('22', '21');

insert into `warehouses`(`name`, `id_location`) values ('magazyn_1','21');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_2','22');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_3','23');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_4','24');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_5','25');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_6','26');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_7','27');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_8','28');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_9','29');
insert into `warehouses`(`name`, `id_location`) values ('magazyn_10','30');

insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','1','11','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','2','12','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','3','13','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','4','14','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','5','15','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','6','16','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','7','17','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','8','18','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','9','19','09:00 - 18:00');
insert into `stores`(`name`,`id_employee_manager`, `id_location`, `opening_hours`) values ('techzone','10','20','09:00 - 18:00');

insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('fedex','+48501234567','fedex@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('ups','+48602345676','ups@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('gls','+48600456789','dhl@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('dpd','+48503567890','gls@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('tnt','+48604678901','dpd@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('hermes','+48505789012','tnt@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('yodel','+48606890123','hermes@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('postnl','+48507901234','yodel@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('chronopost','+48608012345','postnl@example.com');
insert into `suppliers`(`name`, `phone_number`, `email_address`) values ('aramex','+48509123456','aramex@example.com');

insert into `payment_types`(`name`) values ('blik');
insert into `payment_types`(`name`) values ('karta debetowa');
insert into `payment_types`(`name`) values ('karta kredytowa');
insert into `payment_types`(`name`) values ('przelew bankowy');
insert into `payment_types`(`name`) values ('gotówka');
insert into `payment_types`(`name`) values ('google pay');
insert into `payment_types`(`name`) values ('apple pay');
insert into `payment_types`(`name`) values ('płatność za pobraniem');
insert into `payment_types`(`name`) values ('płatność przy użyciu karty podarunkowej');
insert into `payment_types`(`name`) values ('płatność na raty');

insert into `delivery_types`(`name`) values ('dostawa do domu');
insert into `delivery_types`(`name`) values ('dostawa do punktu odbioru');
insert into `delivery_types`(`name`) values ('dostawa międzynarodowa');
insert into `delivery_types`(`name`) values ('dostawa ekspresowa do domu');
insert into `delivery_types`(`name`) values ('dostawa ekspresowa do punktu odbioru');
insert into `delivery_types`(`name`) values ('dostawa w sobotę do domu');
insert into `delivery_types`(`name`) values ('dostawa w sobotę do punktu odbioru');
insert into `delivery_types`(`name`) values ('dostawa za pobraniem ');

insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('1', '21', '31', '1', '1', '1', '22299', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('2', '22', '32', '2', '1', '2', '18900', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('3', '23', '33', '3', '1', '3', '7959', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('4', '22', '34', '4', '1', '4', '899', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('5', '22', '35', '5', '1', '2', '18900', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('6', '2', '36', '6', '1', '5', '1099', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('7', '22', '37', '7', '1', '2', '18900', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('8', '24', '38', '8', '1', '5', '1099', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('9', '22', '37', '7', '1', '2', '18900', '2');
insert into `orders`(`id_customer`, `id_location_product`, `id_location_pickup`, `id_employee`, `id_payment_type`, `id_product`, `order_amount`, `id_delivery_type`) values ('10', '22', '39', '9', '1', '2', '18900', '2');

insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('1','1');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('2','2');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('3','6');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('4','7');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('5','8');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('6','9');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('7','4');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('8','5');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('9','4');
insert into `suppliers_to_order`( `id_order`, `id_supplier`) values ('10','3')