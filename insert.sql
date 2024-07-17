-- Inserting Data 

insert into customer3 (

customer_id ,first_name ,last_name ,address ,billing_info 

)values
(1,'Robert','Downey Jr','2333 North FIU Dr, Miami, FL, 33129','DISCOVER 6745678332528972 01/29 243'),
(2,'Dua','Lipa','1045 N Hollywood Dr, San Francisco, CA, 33100', 'AMEX 2345678332458972 01/35 4565'),
(3,'Max','Duarte','34 S Campton Dr, San Francisco, CA, 33100', 'VISA 2578921232445972 04/30 012'),
(4,'Robert','Downey','900 N Hollywood Dr, San Francisco, CA, 33100', 'MASTERCARD 52567521342458982 07/29 321'),
(5,'James','Brown','888 N Hollywood Dr, San Francisco, CA, 33100', 'MASTERCARD 52437561373467982 01/28 411');


-- CHANGE THE BARCODE ENTRY TO numeric rather than integer
-- Also include the number of tickets

insert into ticket (

movie_id , movie_time , barcode ,ticket_price , movie_date , customer_id 

) values 

(1,'12:30 PM',123123,12.40,'06/05/2024',1),
(2,'12:30 PM',12312323,12.40,'06/05/2024',2),
(3,'2:30 AM',123123,12.40,'06/06/2024',3),
(4,'09:40 PM',545123,09.40,'06/07/2024',3),
(5,'08:15 PM',653123,09.40,'06/07/2024',5);

--- change the product_id to num_items
insert into concessions2 (
concessions_id ,order_subtotal ,tax,order_total,tip ,customer_id ,product_id 

) values 

(1,10,2.20,12.20,5.00,2,1),
(2,12,1.20,13.20,3.00,5,3),
(3,11,4.20,15.20,3.00,3,5),
(4,15,3.50,18.20,3.00,4,4),
(5,13,4.00,17.00,3.00,1,2);

insert into movies2 (

movie_id ,movie_name ,movie_genre ,movie_rating 

) values 
 (2,'Spectre','Action/Thriller','PG13'),
 (3,'Love In The Time Of Cholera','Romance','PG13'),
 (4,'Avengers 2','Action/Thriller','PG13');

insert into product2 (

product_id,product_name,price ,product_type,inventory_id

) values

(1,'Coca-Cola 20oz',3.29,'Soft Drink',1),
(2,'Popcorn small',5.99,'Snack',2),
(3,'Skittles',3.29,'Candy',4),
(4,'Pizza',2.99,'Fast Food',3),
(5,'Hot-Dog',2.59,'Fast Food',5);



insert into warehouse (
warehouse_id ,location_

) values 

(1,'4132 NW 109 ST, Doral, Fl, 33166');

insert into theater2 (

theater_id , number_screens , address 

)values 

(1,8,'1066 SW 10TH AVE, MIAMI, FL, 33129'),
(2,10,'2045 NW 98TH ST,Hollywood, FL, 33145'),
(3,10,'2045 NW 98TH ST,Hollywood, FL, 33145'),
(4,10,'2045 NW 98TH ST,Hollywood, FL, 33145'),
(5,6,'945 S HAMPTON ST, HOLLYWOOD, FL, 33199');

insert into screen_room2 (

room_id, number_seats, number_exits , theater_id 

) values 

(1,50,3,1),
(2,50,2,2),
(3,50,3,3),
(4,50,3,4),
(5,20,2,5);



insert into inventory3 (

inventory_id,
product_amount,
theater_key,
warehouse_id

) values 

(1,10,2,1),
(2,34,2,1),
(3,55,2,1),
(4,100,2,1),
(5,56,2,1);




--- USE A PROCEDURE TO ADD/DROP CUSTOMER_INFO --

select * from customer_info;

create or replace function new_customer(_new_id INTEGER,_first_name VARCHAR,_last_name VARCHAR,_address VARCHAR, _billing_info VARCHAR)
returns void
as $MAIN$
begin 
	insert into customer_info(customer_id,first_name,last_name,address,billing_info)
	values(_new_id,_first_name,_last_name,_address,_billing_info) ;
end;
$MAIN$
language plpgsql;

-- queries to call function, verify entry and drop the function.

select new_customer(6,'James','Bond','007 Spylane,Hollywood,CA,33007','AMEX 123134353141241324 EXP:NEVER 234');
select * from customer_info ci ;
drop function new_customer;

--- USING A PROCEDURE TO DROP A CUSTOMER WHO IS NO LONGER RETURNING --

create or replace function del_customer(_customer_id INTEGER)
returns void 
as $MAIN$
begin 
	delete from customer_info where customer_id = _customer_id;
end;
$MAIN$
language plpgsql;



select del_customer(6);
select * from customer_info ;

drop function del_customer

