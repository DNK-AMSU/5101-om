PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS loans;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS readers;

CREATE TABLE readers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author_id INTEGER
);

CREATE TABLE loans (
    id INTEGER PRIMARY KEY,
    reader_id INTEGER,
    book_id INTEGER,
    loan_date TEXT NOT NULL,
    status TEXT,
    FOREIGN KEY (reader_id) REFERENCES readers(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Данные
INSERT INTO readers (id, name, email) VALUES 
(1, 'Иванов И.И.', 'ivanov@mail.ru'),
(2, 'Петрова А.С.', 'petrova@mail.ru');

INSERT INTO books (id, title, author_id) VALUES 
(1, 'Война и мир', 1),
(2, 'Преступление и punishment', 2),
(3, '1984', 3);

-- Иванов взял книгу и еще не вернул (active)
-- Петрова взяла книгу и уже вернула (returned)
INSERT INTO loans (id, reader_id, book_id, loan_date, status) VALUES 
(1, 1, 1, '2025-10-01', 'active'),
(2, 2, 2, '2025-09-15', 'returned');