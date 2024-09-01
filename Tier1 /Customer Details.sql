/*

Find the details of each customer regardless of whether the customer made an order. 
Output the customer's first name, last name, and the city along with the order details.
Sort records based on the customer's first name and the order details in ascending order.

id:            int
first_name:    varchar
last_name:     varchar
city:          varchar
address:       varchar
phone_number:  varchar


id:                int
cust_id:           int
order_date:        datetime
order_details:     varchar
total_order_cost:  int

*/

SELECT first_name, last_name, city, order_details
FROM customers
JOIN orders ON
            customers.id = orders.cust_id
ORDER BY first_name, order_details
;
