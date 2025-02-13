use shop;

-- Update records in the database
update customers set city = 'Warsaw' where id_customer = 1;
update products set price = 1500 where id_product = 1;
update employees set salary = 6000 where id_employee = 1;
update orders set order_amount = 2500 where id_order = 1;
update suppliers set name = 'DHL' where id_supplier = 1;

-- Select statements to observe changes
select * from customers where id_customer = 1;
select * from products where id_product = 1;
select * from employees where id_employee = 1;
select * from orders where id_order = 1;
select * from suppliers where id_supplier = 1;


-- Observations and Conclusions:
-- After updating the city of the first customer to 'Warsaw', the select statement select * from customers where city = 'Warsaw'; now includes this customer in the results.
-- The price of the first product was updated to 1500, so the select statement select * from products where price > 1000; now includes this product in the results.
-- The salary of the first employee was increased to 6000, which will be reflected in any select statements that include the salary field for this employee.
-- The order amount for the first order was updated to 2500, affecting the total sales calculation in the select statement select sum(order_amount) as total_sales;.
-- The name of the first supplier was changed to 'DHL', which will be reflected in any select statements that include the supplier name.
-- These updates demonstrate how changes to the database records can impact the results of select queries, highlighting the importance of accurate and up-to