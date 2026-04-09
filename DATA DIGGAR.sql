



mysql> source C:\Users\Admin\Documents\customer table.sql
Query OK, 0 rows affected (0.004 sec)

Query OK, 1 row affected (0.412 sec)

Query OK, 1 row affected (0.062 sec)

Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected (0.003 sec)

Query OK, 0 rows affected (0.186 sec)

Query OK, 5 rows affected (0.040 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| blackwido          |
| company            |
| company_db         |
| companydb          |
| datadigger         |
| hawkey             |
| information_schema |
| material           |
| mysql              |
| operators          |
| performance_schema |
| sakila             |
| sales              |
| school             |
| studentsrecord     |
| sys                |
| world              |
+--------------------+
17 rows in set (0.021 sec)

mysql> use datadigger;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
+----------------------+
1 row in set (0.021 sec)

mysql> select * from customers;
+-------------+---------+---------------------+---------+
| customer_id | name    | email               | address |
+-------------+---------+---------------------+---------+
|           1 | alice   | alice@example.com   | surat   |
|           2 | bob     | bob@example.com     | baroda  |
|           3 | charlie | charlie@example.com | rajkot  |
|           4 | prachi  | prachi@example.com  | patan   |
|           5 | ansh    | ansh@example.com    | surat   |
+-------------+---------+---------------------+---------+
5 rows in set (0.010 sec)

mysql> update customers set address = 'ahemdabad' where customer_id = 3;
Query OK, 1 row affected (0.249 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+-------------+---------+---------------------+-----------+
| customer_id | name    | email               | address   |
+-------------+---------+---------------------+-----------+
|           1 | alice   | alice@example.com   | surat     |
|           2 | bob     | bob@example.com     | baroda    |
|           3 | charlie | charlie@example.com | ahemdabad |
|           4 | prachi  | prachi@example.com  | patan     |
|           5 | ansh    | ansh@example.com    | surat     |
+-------------+---------+---------------------+-----------+
5 rows in set (0.009 sec)

mysql> DELETE FROM customers
    -> where customer_id = 2;
Query OK, 1 row affected (0.234 sec)

mysql> select * from customers;
+-------------+---------+---------------------+-----------+
| customer_id | name    | email               | address   |
+-------------+---------+---------------------+-----------+
|           1 | alice   | alice@example.com   | surat     |
|           3 | charlie | charlie@example.com | ahemdabad |
|           4 | prachi  | prachi@example.com  | patan     |
|           5 | ansh    | ansh@example.com    | surat     |
+-------------+---------+---------------------+-----------+
4 rows in set (0.010 sec)

mysql> select * from customers
    -> where name = 'alice';
+-------------+-------+-------------------+---------+
| customer_id | name  | email             | address |
+-------------+-------+-------------------+---------+
|           1 | alice | alice@example.com | surat   |
+-------------+-------+-------------------+---------+
1 row in set (0.008 sec)




mysql> source C:\Users\Admin\Documents\customer table.sql
Query OK, 0 rows affected (0.004 sec)

Query OK, 2 rows affected (0.621 sec)

Query OK, 1 row affected (0.075 sec)

Query OK, 0 rows affected (0.009 sec)

Query OK, 0 rows affected (0.004 sec)

Query OK, 0 rows affected (0.338 sec)

Query OK, 5 rows affected (0.070 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected (0.944 sec)

Query OK, 5 rows affected (0.069 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| blackwido          |
| company            |
| company_db         |
| companydb          |
| datadigger         |
| hawkey             |
| information_schema |
| material           |
| mysql              |
| operators          |
| performance_schema |
| sakila             |
| sales              |
| school             |
| studentsrecord     |
| sys                |
| world              |
+--------------------+
17 rows in set (0.022 sec)

mysql> use datadigger;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
| orders               |
+----------------------+
2 rows in set (0.027 sec)

mysql> select * from orders;
+---------+------------+------------+-------------+
| orderid | customerid | orderdate  | totalamount |
+---------+------------+------------+-------------+
|     101 |          1 | 2024-12-19 |    25000.00 |
|     102 |          2 | 2025-09-05 |     2000.00 |
|     103 |          3 | 2025-11-05 |     3000.00 |
|     104 |          4 | 2024-07-09 |     4500.00 |
|     105 |          5 | 2025-09-15 |     5500.00 |
+---------+------------+------------+-------------+
5 rows in set (0.007 sec)

mysql> select * from orders where customerid = 1;
+---------+------------+------------+-------------+
| orderid | customerid | orderdate  | totalamount |
+---------+------------+------------+-------------+
|     101 |          1 | 2024-12-19 |    25000.00 |
+---------+------------+------------+-------------+
1 row in set (0.015 sec)

mysql> update orders set totalamount = 9000 where orderid = 104;
Query OK, 1 row affected (0.241 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from orders;
+---------+------------+------------+-------------+
| orderid | customerid | orderdate  | totalamount |
+---------+------------+------------+-------------+
|     101 |          1 | 2024-12-19 |    25000.00 |
|     102 |          2 | 2025-09-05 |     2000.00 |
|     103 |          3 | 2025-11-05 |     3000.00 |
|     104 |          4 | 2024-07-09 |     9000.00 |
|     105 |          5 | 2025-09-15 |     5500.00 |
+---------+------------+------------+-------------+
5 rows in set (0.007 sec)

mysql> select * from orders where orderdate >= CURDATE() - INTERVAL 30 DAY;
+---------+------------+------------+-------------+
| orderid | customerid | orderdate  | totalamount |
+---------+------------+------------+-------------+
|     102 |          2 | 2025-09-05 |     2000.00 |
|     103 |          3 | 2025-11-05 |     3000.00 |
|     105 |          5 | 2025-09-15 |     5500.00 |
+---------+------------+------------+-------------+
3 rows in set (0.040 sec)

mysql> select
    ->    MAX(totalamount) AS highest,
    ->    MIN(totalamount) AS lowest,
    ->    AVG(totalamount) AS average
    -> from orders;
+----------+---------+-------------+
| highest  | lowest  | average     |
+----------+---------+-------------+
| 25000.00 | 2000.00 | 8900.000000 |
+----------+---------+-------------+
1 row in set (0.010 sec)

mysql>



mysql> source C:\Users\Admin\Documents\customer table.sql
Query OK, 0 rows affected (0.003 sec)

Query OK, 2 rows affected (0.997 sec)

Query OK, 1 row affected (0.096 sec)

Query OK, 0 rows affected (0.011 sec)

Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected (0.352 sec)

Query OK, 5 rows affected (0.185 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.006 sec)

Query OK, 0 rows affected (0.769 sec)

Query OK, 5 rows affected (0.056 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.004 sec)

Query OK, 0 rows affected (0.225 sec)

Query OK, 5 rows affected (0.047 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| blackwido          |
| company            |
| company_db         |
| companydb          |
| datadigger         |
| hawkey             |
| information_schema |
| material           |
| mysql              |
| operators          |
| performance_schema |
| sakila             |
| sales              |
| school             |
| studentsrecord     |
| sys                |
| world              |
+--------------------+
17 rows in set (0.203 sec)

mysql> use datadigger;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
| orders               |
| product              |
+----------------------+
3 rows in set (0.291 sec)

mysql> select * from product;
+-----------+-------------+----------+-------+
| productid | productname | price    | stock |
+-----------+-------------+----------+-------+
|         1 | laptop      | 65000.00 |     5 |
|         2 | mobile      | 25000.00 |    10 |
|         3 | AC          | 40000.00 |     2 |
|         4 | tv          | 30000.00 |     4 |
|         5 | watch       |  5000.00 |     1 |
+-----------+-------------+----------+-------+
5 rows in set (0.010 sec)

mysql> select * from product order by price DESC;
+-----------+-------------+----------+-------+
| productid | productname | price    | stock |
+-----------+-------------+----------+-------+
|         1 | laptop      | 65000.00 |     5 |
|         3 | AC          | 40000.00 |     2 |
|         4 | tv          | 30000.00 |     4 |
|         2 | mobile      | 25000.00 |    10 |
|         5 | watch       |  5000.00 |     1 |
+-----------+-------------+----------+-------+
5 rows in set (0.007 sec)

mysql> update product set price = 70000 where productname=laptop;
ERROR 1054 (42S22): Unknown column 'laptop' in 'where clause'
mysql> update product set price = 70000 where productname='laptop';
Query OK, 1 row affected (0.262 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from product;
+-----------+-------------+----------+-------+
| productid | productname | price    | stock |
+-----------+-------------+----------+-------+
|         1 | laptop      | 70000.00 |     5 |
|         2 | mobile      | 25000.00 |    10 |
|         3 | AC          | 40000.00 |     2 |
|         4 | tv          | 30000.00 |     4 |
|         5 | watch       |  5000.00 |     1 |
+-----------+-------------+----------+-------+
5 rows in set (0.007 sec)

mysql> DELETE FROM product
    -> where stock = 4;
Query OK, 1 row affected (0.232 sec)

mysql> select * from product;
+-----------+-------------+----------+-------+
| productid | productname | price    | stock |
+-----------+-------------+----------+-------+
|         1 | laptop      | 70000.00 |     5 |
|         2 | mobile      | 25000.00 |    10 |
|         3 | AC          | 40000.00 |     2 |
|         5 | watch       |  5000.00 |     1 |
+-----------+-------------+----------+-------+
4 rows in set (0.010 sec)

mysql> select * from product where price between 500 AND 2000;
Empty set (0.206 sec)

mysql> select  MAX(price) AS most exp , MIN(price) AS cheapest FROM product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'exp , MIN(price) AS cheapest FROM product' at line 1
mysql> select  MAX(price) AS most_expensive, MIN(price) AS cheapest FROM product;
+----------------+----------+
| most_expensive | cheapest |
+----------------+----------+
|       70000.00 |  5000.00 |
+----------------+----------+
1 row in set (0.221 sec)

mysql> source C:\Users\Admin\Documents\customer table.sql
Query OK, 0 rows affected (0.006 sec)

Query OK, 3 rows affected (0.747 sec)

Query OK, 1 row affected (0.076 sec)

Query OK, 0 rows affected (0.009 sec)

Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected (0.305 sec)

Query OK, 5 rows affected (0.067 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected (0.880 sec)

Query OK, 5 rows affected (0.046 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.004 sec)

Query OK, 0 rows affected (0.218 sec)

Query OK, 5 rows affected (0.048 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.004 sec)

Query OK, 0 rows affected (0.545 sec)

Query OK, 5 rows affected (0.054 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| blackwido          |
| company            |
| company_db         |
| companydb          |
| datadigger         |
| hawkey             |
| information_schema |
| material           |
| mysql              |
| operators          |
| performance_schema |
| sakila             |
| sales              |
| school             |
| studentsrecord     |
| sys                |
| world              |
+--------------------+
17 rows in set (0.015 sec)

mysql> use datadigger;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
| orderdetails         |
| orders               |
| product              |
+----------------------+
4 rows in set (0.020 sec)

mysql> select * from orderdetails;
+---------------+---------+-----------+----------+----------+
| orderdetailid | orderid | productid | quantity | subtotal |
+---------------+---------+-----------+----------+----------+
|             1 |     101 |         1 |        3 | 50000.00 |
|             2 |     102 |         2 |        1 |  4000.00 |
|             3 |     103 |         3 |        2 |  2000.00 |
|             4 |     104 |         4 |        3 |  6000.00 |
|             5 |     105 |         5 |        2 |  7000.00 |
+---------------+---------+-----------+----------+----------+
5 rows in set (0.007 sec)

mysql> select * from orderdetails where orderid = 105;
+---------------+---------+-----------+----------+----------+
| orderdetailid | orderid | productid | quantity | subtotal |
+---------------+---------+-----------+----------+----------+
|             5 |     105 |         5 |        2 |  7000.00 |
+---------------+---------+-----------+----------+----------+
1 row in set (0.008 sec)

mysql> select SUM(subtotal) AS total_revenue from orderdetails;
+---------------+
| total_revenue |
+---------------+
|      69000.00 |
+---------------+
1 row in set (0.012 sec)