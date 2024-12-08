-- Inserts sample data into the enrolment table
TRUNCATE TABLE enrolment;
INSERT INTO enrolment (student_id, course_id, enrolment_date, grade) VALUES
(1, 1, '2023-01-15', 85),
(1, 3, '2023-02-10', 72),
(1, 6, '2023-02-22', 90),
(1, 8, '2023-03-05', 68),
(2, 2, '2023-01-12', 78),
(2, 4, '2023-02-14', 83),
(2, 7, '2023-02-28', 91),
(2, 9, '2023-03-08', 74),
(3, 1, '2023-01-19', 95),
(3, 5, '2023-02-15', 81),
(3, 8, '2023-02-25', 79),
(3, 10, '2023-03-11', 88),
(4, 3, '2023-01-17', 85),
(4, 4, '2023-02-13', 88),
(4, 7, '2023-02-21', 92),
(4, 9, '2023-03-06', 80),
(5, 2, '2023-01-23', 90),
(5, 5, '2023-02-18', 67),
(5, 6, '2023-02-28', 73),
(5, 10, '2023-03-10', 84),
(6, 1, '2023-01-21', 89),
(6, 4, '2023-02-09', 92),
(6, 7, '2023-02-24', 78),
(6, 8, '2023-03-07', 85),
(7, 2, '2023-01-11', 75),
(7, 3, '2023-02-08', 81),
(7, 6, '2023-02-26', 87),
(7, 9, '2023-03-09', 90),
(8, 1, '2023-01-27', 93),
(8, 5, '2023-02-16', 70),
(8, 8, '2023-03-03', 84),
(8, 10, '2023-03-12', 76),
(9, 2, '2023-01-24', 88),
(9, 3, '2023-02-11', 85),
(9, 4, '2023-02-22', 73),
(9, 7, '2023-03-04', 79),
(10, 1, '2023-01-13', 94),
(10, 6, '2023-02-05', 78),
(10, 8, '2023-02-26', 91),
(10, 9, '2023-03-05', 82),
(11, 2, '2023-01-26', 86),
(11, 4, '2023-02-19', 92),
(11, 5, '2023-02-27', 68),
(11, 10, '2023-03-08', 83),
(12, 3, '2023-01-29', 80),
(12, 6, '2023-02-12', 85),
(12, 7, '2023-02-23', 89),
(12, 9, '2023-03-06', 75),
(13, 1, '2023-01-18', 82),
(13, 4, '2023-02-07', 78),
(13, 7, '2023-02-20', 87),
(13, 8, '2023-03-10', 95),
(14, 2, '2023-01-31', 71),
(14, 5, '2023-02-15', 79),
(14, 6, '2023-02-25', 93),
(14, 10, '2023-03-09', 84),
(15, 3, '2023-01-25', 77),
(15, 4, '2023-02-18', 83),
(15, 8, '2023-03-02', 68),
(15, 9, '2023-03-11', 91),
(16, 1, '2023-01-14', 89),
(16, 5, '2023-02-10', 95),
(16, 6, '2023-02-17', 86),
(16, 10, '2023-03-05', 80),
(17, 2, '2023-01-16', 78),
(17, 3, '2023-02-13', 85),
(17, 7, '2023-02-28', 88),
(17, 8, '2023-03-04', 72),
(18, 4, '2023-01-20', 74),
(18, 6, '2023-02-08', 81),
(18, 9, '2023-02-24', 91),
(18, 10, '2023-03-07', 87),
(19, 1, '2023-01-28', 79),
(19, 2, '2023-02-05', 85),
(19, 5, '2023-02-21', 92),
(19, 8, '2023-03-08', 76),
(20, 3, '2023-01-30', 88),
(20, 4, '2023-02-12', 90),
(20, 7, '2023-02-27', 84),
(20, 9, '2023-03-10', 93);
SELECT * FROM enrolment;

DELETE FROM enrolment WHERE enrolment_id = 80;
