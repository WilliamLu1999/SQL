# leetcode-Medium-1445
# Find the difference of sold num of apples and oranges by date
# ctess

With CTE AS(
SELECT * FROM Sales ORDER BY sale_date,fruit
), # order the table by date to find difference of sold_num easier;continue a new cte

CTE2 AS(
SELECT *, LEAD(sold_num,1) OVER(PARTITION BY sale_date) AS orange_num FROM CTE)
# this step makes every second row next to the first row. Did not calculate any difference here yet

SELECT sale_date, (orange_num  - sold_num) AS diff
FROM CTE2 WHERE orange_num IS NOT NULL

