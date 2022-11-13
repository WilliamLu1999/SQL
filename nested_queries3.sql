Select drinker as Drinker from Likes l1 where beer='Bud' and drinker not in (select drinker from Likes where beer='Summerbrew');

/* Output
+----------+
| Drinker  |
+----------+
| Bill     |
| Jennifer |
+----------+
2 rows in set (0.00 sec)
*/