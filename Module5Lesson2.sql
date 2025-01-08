CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age)
VALUES 
(1, 'Lauren Smith', 31),
(2, 'Matt Smith', 34),
(3, 'Jane Doe', 21),
(4, 'John Doe', 25),

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES 
(1, 1, '2025-01-05', '07:00 AM', 'Cardio'),
(2, 2, '2025-01-05', '08:00 AM', 'Yoga'),
(3, 3, '2025-01-05', '09:00 AM', 'Strength Training'),
(4, 4, '2025-01-05', '10:30 AM', 'Cycling'),
(5, 2, '2025-01-05', '11:00 AM', 'Cardio');

UPDATE WorkoutSessions
SET session_time = '09:00 AM'
WHERE member_id = 2 AND session_date = '2025-01-05';


SELECT id FROM Members WHERE name = 'Matt Smith';

DELETE FROM WorkoutSessions WHERE member_id = 2;

DELETE FROM Members WHERE id = 2;
