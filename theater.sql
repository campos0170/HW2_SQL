CREATE TABLE "Theater" (
  "theater_id" SERIAL,
  "address" VARCHAR(100),
  "number_screens" integer,
  PRIMARY KEY ("theater_id")
);

CREATE TABLE "customers" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "billing_info" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "concessions" (
  "concessions_id" SERIAL,
  "order_sub" VARCHAR(100),
  "order_total" VARCHAR(100),
  "customer_id" integer,
  "product_id" Integer,
  "tip" NUMERIC(5,2),
  PRIMARY KEY ("concessions_id"),
  CONSTRAINT "FK_concessions.concessions_id"
    FOREIGN KEY ("concessions_id")
      REFERENCES "customers"("customer_id")
);

CREATE TABLE "product" (
  "product_id" SERIAL,
  "price" NUMERIC(5,2),
  "product_name" VARCHAR(100),
  "inventory_id" integer,
  "product_type" VARCHAR(100),
  PRIMARY KEY ("product_id"),
  CONSTRAINT "FK_product.product_id"
    FOREIGN KEY ("product_id")
      REFERENCES "concessions"("product_id")
);

CREATE TABLE "screen room" (
  "room_id" SERIAL,
  "number_seats" Integer,
  "number_exits" Integer,
  "theater_id" Integer,
  PRIMARY KEY ("room_id")
);

CREATE TABLE "inventory" (
  "inventory_id" SERIAL,
  "product_amount" integer,
  "theater_id" integer,
  "warehouse_id" integer,
  PRIMARY KEY ("inventory_id")
);

CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "movie_name" VARCHAR(100),
  "movie_genre" VARCHAR(100),
  "language" VARCHAR(100),
  "movie_rating" VARCHAR(4),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "movie_id" INTEGER,
  "movie_time" VARCHAR(10),
  "barcode" NUMERIC(10,2),
  "ticket_price" VARCHAR(10),
  "movie_date" VARCHAR(10),
  "customer_id" VARCHAR(100),
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "warehouse" (
  "warehouse_id" SERIAL,
  "location" VARCHAR(100),
  
  PRIMARY KEY ("warehouse_id")
);

