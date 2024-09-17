/*

Sarah's Bike Shop sells a lot of bikes and wants to know what the average sale price is of her bikes.

She sometimes gives away a bike for free for a charity event and if she does she leaves the price of the bike as blank, but marks it sold.

Write a query to show her the average sale price of bikes for only bikes that were sold, and not donated.

Round answer to 2 decimal places.

Table:

bike_id:    	int
bike_price:	  float
bike_sold:	  text

*/

SELECT ROUND(AVG(bike_price), 2)
FROM inventory
WHERE bike_price != 'NULL' AND
       bike_sold = 'Y'
       
;
