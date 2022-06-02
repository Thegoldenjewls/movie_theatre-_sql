--CREATE TABLE FOR customers
CREATE TABLE customer(
--column for name data_type
customer_id serial PRIMARY KEY,
first_name VARCHAR (50),
last_name VARCHAR (50),
ADDRESS VARCHAR (100),
phone_number VARCHAR (17),
loyalty_member boolean
);

SELECT *
FROM customer;

--creat a cart TABLE 
--Setting up a  foregin key is  2 steps: 1. Create the column 2. add foreign key to column
CREATE TABLE cart (
	cart_id serial PRIMARY KEY ,
	customer_id INTEGER NOT NULL, ---not null means that this column cant be empty
	--syntax: foregin key (column_in_domestic_table) references  (foreign_table_name)
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
	
SELECT *
FROM cart;


--creating the JOIN TABLE  BETWEEN cart AND product
CREATE TABLE cart_product(
cart_id INTEGER NOT NULL,
FOREIGN KEY (cart_id) REFERENCES cart (cart_id),
product_id INTEGER NOT NULL
--FOREIGN KEY (product_id) REFERENCES product (product_id) 
);

--create  the prodcut table (without foreign keys )
CREATE TABLE product(
product_id serial PRIMARY KEY,
prod_name VARCHAR (50),
description VARCHAR (200),
price numeric(5,2),
rating numeric(2,1)
);
SELECT *
FROM product 

--ALTER the product TABLE  TO ADD the FOREIGN KEY TO COLUMN 
ALTER TABLE cart_product 
ADD foregin KEY (product_id) REFERENCES  product(product_id);

--CREATE TABLE FOR seller 
CREATE TABLE seller (
seller_id SERIAL PRIMARY KEY,
brand_name VARCHAR (50),
description VARCHAR(200),

