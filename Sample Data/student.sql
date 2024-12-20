-- Inserts sample data into the student table
TRUNCATE TABLE student;
INSERT INTO student (first_name, last_name, date_of_birth, email) VALUES
('John', 'Doe', '2003-01-15', 'john.doe@yahoo.com'),
('Jane', 'Smith', '2002-05-23', 'jane.smith@gmail.com'),
('Alice', 'Johnson', '2001-07-30', 'alice.johnson@hotmail.com'),
('Bob', 'Brown', '2000-12-01', 'bob.brown@yahoo.com'),
('Charlie', 'Davis', '2004-03-10', 'charlie.davis@gmail.com'),
('David', 'Martinez', '2002-09-21', 'david.martinez@hotmail.com'),
('Eva', 'Wilson', '2001-04-17', 'eva.wilson@yahoo.com'),
('Frank', 'Moore', '2003-08-12', 'frank.moore@gmail.com'),
('Grace', 'Taylor', '2000-11-25', 'grace.taylor@hotmail.com'),
('Hannah', 'Anderson', '2004-01-04', 'hannah.anderson@yahoo.com'),
('Ian', 'Thomas', '2002-06-29', 'ian.thomas@gmail.com'),
('Jack', 'Jackson', '2001-10-16', 'jack.jackson@hotmail.com'),
('Kathy', 'White', '2003-02-05', 'kathy.white@yahoo.com'),
('Leo', 'Harris', '2002-11-14', 'leo.harris@gmail.com'),
('Maya', 'Martin', '2000-05-02', 'maya.martin@hotmail.com'),
('Nina', 'Garcia', '2004-09-09', 'nina.garcia@yahoo.com'),
('Oliver', 'Lee', '2001-03-28', 'oliver.lee@gmail.com'),
('Paul', 'Perez', '2000-10-11', 'paul.perez@hotmail.com'),
('Quinn', 'Roberts', '2003-06-13', 'quinn.roberts@yahoo.com'),
('Rachel', 'Clark', '2002-04-19', 'rachel.clark@gmail.com');
SELECT * FROM student;

-- Deletes record from student table
DELETE FROM student WHERE student_id = 20;