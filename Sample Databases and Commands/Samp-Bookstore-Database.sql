-- Create the database (if not already created)
CREATE DATABASE BookstoreDB;

-- Use the newly created database
USE BookstoreDB;

-- Table 1: Authors
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

-- Table 2: Books
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(150) NOT NULL,
    author_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Table 3: Orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Sample data insertion for Authors (adding more authors)
INSERT INTO Authors (author_name) VALUES
('J.K. Rowling'),
('George Orwell'),
('Harper Lee'),
('F. Scott Fitzgerald'),
('J.R.R. Tolkien'),
('Agatha Christie');

INSERT INTO Authors (author_name) VALUES
('Earl Kim');

-- Sample data insertion for Books (adding more books)
INSERT INTO Books (book_title, author_id, price) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 20.99),  -- J.K. Rowling
('1984', 2, 15.50),  -- George Orwell
('To Kill a Mockingbird', 3, 12.80),  -- Harper Lee
('Harry Potter and the Chamber of Secrets', 1, 22.50),  -- J.K. Rowling
('Animal Farm', 2, 9.99),  -- George Orwell
('The Great Gatsby', 4, 10.99),  -- F. Scott Fitzgerald
('The Lord of the Rings: The Fellowship of the Ring', 5, 25.99),  -- J.R.R. Tolkien
('The Hobbit', 5, 15.99),  -- J.R.R. Tolkien
('Murder on the Orient Express', 6, 8.99),  -- Agatha Christie
('The Lord of the Rings: The Two Towers', 5, 25.99);  -- J.R.R. Tolkien

-- Sample data insertion for Orders (adding more orders)
INSERT INTO Orders (book_id, quantity, order_date) VALUES
(1, 2, '2024-09-10'),  -- 2 copies of "Harry Potter and the Sorcerer's Stone"
(3, 1, '2024-09-11'),  -- 1 copy of "To Kill a Mockingbird"
(4, 3, '2024-09-12'),  -- 3 copies of "Harry Potter and the Chamber of Secrets"
(5, 5, '2024-09-13'),  -- 5 copies of "Animal Farm"
(6, 4, '2024-09-14'),  -- 4 copies of "The Great Gatsby"
(7, 2, '2024-09-15'),  -- 2 copies of "The Lord of the Rings: The Fellowship of the Ring"
(8, 6, '2024-09-16'),  -- 6 copies of "The Hobbit"
(9, 3, '2024-09-17'),  -- 3 copies of "Murder on the Orient Express"
(10, 1, '2024-09-18');  -- 1 copy of "The Lord of the Rings: The Two Towers"

-- Displays all the values of the table 
select * from authors;
select * from books;
select * from orders;
 








