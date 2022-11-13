SELECT manf as Manufacturer FROM (SELECT manf,COUNT(distinct name) c FROM Beers GROUP BY manf)x where x.c>=3;

/* Output
+----------------+
| Manufacturer   |
+----------------+
| Anheuser-Busch |
+----------------+
1 row in set (0.00 sec)
*/