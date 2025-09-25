-- =============================
-- Task 2: Database & Tables
-- =============================

CREATE DATABASE library;
USE library;

-- Category Table
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Author Table
CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Book Table
CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    published_year INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- Book_Author Table (Many-to-Many)
CREATE TABLE Book_Author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Member Table
CREATE TABLE Member (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE NOT NULL
);

-- Loan Table
CREATE TABLE Loan (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

-- =============================
-- Task 2: Insert Sample Data
-- =============================

INSERT INTO Category (name) VALUES 
('Programming'),
('Databases'),
('Networking');

INSERT INTO Author (name) VALUES 
('James Gosling'),
('C.J. Date'),
('Andrew Tanenbaum');

INSERT INTO Book (title, published_year, category_id) VALUES
('Java Programming', 1995, 1),
('Database Systems', 2000, 2),
('Computer Networks', 2011, 3);

INSERT INTO Book_Author (book_id, author_id) VALUES
(1, 1),  -- Java Programming → James Gosling
(2, 2),  -- Database Systems → C.J. Date
(3, 3);  -- Computer Networks → Tanenbaum

INSERT INTO Member (name, email, join_date) VALUES
('Pavan', 'pavan@example.com', '2025-01-10'),
('Kalyan', NULL, '2025-02-15'),   -- email missing (NULL)
('Ravi', 'ravi@example.com', '2025-03-20');

INSERT INTO Loan (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2025-09-01', NULL),   -- Not yet returned
(2, 2, '2025-09-05', '2025-09-12'),
(3, 3, '2025-09-10', NULL);

-- =============================
-- Task 2: Update & Delete
-- =============================

-- Update book published_year
UPDATE Book
SET published_year = 1996
WHERE book_id = 1;

-- Update missing email
UPDATE Member
SET email = 'not_provided@example.com'
WHERE email IS NULL;

-- Delete one loan
DELETE FROM Loan WHERE loan_id = 2;

-- Delete one book-author relation
DELETE FROM Book_Author WHERE book_id = 3;

-- =============================
-- Task 3: SELECT Queries (Hints)
-- =============================

-- 1. SELECT * (all columns)
SELECT * FROM Book;
SELECT * FROM Member;

-- 2. SELECT specific columns
SELECT title, published_year FROM Book;
SELECT name, email FROM Member;

-- 3. WHERE condition
SELECT * FROM Book WHERE published_year > 2000;
SELECT * FROM Member WHERE join_date > '2025-02-01';

-- 4. AND / OR
SELECT * 
FROM Book 
WHERE category_id = 2 AND published_year < 2010;

-- 5. LIKE (pattern search)
SELECT * FROM Book WHERE title LIKE '%Java%';
SELECT * FROM Member WHERE name LIKE 'P%';

-- 6. BETWEEN (range filter)
SELECT * FROM Book WHERE published_year BETWEEN 1990 AND 2005;
SELECT * FROM Member 
WHERE join_date BETWEEN '2025-01-01' AND '2025-03-31';

-- 7. ORDER BY (sorting)
SELECT * FROM Book ORDER BY published_year DESC;
SELECT * FROM Member ORDER BY join_date ASC;

-- 8. LIMIT (restrict output rows)
SELECT * FROM Book LIMIT 2;
SELECT * FROM Member LIMIT 1;
