CREATE DATABASE IF NOT EXISTS TestShopping_QA;
USE TestShopping_QA;
CREATE TABLE IF NOT EXISTS Shopping_List (
id INT AUTO_INCREMENT PRIMARY KEY,
Product_name VARCHAR(50),
Price DECIMAL(10,2),
Quantity INT
);

INSERT INTO Shopping_List (Product_name, Price, Quantity)
VALUES ('Avocado', 79.99, 3),
('Garbuz', 20.57, 1),
('Potato', 55.9, 1),
('Onion', 11.72, 1),
('Kaki', 100.9, 1),
('Tomato_cherry', 138.6, 2),
('Water_Morshinska_6l', 99.00, 5),
('Shampoo_GlisKur', 214.00, 1),
('Milk_Lactose_Free', 89.00, 3),
('Meat', 299.05, 1
);
SELECT * FROM Shopping_List;

CREATE TABLE IF NOT EXISTS Fridge (
Item_id INT AUTO_INCREMENT PRIMARY KEY,
Product_id INT,
Product_Name VARCHAR(50),
Quantity INT,
Expiration_Date DATE
);
ALTER TABLE Fridge ADD CONSTRAINT my_fridge_product
FOREIGN KEY (Product_id)
REFERENCES Shopping_List (id);
SELECT * FROM Shopping_List;

INSERT INTO fridge (Product_id, Product_name, Quantity, Expiration_date)
VALUES    
(1, 'Avocado', 3, '2026-12-01'),
(2, 'Garbuz', 1, '2026-11-30'),
(6, 'Tomato_cherry', 2, '2026-12-01'),
(7, 'Water_Morshinska_6l', 5, '2028-01-30'),
(5, 'Kaki', 1, '2026-11-30');
INSERT INTO fridge (Product_id, Product_name, Quantity, Expiration_date)
VALUES
(NULL, 'Salmon', 2, '2026-11-25'),
(NULL, 'Blue_Cheese', 1, '2026-12-25'),
(NULL, 'Martini', 1, '2027-12-10'),
(NULL, 'Kefir', 4, '2026-12-01'),
(NULL, 'Apples', 10, '2026-12-31');
SELECT * FROM fridge
LEFT JOIN shopping_list 
ON fridge.product_id = shopping_list.id;


