#2066 balance account

WITH cte AS(
SELECT account_id, day, CASE WHEN type='Deposit' THEN amount
ELSE THEN -1*amount
END AS new_amount
FROM Trasactions
)

SELECT account_id, day, SUM(new_amount) OVER(partition BY account_id ORDER BY day ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS balance
FROM cte
ORDER BY account_id,day

# we need ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW because every time the account withdraw or deposit the balance is changing. otherwise, it will be the same number.
