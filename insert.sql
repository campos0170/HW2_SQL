-- Inserting Data 

insert into customers3 (

customer_id ,first_name ,last_name ,address ,billing_info 

)values

(2,'Dua','Lipa','1045 N Hollywood Dr, San Francisco, CA, 33100', 'AMEX 2345678332458972 01/35 4565'),
(3,'Max','Duarte','34 S Campton Dr, San Francisco, CA, 33100', 'VISA 2578921232445972 04/30 012'),
(4,'Robert','Downey','900 N Hollywood Dr, San Francisco, CA, 33100', 'MASTERCARD 52567521342458982 07/29 321');


-- CHANGE THE BARCODE ENTRY TO numeric rather than integer
-- Also include the number of tickets

insert into ticket2 (

ticket_id , movie_id , movie_time, barcode ,ticket_price , movie_date , customer_id 

) values 

(1,1,'12:30 PM',123123,12.40,'06/05/2024',1),
(2,1,'12:30 PM',12312323,12.40,'06/05/2024',2),
(3,2,'2:30 AM',123123,12.40,'06/06/2024',3),
(4,3,'06:25 PM',123123,09.40,'06/07/2024',4);


insert into concessions3 (
concessions_id ,order_sub ,order_total ,customer_id ,product_id ,tip

) values 

(1,9.50,12.99,1,1,2.82),
(2,10.00,20,2,2,9.30),
(3,20.00,35.00,3,3,13.60),
(4,12.00,18.00,3,2,5.16);

insert into movies2 (

movie_id ,movie_name ,movie_genre ,movie_rating 

) values 
 (2,'Spectre','Action/Thriller','PG13'),
 (3,'Love In The Time Of Cholera','Romance','PG13'),
 (4,'Avengers 2','Action/Thriller','PG13');

insert into product (

product_id,price,product_name ,product_type 

) values

(1,2.30,'Coca-Cola','Soft Drink'),
(2,5.99,'Oreos','Snacks'),
(3,12.99,'Skittles Bag','Candy'),
(4,3.99,'Popcorn Bag small','Snack');

insert into warehouse (
warehouse_id ,"location" 

) values 

(1,'4132 NW 109 ST, Doral, Fl, 33166');

insert into "Theater" (

theater_id , address , number_screens 

)values 

(1,'1066 SW 10TH AVE, MIAMI, FL, 33129',8),
(2,'2045 NW 98TH ST,Hollywood, FL, 33145',10),
(3,'945 S HAMPTON ST, HOLLYWOOD, FL, 33199',6);

insert into "screen room" (

room_id, number_seats, number_exits , theater_id 

) values 

(1,50,3,1),
(2,50,2,2),
(3,50,3,3),
(4,50,3,4);




















