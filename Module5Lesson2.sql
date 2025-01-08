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
(1, 'John Doe', 30),
(2, 'Jane Doe', 28),
(3, 'Michael Johnson', 35),
(4, 'Emily Brown', 25),
(5, 'David Davis', 40);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES 
(1, 1, '2024-09-01', '08:00 AM', 'Cardio'),
(2, 2, '2024-09-01', '06:00 AM', 'Yoga'),
(3, 3, '2024-09-02', '07:00 AM', 'Strength Training'),
(4, 4, '2024-09-03', '05:30 PM', 'Cycling'),
(5, 2, '2024-09-04', '06:00 AM', 'Cardio');

UPDATE WorkoutSessions
SET session_time = '06:00 PM'
WHERE member_id = 2 AND session_date = '2024-09-01';


SELECT id FROM Members WHERE name = 'John Smith';

DELETE FROM WorkoutSessions WHERE member_id = 6;

DELETE FROM Members WHERE id = 6;