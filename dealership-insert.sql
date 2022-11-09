-- customer information
insert into customer(customer_id, first_name, last_name, address, billing_info)
values(1, 'Joe', 'Vigliano', '321 Summer Estate Dr, Indianapolis, 46256', '4737 2265 9487 4625 03/25 458');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values(2, 'Billy', 'Montoya', '4692 Castle Farms Rd, Indianapolis, 46256', '4737 0284 1999 0736 05/24 621');

-- verify
select * from customer;

-- salesperson information
insert into salesperson(staff_id, first_name, last_name)
values(7003, 'Tom', 'Hernandez');

insert into salesperson(staff_id, first_name, last_name)
values(6387, 'Aaron', 'Pearson');

-- verify
select * from salesperson;

-- vehicle information
insert into vehicle(vehicle_id, make, model, year_made)
values(648, 'GMC', 'Yukon XL', 2019);

insert into vehicle(vehicle_id, make, model, year_made)
values(376, 'Honda', 'Civic', 2016);

-- verify 
select * from vehicle;

--mechanic information
insert into mechanic(mechanic_id, first_name, last_name, cost_parts, cost_labor, cost_toal)
values(1, 'Clint', 'Cambell', 250, 150, 400);
insert into mechanic(mechanic_id, first_name, last_name, cost_parts, cost_labor, cost_toal)
values(2, 'Scott', 'Peterson', 300, 200, 500);

-- verify
select * from mechanic;
