create database orders;

\c orders;

CREATE TABLE customers_replica (id INT PRIMARY KEY, name TEXT, age INT);

CREATE TABLE orders
(
    id          INT PRIMARY KEY,
    name        TEXT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers_replica ("id") ON DELETE CASCADE
);
