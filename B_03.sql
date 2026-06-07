PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    group_id INTEGER
);

CREATE TABLE enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade REAL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (id, name, group_id) VALUES 
(1, 'Смирнов А.А.', 101),
(2, 'Кузнецова Е.В.', 101),
(3, 'Новичков И.И.', 102); -- У этого студента нет оценок

INSERT INTO enrollments (id, student_id, course_id, grade) VALUES 
(1, 1, 1, 4.5),
(2, 1, 2, 5.0),
(3, 2, 1, 3.0);