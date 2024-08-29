/*

You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive).

Output their IDs and the total revenue.


product_id:        int
promotion_id:      int
cost_in_dollars:   int
customer_id:       int
date:              datetime
units_sold:        int

*/

select product_id,
    SUM(cost_in_dollars * units_sold) TotalRevenue
from online_orders
GROUP BY product_id
ORDER BY TotalRevenue DESC
LIMIT 5
;
