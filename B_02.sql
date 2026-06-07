PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Категория 1: 6 товаров, средняя цена > 1000 (должна попасть в выборку)
-- Категория 2: 6 товаров, но средняя цена < 1000 (не должна попасть)
-- Категория 3: 3 товара, средняя цена > 1000 (не должна попасть)
INSERT INTO categories (id, name) VALUES 
(1, 'Электроника'),
(2, 'Дешевая электроника'),
(3, 'Книги');

INSERT INTO products (id, name, price, category_id) VALUES 
(1, 'Ноутбук', 50000, 1), (2, 'Мышь', 2000, 1), (3, 'Клавиатура', 3000, 1),
(4, 'Монитор', 15000, 1), (5, 'Наушники', 5000, 1), (6, 'Веб-камера', 4000, 1),
(7, 'Чехол', 500, 2), (8, 'Кабель', 300, 2), (9, 'Стекло', 400, 2),
(10, 'Пленка', 200, 2), (11, 'Стилет', 600, 2), (12, 'Сумка', 800, 2),
(13, 'Роман', 800, 3), (14, 'Детектив', 600, 3), (15, 'Поэзия', 500, 3);