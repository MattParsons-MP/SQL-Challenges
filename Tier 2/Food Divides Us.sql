/*

In the United States, fast food is the cornerstone of it's very society. Without it, it would cease to exist.

But which region spends the most money on fast food?

Write a query to determine which region spends the most amount of money on fast food.

Table:

state:              	text
region:              	text
fast_food_millions:  	int


*/

WITH spends AS
  (
  SELECT region, SUM(fast_food_millions) AS total
  FROM food_regions
  GROUP BY region
  )
SELECT region 
FROM spends
ORDER BY total DESC 
LIMIT 1;
