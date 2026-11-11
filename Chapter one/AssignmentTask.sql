USE berrylinkh_db;
-- CREATE TABLE users(
--     id serial primary key,
--     name VARCHAR(100) not null,
--     email VARCHAR(100) not null
-- );

-- CREATE TABLE products(
--     id serial primary key,
--     product_name VARCHAR(100) not null,
--     quantity int not null
-- );

-- CREATE TABLE orders (
--     id serial primary key,
--     product_name int REFERENCES product(id), 
--     user int REFERENCES users(id),
--     quantity int not null 
-- );
-- -- A Primary Key is a column that uniquely identifies each record (row) in a database table.
-- -- A Foreign Key is a column in one table that refers to a Primary Key in another table.
