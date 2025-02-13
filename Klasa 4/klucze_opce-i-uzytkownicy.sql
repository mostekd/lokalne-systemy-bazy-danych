use shop;

alter table customers 
    add foreign key (id_location) references locations(id_location);

alter table employees
    add foreign key (id_position) references positions(id_position),
    add foreign key (id_location) references locations(id_location);

alter table products
    add foreign key (id_product_type) references product_types(id_product_type);

alter table location_to_product
    add foreign key (id_location) references locations(id_location),
    add foreign key (id_product) references products(id_product);
    
alter table warehouses
    add foreign key (id_location) references locations(id_location);

alter table stores
    add foreign key (id_employee_manager) references employees(id_employee),
    add foreign key (id_location) references locations(id_location);

alter table orders
    add foreign key (id_customer) references customers(id_customer),
    add foreign key (id_location_product) references locations(id_location),
    add foreign key (id_location_pickup) references locations(id_location),
    add foreign key (id_employee) references employees(id_employee),
    add foreign key (id_payment_type) references payment_types(id_payment_type),
    add foreign key (id_product) references products(id_product),
    add foreign key (id_delivery_type) references delivery_types(id_delivery_type);

alter table suppliers_to_order
    add foreign key (id_order) references orders(id_order),
    add foreign key (id_supplier) references suppliers(id_supplier);
    
drop user if exists 'shop_admin'@'localhost';
drop user if exists 'shop_system'@'localhost';
drop user if exists 'shop_customer'@'localhost';
drop user if exists 'shop_employee'@'localhost';

create user 'shop_admin'@'localhost' identified by 'admin';
grant select, insert, update, delete on shop.orders to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.product_types to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.payment_types to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.stores to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.delivery_types to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.positions to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.products to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.location_to_product to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.employees to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.locations to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.suppliers_to_order to 'shop_admin'@'localhost';
grant select, insert, update, delete on shop.suppliers to 'shop_admin'@'localhost';

create user 'shop_system'@'localhost' identified by 'system';
grant select, delete on shop.customers to 'shop_system'@'localhost';

create user 'shop_customer'@'localhost' identified by 'customer';
grant update on shop.customers to 'shop_customer'@'localhost';
grant select, insert, update on shop.customers to 'shop_customer'@'localhost';
grant select on shop.products to 'shop_customer'@'localhost';
grant select on shop.stores to 'shop_customer'@'localhost';

create user 'shop_employee'@'localhost' identified by 'employee';
grant select, insert, update on shop.suppliers to 'shop_employee'@'localhost';
grant select, insert, update on shop.suppliers_to_order to 'shop_employee'@'localhost';
grant select on shop.customers to 'shop_employee'@'localhost';
grant select on shop.warehouses to 'shop_employee'@'localhost';
grant select on shop.employees to 'shop_employee'@'localhost';
grant select, insert, update on shop.location_to_product to 'shop_employee'@'localhost';
grant select, insert, update on shop.products to 'shop_employee'@'localhost';
grant select on shop.stores to 'shop_employee'@'localhost';
grant select, update on shop.orders to 'shop_employee'@'localhost';