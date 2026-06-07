PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS appointments;

CREATE TABLE appointments (
    id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    datetime TEXT NOT NULL,
    status TEXT
);

-- date('now', '-6 years') гарантированно старше 5 лет
-- date('now', '-1 year') младше 5 лет
INSERT INTO appointments (id, patient_id, doctor_id, datetime, status) VALUES 
(1, 1, 1, date('now', '-6 years'), 'completed'),
(2, 2, 1, date('now', '-3 years'), 'completed'),
(3, 3, 2, date('now', '-10 days'), 'active');