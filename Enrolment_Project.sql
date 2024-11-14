-- Creates the enrolment database
CREATE DATABASE schooldb;
SHOW DATABASES;
-- Selects the enrolment database as the active database
USE schooldb;
SELECT DATABASE();

-- Create student table
CREATE TABLE student(
	student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Create course table
CREATE TABLE course(
	course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    course_description VARCHAR(500) NOT NULL,
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

-- Stored procedure to update a student's grade for a particular course
DELIMITER $$
CREATE PROCEDURE update_grade(IN input_course_id INT, input_student_id INT, input_grade INT)
BEGIN
	UPDATE enrolment
    SET grade = input_grade
    WHERE course_id = input_course_id AND student_id = input_student_id;
END $$
DELIMITER ;

CALL update_grade(5, 2, 85);

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
WHERE student_id = 2;

DELIMITER $$
CREATE PROCEDURE enrol_student(IN input_student_id INT, input_course_id INT)
BEGIN
	INSERT INTO enrolment (student_id, course_id, enrolment_date)
    VALUES (input_student_id, input_course_id, CURDATE());
END $$
DELIMITER ;
    