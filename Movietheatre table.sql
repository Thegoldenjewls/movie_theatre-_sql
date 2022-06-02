CREATE TABLE customer(
	-- column_name DATA_TYPE,
	customer_id SERIAL PRIMARY KEY,
	loyalty_member BOOLEAN
);

CREATE TABLE tickets(
	-- column_name DATA_TYPE,
	ticket_id SERIAL PRIMARY KEY,
	price NUMERIC (4,2),
	matinee BOOLEAN
);

CREATE TABLE movies(
	-- column_name DATA_TYPE,
	title SERIAL PRIMARY KEY,
	cast VARCHAR(40),
	description VARCHAR(50),
	length NUMERIC(6,2),
	rating NUMERIC(2,1),
	loyalty_member BOOLEAN
);

CREATE TABLE concessions(
	-- column_name DATA_TYPE,
	product_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	description VARCHAR(50),
	price NUMERIC(4,2),
	category integer NOT null
	seller_id integer NOT null
);