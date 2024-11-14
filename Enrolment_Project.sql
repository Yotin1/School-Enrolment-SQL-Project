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
SELECT * FROM student;
DESC student;

-- Create course table
CREATE TABLE course(
	course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    course_description VARCHAR(500) NOT NULL,
    credits INT NOT NULL
);
SELECT * FROM course;
DESC course;

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
SELECT * FROM enrolment;
DESC enrolment;

SHOW TABLES;



