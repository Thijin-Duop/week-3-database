
-- ==========================================
-- WEEK 3 DATABASE ASSIGNMENT
-- Topic: Student Database Management
-- Author: Thijin Simon Duop
-- ==========================================

-- Select the sales database
USE sales;

-- QUESTION 1: Create the student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- QUESTION 2: Insert at least 3 student records
INSERT INTO student (id, fullName, age)
VALUES
    (1, 'John Smith', 18),
    (2, 'Mary Johnson', 19),
    (3, 'David James', 21);

-- QUESTION 3: Update the age of student with ID 2 to 20
START TRANSACTION;

UPDATE student
SET age = 20
WHERE id = 2;

COMMIT;

-- Verify the inserted and updated records
SELECT * FROM student;
