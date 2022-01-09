-- Creating sales table CREATE TABLE command is a DDL command
CREATE TABLE sales(
    id int PRIMARY KEY AUTO_INCREMENT,
    date_created DATE DEFAULT (CURRENT_DATE),
    date_fulfilled DATE DEFAULT (CURRENT_DATE),
    customer_name VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    volume NUMERIC(10,3) NOT NULL CHECK(volume>0),
    is_reccuring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);