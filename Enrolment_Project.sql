-- Creates the enrolment database
CREATE DATABASE schooldb;
SHOW DATABASES;
-- Selects the enrolment database as the active database
USE schooldb;
SELECT DATABASE();

-- Create student table
CREATE TABLE student(
	student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name TINYTEXT NOT NULL,
    last_name TINYTEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Create course table
CREATE TABLE course(
	course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name TINYTEXT NOT NULL,
    course_description TEXT NOT NULL,
    credits INT NOT NULL
);

-- Create enrolment table
CREATE TABLE enrolment(
	enrolment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrolment_date DATE NOT NULL,
    grade INT,
    
    CONSTRAINT student_id
		FOREIGN KEY (student_id)
        REFERENCES student(student_id),
	
    CONSTRAINT course_id
		FOREIGN KEY (course_id)
        REFERENCES course(course_id)
);

-- Shows list of tables 
SHOW TABLES;
-- Shows lists of all the students, courses and enrolments
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrolment;
-- Shows the structure of each table
DESC student;
DESC course;
DESC enrolment;

-- Update a student's grade for a particular course
UPDATE enrolment
SET grade = 75
WHERE course_id = 4 AND student_id = 2;

DROP PROCEDURE IF EXISTS update_grade;

-- Creates a view that displays a student's enrolled courses and grades
CREATE OR REPLACE VIEW student_courses AS
SELECT 
	student.student_id,
	enrolment.course_id,
    course.course_name,
	enrolment.grade
FROM enrolment
INNER JOIN
student ON enrolment.student_id = student.student_id
INNER JOIN
course ON enrolment.course_id = course.course_id;

-- Displays the student detail view
SELECT
	course_id AS 'Course ID',
    course_name AS 'Course Name',
    grade AS 'Grade'
FROM student_courses
WHERE student_id = 21;

-- Creates a view that displays all of the students enrolled on a particular course
CREATE OR REPLACE VIEW course_register AS
SELECT 
	student.student_id,
    student.first_name,
    student.last_name,
	enrolment.course_id,
	enrolment.grade
FROM enrolment
INNER JOIN
student ON enrolment.student_id = student.student_id
INNER JOIN
course ON enrolment.course_id = course.course_id;

-- Displays the course register
SELECT
	student_id AS 'Student ID',
    first_name,
    last_name
FROM course_register
WHERE course_id = 2;

-- Procedure to enrol a student
DROP PROCEDURE IF EXISTS enrol_student;
DELIMITER $$
CREATE PROCEDURE enrol_student(IN student_id INT, course_id INT)
BEGIN
	INSERT INTO enrolment (student_id, course_id, enrolment_date)
	SELECT student_id, course_id, CURDATE() FROM DUAL
    WHERE NOT EXISTS (
		SELECT 1 FROM student_courses AS s
        WHERE s.student_id = student_id AND s.course_id = course_id
    );
END $$
DELIMITER ;

-- Insert new student record
INSERT INTO student (first_name, last_name, date_of_birth, email) VALUES
('Umar', 'Reed', '2000-09-30', 'umar.reed@hotmail.com');

CALL enrol_student(21, 2);
    