/*

If a customer is 55 or above they qualify for the senior citizen discount. Check which customers qualify.

Assume the current date 1/1/2023.

Return all of the Customer IDs who qualify for the senior citizen discount in ascending order.

Table:

customer_id:  	text
birth_date:    	date

*/

SELECT customer_id
FROM customers
  WHERE birth_date < '1968-1-1'
ORDER BY customer_id ASC
LIMIT 10;
