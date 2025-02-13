delimiter //
create procedure sp_profit_report(in start_date date, in end_date date, in id_customer int)
begin
    select 
        o.id_order as 'order id',
        o.id_customer as 'customer id',
        o.order_amount as 'order amount',
        p.name as 'payment type',
        s.name as 'supplier',
        (o.order_amount - s.delivery_cost) as 'total sales value'
    from 
        orders o
    join 
        payment_types p on o.id_payment_type = p.id_payment_type
    join 
        suppliers_to_order so on o.id_order = so.id_order
    join
        suppliers s on so.id_supplier = s.id_supplier
    where 
        o.order_date between start_date and end_date
        and (id_customer is null or o.id_customer = id_customer);

    select 
        sum(o.order_amount - s.delivery_cost) as 'total profits'
    from 
        orders o
    join 
        suppliers_to_order so on o.id_order = so.id_order
    join
        suppliers s on so.id_supplier = s.id_supplier
    where 
        o.order_date between start_date and end_date
        and (id_customer is null or o.id_customer = id_customer);
end //
delimiter ;

delimiter //
create procedure sp_employee_efficiency_report(in start_date date, in end_date date)
begin
    select 
        e.first_name as 'employee first name',
        e.last_name as 'employee last name',
        p.position_name as 'position',
        count(o.id_order) as 'number of completed orders',
        sum(o.order_amount) as 'total order amount'
    from 
        orders o
    join 
        employees e on o.id_employee = e.id_employee
    join 
        positions p on e.id_position = p.id_position
    where 
        o.order_date between start_date and end_date
    group by 
        e.id_employee;
    
    select 
        avg(sum(o.order_amount)) over () as 'average order value per employee',
        count(o.id_order) as 'total number of handled orders'
    from 
        orders o
    where 
        o.order_date between start_date and end_date;
end //
delimiter ;

delimiter //
create procedure sp_warehouse_report(in id_warehouse int)
begin
    select 
        w.name as 'warehouse name',
        p.name as 'product name',
        p.quantity as 'available quantity',
        p.price as 'unit price',
        (p.quantity * p.price) as 'total product value'
    from 
        products p
    join 
        warehouses w on p.id_location = w.id_warehouse
    where 
        w.id_warehouse = id_warehouse;
    
    select 
        sum(p.quantity * p.price) as 'total value of products in warehouse'
    from 
        products p
    join 
        warehouses w on p.id_location = w.id_warehouse
    where 
        w.id_warehouse = id_warehouse;
end //
delimiter ;
