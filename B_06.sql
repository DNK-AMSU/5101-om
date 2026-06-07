PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT NOT NULL,
    total REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (id, name) VALUES 
(1, 'Алексей'),
(2, 'Мария');

-- У Алексея 3 заказа, самый ранний: 2023-01-15
-- У Марии 1 заказ
INSERT INTO orders (id, customer_id, order_date, total) VALUES 
(1, 1, '2023-05-20', 1500),
(2, 1, '2023-01-15', 800),  -- Это первый заказ Алексея
(3, 1, '2023-10-01', 2000),
(4, 2, '2023-08-10', 1200);