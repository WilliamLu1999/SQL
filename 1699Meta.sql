
# question 1699 Meta&FB
# group calls and return total duration

WITH cte AS(
Select CASE WHEN from_id<to_id then from_id ELSE to_id END AS person1,
CASE WHEN from_id<to_id then to_id ELSE from_id AS person2, 
duration
FROM Calls
)


SELECT person1, person2, COUNT(*) AS num_of_calls, SUM(duration) AS total_time
FROM cte GROUP BY person1, person2