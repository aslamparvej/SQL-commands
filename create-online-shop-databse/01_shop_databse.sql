-- Delete Database
-- drop DATABASE sql_learning; 

-- Creating shop database
-- CREATE DATABASE shop;

-- Creating product table
-- CREATE TABLE product(
--     product_name VARCHAR(200),
--     product_price NUMERIC(10,2),
--     product_description TEXT,
--     amount_in_stock SMALLINT,
--     product_img_path VARCHAR(500)
-- );

-- InsertING some dummy DATA
-- INSERT INTO product(
--     product_price,
--     product_name,
--     product_description,
--     amount_in_stock,
--     product_img_path
-- )
-- VALUES (
--     12.99,
--     "A BOOK OF CODE",
--     "Hey, This is a coding releted book!",
--     69,
--     "uploads/image/product/A_BOOK_OF_CODE.jpg"
-- );

-- Add containts
-- ALTER TABLE product
-- MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN product_price NUMERIC(10,2) NOT NULL CHECK(product_price>0),
-- MODIFY COLUMN product_description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock SMALLINT CHECK(amount_in_stock >= 0)
-- ;

-- Add id column and make it primary key
ALTER TABLE product
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;