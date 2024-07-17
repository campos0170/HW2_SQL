-- CHANGING THE NAME OF ONE OF THE COLUMNS IN WAREHOUSE TABLE
alter table warehouse rename location to location_;


-- The following queries rename some of the tables to more appropiate names.


alter table inventory3 rename to theater_inventory;
alter table product2 rename to concession_products;
alter table customer3 rename to customer_info;



-- Here I dropped the column that gave information as to the number of exits in the screening rooms of the theater.
alter table screen_room2 drop column number_exits;

-- This query adds an extra column to the table screen room which details the size of the screen of the room.
alter table screen_room2 add column screen_size INTEGER;


-- the two queries deletes an unused table 'screen_room' which allows me to rename screen_room2

drop table screen_room;

alter table screen_room2 rename to screen_room;
