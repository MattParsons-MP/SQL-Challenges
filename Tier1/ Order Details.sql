/*

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

id:              int
first_name:      varchar
last_name:       varchar
city:            varchar
address:         varchar
phone_number:    varchar

*/

select order_date, order_details, total_order_cost, cust.first_name 
from customers cust
JOIN orders ON
    cust.id = orders.cust_id
WHERE cust.first_name = 'Jill'
    OR cust.first_name = 'Eva'
ORDER BY cust.id ASC
;
