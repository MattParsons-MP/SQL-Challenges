/*

Write a query that will calculate the number of shipments per month. 
The unique key for one shipment is a combination of shipment_id and sub_id. 
Output the year_month in format YYYY-MM and the number of shipments in that month.

shipment_id:    int
sub_id:         int
weight:         int
shipment_date:  datetime

*/


select COUNT(shipment_id), 
    DATE_FORMAT(shipment_date, '%Y-%m') yr_month
from amazon_shipment
GROUP BY yr_month
;
