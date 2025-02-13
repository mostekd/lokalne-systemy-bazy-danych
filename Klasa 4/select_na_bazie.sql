
-- Simple selects
select * from customers;
select first_name, last_name from employees;
select name, price from products;

-- Select with conditions
select * from products where price > 1000;
select * from customers where city = 'Warsaw';

-- Select with ordering
select * from products order by price desc;
select * from employees order by last_name asc;

select * from products limit 10;
select * from customers limit 5;

-- Select with join
select c.first_name, c.last_name, l.city from customers c
join locations l on c.id_location = l.id_location;

select e.first_name, e.last_name, p.position_name from employees e
join positions p on e.id_position = p.id_position;

-- Select with multiple joins
select o.id_order, c.first_name, c.last_name, p.name as product_name, o.order_amount from orders o
join customers c on o.id_customer = c.id_customer
join products p on o.id_product = p.id_product;

select o.id_order, e.first_name, e.last_name, p.name as product_name, o.order_amount from orders o
join employees e on o.id_employee = e.id_employee
join products p on o.id_product = p.id_product;

-- Select with aggregate functions
select count(*) as total_customers from customers;
select avg(price) as average_price from products;
select sum(order_amount) as total_sales from orders;

-- Select with group by
select city, count(*) as customer_count from customers group by city;
select id_product, sum(quantity) as total_quantity from location_to_product group by id_product;

-- Complex select with subquery
select c.first_name, c.last_name, (select count(*) from orders o where o.id_customer = c.id_customer) as order_count
from customers c;

-- Complex select with multiple joins and conditions
select o.id_order, c.first_name, c.last_name, p.name as product_name, o.order_amount, s.name as supplier_name
from orders o
join customers c on o.id_customer = c.id_customer
join products p on o.id_product = p.id_product
join suppliers_to_order so on o.id_order = so.id_order
join suppliers s on so.id_supplier = s.id_supplier
where o.order_amount > 1000 and s.name = 'FedEx';

-- Complex select with aggregate functions and group by
select e.first_name, e.last_name, count(o.id_order) as total_orders, sum(o.order_amount) as total_sales
from employees e
join orders o on e.id_employee = o.id_employee
group by e.id_employee
having total_sales > 5000;

-- Complex select with window functions
select e.first_name, e.last_name, o.order_amount, sum(o.order_amount) over (partition by e.id_employee) as total_sales_per_employee
from employees e
join orders o on e.id_employee = o.id_employee;

-- Complex select with case statement
select o.id_order, c.first_name, c.last_name, 
    case 
        when o.order_amount > 1000 then 'High'
        when o.order_amount between 500 and 1000 then 'Medium'
        else 'Low'
    end as order_value_category
from orders o
join customers c on o.id_customer = c.id_customer;

-- Complex select with union
select first_name, last_name, 'Customer' as role from customers
union
select first_name, last_name, 'Employee' as role from employees;