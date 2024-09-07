
## Introduction to  MYSQL Join Clauses

MySQL supports the `JOIN` syntax for the _`table_references`_ part of [`SELECT`](https://dev.mysql.com/doc/refman/8.4/en/select.html "15.2.13 SELECT Statement") statements and multiple-table [`DELETE`](https://dev.mysql.com/doc/refman/8.4/en/delete.html "15.2.2 DELETE Statement") and [`UPDATE`](https://dev.mysql.com/doc/refman/8.4/en/update.html "15.2.17 UPDATE Statement") statements:

- A **table reference** is also known as a join expression.
- A table reference (when it refers to a partitioned table) may contain a `PARTITION` clause, including a list of comma-separated partitions, subpartitions, or both. This option follows the name of the table and precedes any alias declaration. The effect of this option is that rows are selected only from the listed partitions or subpartitions.

## Join Clause
- A `JOIN` clause is used to combine rows from two or more tables, based on a related column between them.

## Inner Join Clause

 - `(INNER) JOIN`: Returns records that have matching values in both tables

[<img src="images/inner-join.png" />](inner-join.png)

**Sample Tables**

| Order ID |     |     |
| -------- | --- | --- |
|          |     |     |

## Left Join Clause

 - The `LEFT JOIN` keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).

[<img src="images/left-join.png" />](left-join.png)
## Right Join Clause

- The `RIGHT JOIN` keyword returns all records from the right table (table2), and the matching records (if any) from the left table (table1).

[<img src="images/right-join.png" />](right-join.png)

## Cross Join Clause

- The `CROSS JOIN` keyword returns all records from both tables (table1 and table2).

[<img src="images/full-outer-join.png" />](full-outer-join.png)

## Self Joins

- A self join is a regular join, but the table is joined with itself.

## MySQL Subquery



## Subquery in the WHERE Clause



## Subquery with ALL and ANY keywords



## Correlated Subquery



## Exists and Not Exists



## Subquery in the SELECT and FROM clause




References
- https://dev.mysql.com/doc/refman/8.4/en/join.html
- https://www.w3schools.com/sql/sql_join.asp




