
## Introduction to  MYSQL Join Clauses

MySQL supports the following `JOIN` syntax for the _`table_references`_ part of [`SELECT`](https://dev.mysql.com/doc/refman/8.4/en/select.html "15.2.13 SELECT Statement") statements and multiple-table [`DELETE`](https://dev.mysql.com/doc/refman/8.4/en/delete.html "15.2.2 DELETE Statement") and [`UPDATE`](https://dev.mysql.com/doc/refman/8.4/en/update.html "15.2.17 UPDATE Statement") statements:

	_table_references:_ _escaped_table_reference_ [, _escaped_table_reference_] ...
	_escaped_table_reference_: { _table_reference_ | { OJ _table_reference_ } }
	_table_reference_: { _table_factor_ | _joined_table_ }
	_table_factor_: { _tbl_name_ [PARTITION (_partition_names_)] [[AS] _alias_] [_index_hint_list_] | [LATERAL] _table_subquery_ [AS] _alias_ [(_col_list_)] | ( _table_references_ ) } 
	_joined_table_: { _table_reference_ {[INNER | CROSS] JOIN | STRAIGHT_JOIN} _table_factor_ [_join_specification_] | _table_reference_ {LEFT|RIGHT} [OUTER] JOIN _table_reference_ _join_specification_ | _table_reference_ NATURAL [INNER | {LEFT|RIGHT} [OUTER]] JOIN _table_factor_ } 
	_join_specification_: { ON _search_condition_ | USING (_join_column_list_) }
	_join_column_list_: _column_name_[, _column_name_] ... 
	_index_hint_list_: _index_hint_[ _index_hint_] ... 
	_index_hint_: { USE {INDEX|KEY} [FOR {JOIN|ORDER BY|GROUP BY}] ([_index_list_]) | {IGNORE|FORCE} {INDEX|KEY} [FOR {JOIN|ORDER BY|GROUP BY}] (_index_list_) }
	_index_list_: _index_name_ [, _index_name_] ...

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




