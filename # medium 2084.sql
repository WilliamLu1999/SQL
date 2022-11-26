# medium 2084

With cte AS(
SELECT *, Min(order_type) OVER(PARTITION BY customer_id) AS min_order_type
FROM Orders)

SELECT order_id,order_type FROM cte WHERE (order_type+min_order_type <>1)

