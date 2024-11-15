# School Enrolment Database

This database can be used to enrol students onto different courses.\
There are three tables in the database:

A table for storing students' details - first name, last name, date of birth and email\
![Student Table Structure](Screenshots/student_structure.png)

A table for storing course details - name, description and how many credits they're worth\
![Course Table Structure](Screenshots/course_structure.png)

A table for storing enrolment details - student ID, course ID, date enrolled and grade\
![Enrolment Table Structure](Screenshots/enrolment_structure.png)

For each table, there is a unique primary key given as an ID which auto increments as new records are inserted.

## Table Relationship

In the enrolment table, the fields `student_id` and `course_id` represent foreign keys from the `student` table and `course` table respectively. This relationship is shown in the EER diagram below.

![EER Diagram](Screenshots/eer.png)

## Sample Data

I have inserted some sample data into each table to demonstrate what the database might look like.

Student Data\
![Sample Student Data](Screenshots/student_data.png)

Course Data\
![Sample Course Data](Screenshots/course_data.png)

Enrolment Data\
![Sample Enrolment Data](Screenshots/enrolment_data.png)

## Updating Grades

When a student is enrolled on a course, they won't have a grade yet (which is why `enrolment.grade` can be null). To add/update a student's grade for a particular course, this expression can be used:\
![Updated Grade](Screenshots/update_grade.png)

## Views
