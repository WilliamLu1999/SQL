SELECT dept_no FROM (SELECT dept_no,COUNT(emp_no) c FROM dept_manager GROUP BY dept_no)x  WHERE x.c>=3;

/* Output
+---------+
| dept_no |
+---------+
| d004    |
| d006    |
| d009    |
+---------+
3 rows in set (0.14 sec)
*/