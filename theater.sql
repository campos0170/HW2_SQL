create table customer3( 

customer_id SERIAL primary key,
first_name VARCHAR(100),
last_name VARCHAR(100),
address VARCHAR(150),
billing_info VARCHAR(150)

);

create table movies ( 
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_genre VARCHAR(100),
	laguage VARCHAR(100),
	movie_rating VARCHAR(10)

);

create table ticket ( 
	movie_id SERIAL primary key,
	movie_time VARCHAR(10),
	barcode INTEGER,
	ticket_price NUMERIC(5,2),
	movie_date VARCHAR(10),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer3(customer_id)

);


create table warehouse (
	warehouse_id SERIAL primary key,
	location VARCHAR(100)

);




create table theater2 (
	theater_id SERIAL primary key,
	address VARCHAR(100),
	number_screens INTEGER

);

-- Update column from number_exits to screen size.

create table screen_room2 (
	room_id SERIAL primary key,
	number_seats INTEGER,
	number_exits INTEGER,
	theater_id INTEGER not null,
	foreign key(theater_id) references theater2(theater_id)

);

create table inventory3 (

	inventory_id SERIAL primary key,
	product_amount INTEGER,
	theater_key INTEGER not null,
	foreign key(theater_key) references theater2(theater_id),
	warehouse_id INTEGER not null,
	foreign key(warehouse_id) references warehouse(warehouse_id)

);


--- product_type may not be necessary.

create table product2 (

	product_id SERIAL primary key,
	product_name VARCHAR(100),
	price NUMERIC(5,2),
	product_type VARCHAR(100),
	inventory_id INTEGER not null,
	foreign key(inventory_id) references inventory3(inventory_id)

);

create table concessions2 (

	concessions_id SERIAL primary key,
	order_subtotal NUMERIC(5,2),
	order_total NUMERIC(5,2),
	tax NUMERIC(5,2),
	tip NUMERIC(5,2),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer3(customer_id),
	product_id INTEGER not null,
	foreign key(product_id) references product2(product_id)
);

