create database customers;
\c customers;
CREATE TABLE customers (id SERIAL PRIMARY KEY, name TEXT, age INT);
INSERT INTO customers (name, age) VALUES ('fred', 34);
INSERT INTO customers (name, age) VALUES ('sue', 25);
INSERT INTO customers (name, age) VALUES ('bill', 51);
