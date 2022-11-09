CREATE TABLE customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
 	address VARCHAR(100),
  	billing_info VARCHAR(50)
);

CREATE TABLE salesperson (
  	staff_id SERIAL primary key,
  	first_name VARCHAR(20),
  	last_name VARCHAR(20)
);

CREATE TABLE vehicle (
  	vehicle_id SERIAL primary key,
  	make VARCHAR(20),
  	model VARCHAR(20),
  	year_made INTEGER,
  	customer_id INTEGER,
  	staff_id INTEGER,
  	foreign key(customer_id) references customer(customer_id),
  	foreign key(staff_id) references salesperson(staff_id)
);

CREATE TABLE mechanic (
  	mechanic_id SERIAL primary key,
  	first_name VARCHAR(20),
  	last_name VARCHAR(20),
  	cost_parts NUMERIC(5,2),
  	cost_labor NUMERIC(5,2),
  	cost_toal NUMERIC(6,2),
  	vehicle_id INTEGER,
  	foreign key(vehicle_id) references vehicle(vehicle_id)
);

CREATE TABLE service_ticket (
  	service_ticket_id SERIAL primary key,
  	mechanic_id INTEGER,
  	vehicle_id INTEGER,
  	customer_id INTEGER,
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(vehicle_id) references vehicle(vehicle_id),
	foreign key(customer_id) references customer(customer_id)
);

CREATE TABLE invoice (
  	invoice_id SERIAL primary key,
  	total_cost NUMERIC(6,2),
  	customer_id INTEGER,
  	staff_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(staff_id) references salesperson(staff_id)
);

