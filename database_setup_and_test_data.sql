#1.Создать базу данных онлайн-магазина из двух таблиц: заказчики (Customer) и заказы (Orders).
CREATE DATABASE Berkeley;
USE Berkeley;
-- Создание таблицы Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    street_address VARCHAR(100),
    postal_code VARCHAR(10),
    city VARCHAR(50),
    country VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE
);

-- Создание таблицы Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    item_number INT,
    item_description VARCHAR(100),
    item_photo_url VARCHAR(255),
    order_cost DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
SELECT * FROM customer;
SELECT * FROM orders;

#2. Заполнить таблицу тестовыми данными: 3-5 заказчиков и с десяток ордеров так, чтобы у всех заказчиков было разное количество заказов

-- Вставка тестовых данных в таблицу Customer
INSERT INTO Customer (customer_id, first_name, last_name, street_address, postal_code, city, country, email, registration_date)
VALUES
    (1, 'Johny', 'Beer', '123 Main St', '12345', 'City1', 'Country1', 'johny@example.com', '2023-01-01'),
    (2, 'Jacky', 'Sweet', '456 Elm St', '67890', 'City2', 'Country2', 'jacky@example.com', '2023-02-01'),
    (3, 'Sam', 'Dawson', '789 Oak St', '54321', 'City3', 'Country3', 'sam@example.com', '2023-03-01'),
    (4, 'Lena', 'Michaels', '101 Pine St', '98765', 'City4', 'Country4', 'lena@example.com', '2023-04-01'),
    (5, 'Fox', 'Grey', '222 Cedar St', '43210', 'City5', 'Country5', 'fox@example.com', '2023-05-01');

-- Вставка тестовых данных в таблицу Orders
INSERT INTO Orders (order_id, customer_id, order_date, item_number, item_description, item_photo_url, order_cost)
VALUES
    (1, 1, '2023-01-15', 101, 'Product A', 'photo_url_A', 25.50),
    (2, 1, '2023-01-20', 102, 'Product B', 'photo_url_B', 45.75),
    (3, 2, '2023-02-10', 103, 'Product C', 'photo_url_C', 30.00),
    (4, 3, '2023-03-05', 104, 'Product D', 'photo_url_D', 10.99),
    (5, 3, '2023-03-10', 105, 'Product E', 'photo_url_E', 18.25),
    (6, 4, '2023-04-12', 106, 'Product F', 'photo_url_F', 12.50),
    (7, 4, '2023-04-15', 107, 'Product G', 'photo_url_G', 21.75),
    (8, 4, '2023-04-18', 108, 'Product H', 'photo_url_H', 15.99),
    (9, 5, '2023-05-20', 109, 'Product I', 'photo_url_I', 28.50),
    (10, 5, '2023-05-25', 110, 'Product J', 'photo_url_J', 33.75);
SELECT * FROM customer;
SELECT * FROM orders;
 
#3. Сохранить запросы создания таблиц и ввода тестовых данных, чтобы позже добавить их на ревью в гитхаб.


