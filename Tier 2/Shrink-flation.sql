/*

Write a query to identify products that have undergone shrink-flation over the last year. Shrink-flation is defined as a reduction in product size while maintaining or increasing the price.

Include a flag for Shrinkflation. This should be a boolean value (True or False) indicating whether the product has undergone shrink-flation

The output should have the columns Product_Name, Size_Change_Percentage, Price_Change_Percentage, and Shrinkflation_Flag.

Round percentages to the nearest whole number and order the output on the product names alphabetically.

Table:

product_id:      	int
product_name:    	text
category:        	text
original_size:  	float
new_size:        	float
original_price:  	float
new_price:      	float
date_changed:    	date

*/

SELECT product_name,
       ROUND(100 * ((new_size - original_size) / original_size)) AS size_change_percentage,
       ROUND(100* ((new_price - original_price) / original_price)) AS price_change_percentage,
       IF(new_size < original_size AND new_price >= original_price, 'True', 'False') AS shrinkflation_flag
FROM products
WHERE new_size < original_size AND
      new_price >= original_price
ORDER BY product_name
;
