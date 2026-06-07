PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS task_tags;
DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    project_id INTEGER
);

CREATE TABLE task_tags (
    task_id INTEGER,
    tag_id INTEGER,
    PRIMARY KEY (task_id, tag_id),
    FOREIGN KEY (task_id) REFERENCES tasks(id)
);

INSERT INTO tasks (id, title, project_id) VALUES 
(1, 'Разработать API', 1),
(2, 'Написать документацию', 1),
(3, 'Провести рефакторинг', 2);

-- Задача 1 имеет теги
INSERT INTO task_tags (task_id, tag_id) VALUES (1, 10), (1, 11);
-- Задача 2 НЕ имеет тегов (должна попасть в выборку через IS NULL)
-- Задача 3 имеет тег
INSERT INTO task_tags (task_id, tag_id) VALUES (3, 12);