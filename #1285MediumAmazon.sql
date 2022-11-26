#1285MediumAmazon
With cte AS(
Select log_id, log_id-ROW_NUMBER()OVER(ORDER BY log_id)AS diff FROM Logs)

SELECT MiN(log_id) AS start_id, MAX(log_id) AS end_id FROM cter GROUP by diff ORDER BY start_id
