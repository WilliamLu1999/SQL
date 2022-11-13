SELECT bar as Bar FROM Sells WHERE price =(SELECT max(price) from Sells);

/* Output
+-----------+
| Bar       |
+-----------+
| Joe's bar |
+-----------+
*/