Select manufacturer as Manufacturer, AVG(price) as Average FROM Beers2Bars GROUP BY Manufacturer;

/*
+----------------+---------+
| Manufacturer   | Average |
+----------------+---------+
| Anheuser-Busch |       3 |
| Heineken       |       2 |
| Pete's         |     3.5 |
+----------------+---------+
3 rows in set (0.00 sec)
*/