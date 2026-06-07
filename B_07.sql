PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY,
    post_id INTEGER,
    content TEXT,
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

INSERT INTO posts (id, title, user_id) VALUES 
(1, 'Как выучить SQL за неделю'),
(2, 'Мой кот и программирование');

-- Пост 1 получает 12 комментариев (должен попасть в выборку)
INSERT INTO comments (id, post_id, content) VALUES 
(1, 1, 'Отличная статья'), (2, 1, 'Спасибо!'), (3, 1, 'Полезно'),
(4, 1, 'Согласен'), (5, 1, 'Круто'), (6, 1, 'Лайк'),
(7, 1, 'Жду продолжения'), (8, 1, 'Супер'), (9, 1, 'Топ'),
(10, 1, 'Респект'), (11, 1, 'Класс'), (12, 1, 'Огонь');

-- Пост 2 получает только 3 комментария (не должен попасть)
INSERT INTO comments (id, post_id, content) VALUES 
(13, 2, 'Милый кот'), (14, 2, 'Хаха'), (15, 2, 'Классика');