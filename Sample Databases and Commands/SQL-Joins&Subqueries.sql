-- INNER JOIN
-- Retrieves records with matching values in both tables
SELECT Books.book_title, Authors.author_name
FROM Books
INNER JOIN Authors ON Books.author_id = Authors.author_id;
-- This query fetches the book titles and their respective authors, only where the book has a corresponding author in the Authors table



-- LEFT JOIN
-- Retrieves all records from the left table and the matched records from the right table. If there's no match, NULL is returned from the right table.
SELECT Books.book_title, Orders.quantity
FROM Books
LEFT JOIN Orders ON Books.book_id = Orders.book_id;
-- This query returns all books and, if available, the quantity ordered. If a book hasn’t been ordered, the quantity will be NULL.


-- RIGHT JOIN
-- Retrieves all records from the right table and the matched records from the left table. If there's no match, NULL is returned from the left table
SELECT Books.book_title, Orders.quantity
FROM Books
RIGHT JOIN Orders ON Books.book_id = Orders.book_id;
-- This query returns all orders and, if available, the book title. If no book corresponds to the order, NULL is returned for the book title


-- CROSS JOIN
-- Returns the Cartesian product of two tables
SELECT Books.book_title, Authors.author_name
FROM Books
CROSS JOIN Authors;
-- This query returns every possible combination of books and authors. If there are 10 books and 6 authors, it returns 60 rows.alter


-- SELF JOIN
-- Joins a table with itself.
SELECT A.author_name AS Author_1, B.author_name AS Author_2
FROM Authors A
INNER JOIN Authors B ON A.author_id <> B.author_id;
-- This query returns pairs of authors who are different from each other. It shows how to compare rows within the same table by using table aliases (A and B).


-- SUBQUERY WITH ALL
-- Compares a value to all the values in a subquery
SELECT book_title
FROM Books
WHERE price > ALL (SELECT price FROM Books WHERE author_id = 1);
-- This query returns books where the price is greater than all the books authored by author_id = 1 (J.K. Rowling, in this case)


-- SUBQUERY WITH ANY
-- Compares a value to any one value in a subquery
SELECT book_title
FROM Books
WHERE price < ANY (SELECT price FROM Books WHERE author_id = 2);
-- This query returns books where the price is less than any of the books authored by author_id = 2 (George Orwell, in this case).


-- SUBQUERY IN THE WHERE CLAUSE
-- Uses a subquery within the WHERE clause to filter results
SELECT book_title
FROM Books
WHERE author_id = (SELECT author_id FROM Authors WHERE author_name = 'Harper Lee');
-- This query returns books written by Harper Lee by first finding her author_id using a subquery.


-- CORRELATED SUBQUERY
-- A subquery that references columns from the outer query
SELECT book_title, price
FROM Books B1
WHERE price > (SELECT AVG(price) FROM Books B2 WHERE B2.author_id = B1.author_id);
-- This query returns books where the price is greater than the average price of books by the same author, using a correlated subquery that references the outer query.


-- EXISTS CLAUSE
-- Checks if the subquery returns any rows.
SELECT author_name
FROM Authors A
WHERE EXISTS (SELECT 1 FROM Books B WHERE B.author_id = A.author_id);
-- This query returns authors who have written at least one book by checking if any rows exist for that author in the Books table


-- NOT EXISTS CLAUSE
-- Checks if the subquery does not return any rows
SELECT author_name
FROM Authors A
WHERE NOT EXISTS (SELECT 1 FROM Books B WHERE B.author_id = A.author_id);
-- This query returns authors who have not written any books, by checking if no rows exist in the Books table for that author


-- SUBQUERY IN THE SELECT CLAUSE
-- A subquery used within the SELECT statement to return a derived value
SELECT book_title, (SELECT author_name FROM Authors WHERE author_id = Books.author_id) AS author_name
FROM Books;


-- SUBQUERY IN THE FROM CLAUSE
-- Uses a subquery to create a temporary table for the FROM clause
SELECT author_name, AVG(price) AS avg_price
FROM (SELECT author_id, price FROM Books) AS BookPrices
JOIN Authors ON Authors.author_id = BookPrices.author_id
GROUP BY author_name;
-- This query calculates the average price of books for each author by using a subquery in the FROM clause to derive a temporary table of book prices


use bookstoredb;

select * from authors;
select * from books;
select * from orders;


-- For example on Difference between INNER and CROSS Join 
SELECT Books.book_title, Authors.author_name
FROM Books
INNER JOIN Authors ON Books.author_id = Authors.author_id;

-- Scenario Outcome:
-- Books without an Author: If a book does not have an author_id that matches any author_id in the Authors table, it will not appear in the result.
-- Authors without Books: Authors who haven't written any books will also be excluded from the result.



SELECT Books.book_title, Authors.author_name
FROM Books
CROSS JOIN Authors;

-- Scenario Outcome:
-- All Combinations: Every book will be paired with every author, regardless of whether the author actually wrote the book.
-- Result Size: If there are 10 books and 5 authors, the result will have 10 × 5 = 50 rows.


