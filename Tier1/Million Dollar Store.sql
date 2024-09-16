/* 

Write a query that returns all of the stores whose average yearly revenue is greater than one million dollars.

Output the store ID and average revenue. Round the average to 2 decimal places.

Order by store ID.

Table:

store_id:  	int
year:      	int
revenue:  	int

*/

SELECT store_id, ROUND(AVG(revenue), 2) AS AVG_Revenue 
FROM stores
GROUP BY store_id
HAVING AVG_Revenue > 1000000
LIMIT 10;

