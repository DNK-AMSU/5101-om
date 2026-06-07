PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS sessions;
DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL
);

CREATE TABLE sessions (
    id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    start_time TEXT NOT NULL,
    price REAL,
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);

INSERT INTO movies (id, title) VALUES 
(1, 'Матрица: Воскрешение'),
(2, 'Начало'),
(3, 'Интерстеллар');

INSERT INTO sessions (id, movie_id, start_time, price) VALUES 
(1, 1, '2025-11-01 18:00', 350),
(2, 1, '2025-11-01 21:00', 400),
(3, 2, '2025-11-02 19:00', 300);