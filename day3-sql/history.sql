/* 2026-08-20 19:38:22 [249 ms] */ 
CREATE TABLE departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);
/* 2026-08-20 19:41:55 [36 ms] */ 
CREATE TABLE courses(
     course_id INT PRIMARY KEY,
     course_name VARCHAR(100) NOT NULL,
     credit INT NOT NULL,
     department_id INT,
     FOREIGN KEY (department_id) REFERENCES departments(department_id)

);
/* 2026-08-20 19:42:49 [19 ms] */ 
CREATE TABLE students(  
    student_id int  PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    section VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES departments(department_id)

);
/* 2026-08-20 19:53:32 [84 ms] */ 
INSERT INTO departments(department_id,department_name)VALUES
(1, 'Computer Science and Engineering'),
(2, 'Mechanical Engineering'),
(3, 'Electrical and Electronics Engineering'),
(4, 'Civil Engineering'),
(5, 'Data Science and Artificial Intelligence'),
(6, 'Information Technology'),
(7, 'Mathematics and Statistics'),
(8, 'Physics'),
(9, 'Chemistry'),
(10, 'Business Administration');
/* 2026-08-20 19:56:31 [22 ms] */ 
INSERT INTO courses(course_id,course_name,credit,department_id)VALUES
(101, 'Introduction to Computer Programming', 4, 1),
(102, 'Thermodynamics', 3, 2),
(103, 'Circuit Analysis and Design', 4, 3),
(104, 'Structural Mechanics', 3, 4),
(105, 'Machine Learning Foundations', 4, 5),
(106, 'Database Management Systems', 3, 6),
(107, 'Linear Algebra and Calculus', 4, 7),
(108, 'Classical and Quantum Physics', 3, 8),
(109, 'Organic Chemistry Lab', 2, 9),
(110, 'Principles of Management', 3, 10);
/* 2026-08-20 20:00:38 [15 ms] */ 
INSERT INTO students(student_id,name,section,department_id)VALUES
(1001, 'Preksha shetty', 'Section A', 1),
(1002, 'Manavi shetty', 'Section A', 1),
(1003, 'Manvitha puthran', 'Section B', 2),
(1004, 'Madhura C H', 'Section A', 2),
(1005, 'Ankitha', 'Section A', 3),
(1006, 'inchara', 'Section B', 3),
(1007, 'Meghana', 'Section A', 4),
(1008, 'Varsha', 'Section C', 4),
(1009, 'Sinchana', 'Section A', 5),
(1010, 'Kripa', 'Section B', 5);
/* 2026-08-20 20:01:52 [4 ms] */ 
SELECT * FROM departments LIMIT 100;
/* 2026-08-20 20:02:13 [4 ms] */ 
SELECT * FROM courses LIMIT 100;
/* 2026-08-20 20:02:32 [4 ms] */ 
SELECT * FROM students LIMIT 100;
/* 2026-08-20 20:04:49 [4 ms] */ 
SELECT d.department_id,d.department_name,c.course_name FROM departments d
INNER JOIN courses c ON (d.department_id=c.department_id) LIMIT 100;
/* 2026-08-20 20:06:28 [3 ms] */ 
SELECT name FROM students WHERE department_id=2 LIMIT 100;
/* 2026-08-20 20:07:53 [6 ms] */ 
SELECT * FROM students ORDER BY name ASC LIMIT 100;
/* 2026-08-20 20:09:08 [14 ms] */ 
SELECT COUNT(student_id) AS Total_students FROM students LIMIT 100;
/* 2026-08-20 21:11:44 [9 ms] */ 
SELECT MAX(credit) AS Highest_credits FROM courses LIMIT 100;
/* 2026-08-20 21:12:44 [5 ms] */ 
SELECt MIN(credit) AS lowest_credit FROM courses LIMIT 100;
/* 2026-08-20 21:12:58 [4 ms] */ 
SELECT MIN(credit) AS lowest_credit FROM courses LIMIT 100;
/* 2026-08-20 21:13:29 [19 ms] */ 
SELECT AVG(credit) as avg_credit FROM courses LIMIT 100;
/* 2026-08-20 21:14:14 [17 ms] */ 
SELECT MAX(credit) AS Highest_credits FROM courses GROUP BY course_name LIMIT 100;
/* 2026-08-20 21:14:29 [5 ms] */ 
SELECT MAX(credit) AS Highest_credits FROM courses LIMIT 100;
/* 2026-08-20 21:16:12 [9 ms] */ 
SELECT COUNT(department_id) AS student_count from departments GROUP BY department_id LIMIT 100;
/* 2026-08-20 21:17:02 [7 ms] */ 
SELECT department_id,COUNT(department_id) AS student_count from departments GROUP BY department_id LIMIT 100;
/* 2026-08-20 21:21:05 [8 ms] */ 
SELECT d.department_name,COUNT(s.student_id) AS total FROM departments d
INNER JOIN students s ON d.department_id=s.department_id GROUP BY d.department_name LIMIT 100;
/* 2026-08-20 21:24:30 [8 ms] */ 
SELECT department_id,max(credit) FROM courses
GROUP BY department_id LIMIT 100;
