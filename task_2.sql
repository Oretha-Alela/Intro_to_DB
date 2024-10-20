-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the database
USE alx_book_store;

-- Create authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(215)
);

-- Create books table
CREATE TABLE IF NOT EXISTS BOOKS (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(130),
    author_id INTEGER,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)

);

-- Create customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Create orders table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create order_details table
CREATE TABLE IF NOT EXISTS (
    order_detail_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
