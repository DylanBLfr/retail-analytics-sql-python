-- 02_seed.sql
INSERT INTO customers (customer_id, signup_date, country) VALUES
(1,'2024-01-05','FR'),
(2,'2024-02-11','DE'),
(3,'2024-02-20','US'),
(4,'2024-03-02','FR'),
(5,'2024-03-15','UK');

INSERT INTO products (product_id, product_name, category, unit_price) VALUES
(1,'Keyboard','Accessories',29.9),
(2,'Mouse','Accessories',19.9),
(3,'Monitor 24"','Displays',129.0),
(4,'USB-C Cable','Accessories',9.9),
(5,'Laptop 13"','Computers',899.0);

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(101,1,'2024-02-01'),
(102,2,'2024-02-18'),
(103,3,'2024-03-05'),
(104,1,'2024-03-20'),
(105,4,'2024-04-02'),
(106,5,'2024-04-15');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1,101,1,1,29.9),
(2,101,2,1,19.9),
(3,102,3,1,129.0),
(4,102,4,2,9.9),
(5,103,5,1,899.0),
(6,104,1,2,29.9),
(7,105,2,1,19.9),
(8,105,4,3,9.9),
(9,106,3,1,129.0);

-- Extra orders to get more months/volume
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(107,2,'2024-01-22'),
(108,3,'2024-05-10'),
(109,4,'2024-05-22'),
(110,5,'2024-06-03'),
(111,1,'2024-06-18'),
(112,2,'2024-07-05'),
(113,3,'2024-07-21'),
(114,4,'2024-08-02');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(10,107,4,2,9.9),
(11,107,1,1,29.9),
(12,108,3,2,129.0),
(13,108,2,1,19.9),
(14,109,5,1,899.0),
(15,110,1,1,29.9),
(16,110,2,2,19.9),
(17,111,3,1,129.0),
(18,112,4,3,9.9),
(19,113,5,1,899.0),
(20,114,1,2,29.9);
