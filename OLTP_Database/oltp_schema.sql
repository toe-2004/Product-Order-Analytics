CREATE DATABASE food_oltp1;
USE food_oltp1;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DOUBLE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    restaurant_id INT,
    order_date DATE,

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DOUBLE,

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO users (user_id, name, city) VALUES
(1, 'Aung Aung', 'Yangon'),
(2, 'Su Su', 'Mandalay'),
(3, 'Min Min', 'Bago'),
(4, 'Kyaw Kyaw', 'Yangon'),
(5, 'Hla Hla', 'Naypyidaw'),
(6, 'Zaw Zaw', 'Mandalay'),
(7, 'Mya Mya', 'Yangon'),
(8, 'Thida', 'Bago'),
(9, 'Ko Ko', 'Yangon'),
(10, 'Cherry', 'Mandalay'),
(11, 'May', 'Yangon'),
(12, 'Tun Tun', 'Naypyidaw'),
(13, 'Shwe', 'Yangon'),
(14, 'Aye Aye', 'Bago'),
(15, 'Nilar', 'Mandalay');

INSERT INTO restaurants (restaurant_id, name, city) VALUES
(1, 'Golden Burger', 'Yangon'),
(2, 'Pizza House', 'Mandalay'),
(3, 'Spicy Kitchen', 'Yangon'),
(4, 'Royal Sushi', 'Naypyidaw'),
(5, 'Hot Pot City', 'Bago'),
(6, 'Chicken World', 'Yangon'),
(7, 'Coffee Corner', 'Mandalay'),
(8, 'BBQ Garden', 'Yangon');

INSERT INTO products (product_id, name, category, price) VALUES
(1, 'Burger', 'Fast Food', 5000),
(2, 'Pizza', 'Fast Food', 12000),
(3, 'Coke', 'Drink', 2000),
(4, 'Fried Chicken', 'Fast Food', 8000),
(5, 'Coffee', 'Drink', 3500),
(6, 'Sushi', 'Japanese', 15000),
(7, 'Hot Pot', 'Chinese', 20000),
(8, 'BBQ Set', 'BBQ', 25000),
(9, 'French Fries', 'Snack', 4000),
(10, 'Milk Tea', 'Drink', 3000);

INSERT INTO orders (order_id, user_id, restaurant_id, order_date) VALUES
(1, 1, 1, '2026-01-05'),
(2, 2, 2, '2026-01-10'),
(3, 3, 3, '2026-01-15'),
(4, 4, 1, '2026-02-02'),
(5, 5, 4, '2026-02-10'),
(6, 6, 2, '2026-02-18'),
(7, 7, 5, '2026-03-03'),
(8, 8, 6, '2026-03-11'),
(9, 9, 1, '2026-03-19'),
(10, 10, 7, '2026-04-05'),
(11, 11, 8, '2026-04-14'),
(12, 12, 3, '2026-04-22'),
(13, 13, 2, '2026-05-02'),
(14, 14, 5, '2026-05-11'),
(15, 15, 4, '2026-05-20');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 2, 10000),
(2, 1, 3, 2, 4000),
(3, 2, 2, 1, 12000),
(4, 2, 3, 2, 4000),
(5, 3, 4, 2, 16000),
(6, 3, 9, 1, 4000),
(7, 4, 1, 1, 5000),
(8, 4, 10, 2, 6000),
(9, 5, 6, 1, 15000),
(10, 5, 3, 2, 4000),
(11, 6, 2, 2, 24000),
(12, 6, 9, 1, 4000),
(13, 7, 7, 1, 20000),
(14, 7, 10, 2, 6000),
(15, 8, 4, 3, 24000),
(16, 8, 3, 2, 4000),
(17, 9, 1, 2, 10000),
(18, 9, 5, 2, 7000),
(19, 10, 5, 2, 7000),
(20, 10, 10, 1, 3000),
(21, 11, 8, 1, 25000),
(22, 11, 3, 3, 6000),
(23, 12, 4, 2, 16000),
(24, 12, 9, 2, 8000),
(25, 13, 2, 1, 12000),
(26, 13, 10, 2, 6000),
(27, 14, 7, 1, 20000),
(28, 14, 5, 2, 7000),
(29, 15, 6, 2, 30000),
(30, 15, 3, 2, 4000);