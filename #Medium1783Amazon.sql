#Medium1783Amazon

# if want to pivot the table, we can use UNION

With cte AS(
SELECT year, 'Wilbleton' AS championship, Wimbledon AS player_id FROM Championships
UNION
SELECT year, 'Fr_Open' AS championship, Fr_Open AS player_id FROM Championships
UNION
SELECT year, 'US_open' AS championship, US_open AS player_id FROM Championships
UNION
SELECT year, 'AU_open' AS championship, AU_open AS player_id FROM Championships),

cte2 AS(
Select player_id,COUNT(Championships) AS grand_slams_count FROM cte GROUP BY player_id
)

SELECT c.player_id, p.player_name
FROM cte2 c
LEFT JOIN Players p ON c.player_id = p.player_id