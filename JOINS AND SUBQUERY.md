
## Introduction to  MYSQL Join Clauses

MySQL supports the following `JOIN` syntax for the _`table_references`_ part of [`SELECT`](https://dev.mysql.com/doc/refman/8.4/en/select.html "15.2.13 SELECT Statement") statements and multiple-table [`DELETE`](https://dev.mysql.com/doc/refman/8.4/en/delete.html "15.2.2 DELETE Statement") and [`UPDATE`](https://dev.mysql.com/doc/refman/8.4/en/update.html "15.2.17 UPDATE Statement") statements:

- A **table reference** is also known as a join expression.
- A table reference (when it refers to a partitioned table) may contain a `PARTITION` clause, including a list of comma-separated partitions, subpartitions, or both. This option follows the name of the table and precedes any alias declaration. The effect of this option is that rows are selected only from the listed partitions or subpartitions.
## Inner Join Clause

	- A `JOIN` clause is used to combine rows from two or more tables, based on a related column between them.
## Left Join Clause


## Right Join Clause



## Cross Join Clause



## Self Joins


## MySQL Subquery



## Subquery in the WHERE Clause



## Subquery with ALL and ANY keywords



## Correlated Subquery



## Exists and Not Exists



## Subquery in the SELECT and FROM clause




References
- https://dev.mysql.com/doc/refman/8.4/en/join.html
- https://www.w3schools.com/sql/sql_join.asp
- 




