Consider the database for an organisation. Write the queries for the following:


(i)	Add 5 rows in the employee and dept tables.

mysql> insert into department values(101,"BENJAMIN","NY");
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(102,"KATHERINE","TORONTO");
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(103,"RYAN","MAURITIUS");
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(104,"SAIORIRE","PARIS");
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(105,"RAM","NEW DELHI");
Query OK, 1 row affected (0.04 sec)

mysql> select * from department;
+---------+-----------+-----------+
| dept_no | dept_name | location  |
+---------+-----------+-----------+
|     101 | BENJAMIN  | NY        |
|     102 | KATHERINE | TORONTO   |
|     103 | RYAN      | MAURITIUS |
|     104 | SAIORIRE  | PARIS     |
|     105 | RAM       | NEW DELHI |
+---------+-----------+-----------+
5 rows in set (0.01 sec)


mysql> insert into employee values(1,"RAJU",'1996-04-20'," house15",'2020-01-10',9745612010,101,10000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(2,"RAHUL",'1996-05-19'," house18",'2020-02-09',8245612010,102,20000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(3,"LOKESH",'1995-05-02'," house12",'2020-01-05',8249612010,103,45000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(4,"LALLU",'1994-02-12'," house09",'2020-10-01',8249653010,104,12000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from EMPLOYEE;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 9745612010 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  12000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
4 rows in set (0.01 sec)


(ii)	Display all the records from the above tables.

mysql> select * from EMPLOYEE;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 9745612010 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  12000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
4 rows in set (0.01 sec)

mysql> select * from department;
+---------+-----------+-----------+
| dept_no | dept_name | location  |
+---------+-----------+-----------+
|     101 | BENJAMIN  | NY        |
|     102 | KATHERINE | TORONTO   |
|     103 | RYAN      | MAURITIUS |
|     104 | SAIORIRE  | PARIS     |
|     105 | RAM       | NEW DELHI |
+---------+-----------+-----------+
5 rows in set (0.01 sec)


(iii)	Display the empno and name of all the employees from department no2.

mysql> select  emp_name, emp_no FROM employee WHERE dept_no=102;
+----------+--------+
| emp_name | emp_no |
+----------+--------+
| RAHUL    |      2 |
+----------+--------+
1 row in set (0.00 sec)

(iv)	Display empno,name,designation,dept no and salary in the descending order of salary.

mysql> select emp_name,emp_no,dept_no,salary FROM employee ORDER BY salary DESC;
+----------+--------+---------+--------+
| emp_name | emp_no | dept_no | salary |
+----------+--------+---------+--------+
| LOKESH   |      3 |     103 |  45000 |
| RAHUL    |      2 |     102 |  20000 |
| LALLU    |      4 |     104 |  12000 |
| RAJU     |      1 |     101 |  10000 |
+----------+--------+---------+--------+
4 rows in set (0.00 sec)


(v)	Display the empno and name of all employees whose salary is between 2000 and 25000.


mysql> select * from employee WHERE salary BETWEEN 2000 AND 25000;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 9745612010 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  12000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
3 rows in set (0.01 sec)


(vi)	Display all DOB without duplicate values.

mysql> select DISTINCT DOB FROM employee;
+------------+
| DOB        |
+------------+
| 1996-04-20 |
| 1996-05-19 |
| 1995-05-02 |
| 1994-02-12 |
+------------+
4 rows in set (0.04 sec)



(vii)	Display the dept no and total salary of employees .

mysql> select SUM(salary)  FROM employee;
+-------------+
| SUM(salary) |
+-------------+
|       87000 |
+-------------+
1 row in set (0.00 sec)


(viii)	Change the salary of employee to 25000 whose  empno is 4.


mysql> select * from EMPLOYEE;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 9745612010 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  12000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+


mysql> update employee SET salary= 25000 WHERE emp_no=4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 9745612010 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  25000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
4 rows in set (0.01 sec)


(ix)	Change the mobile no of employee named ‘raju’.

mysql> select * from employee;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 9745612010 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  25000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
4 rows in set (0.01 sec)


mysql> update employee SET mobile_no=REPLACE(mobile_no,'9745612010','8129764123') WHERE mobile_no LIKE '%9745612010%';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      1 | RAJU     | 1996-04-20 |  house15 | 2020-01-10   | 8129764123 |     101 |  10000 |
|      2 | RAHUL    | 1996-05-19 |  house18 | 2020-02-09   | 8245612010 |     102 |  20000 |
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  25000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
4 rows in set (0.01 sec)


(x)	Delete all employees whose salaries are equal to Rs.20000.

mysql> DELETE FROM employee WHERE salary<=20000;
Query OK, 2 rows affected (0.01 sec)

mysql> select * from employee;
+--------+----------+------------+----------+--------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address  | date_of_join | mobile_no  | dept_no | salary |
+--------+----------+------------+----------+--------------+------------+---------+--------+
|      3 | LOKESH   | 1995-05-02 |  house12 | 2020-01-05   | 8249612010 |     103 |  45000 |
|      4 | LALLU    | 1994-02-12 |  house09 | 2020-10-01   | 8249653010 |     104 |  25000 |
+--------+----------+------------+----------+--------------+------------+---------+--------+
2 rows in set (0.04 sec)



(xi)	Select the deptno that has total salary paid for its employees more than 25000.

mysql> select dept_no, emp_name FROM employee GROUP BY salary HAVING salary>25000;
+---------+----------+
| dept_no | emp_name |
+---------+----------+
|     103 | LOKESH   |
+---------+----------+
1 row in set (0.04 sec)



