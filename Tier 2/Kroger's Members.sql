/*

Kroger's is a very popular grocery chain in the US. They offer a membership card in exchange for a discount on select items. Customers can still shop at Krogers without the card.

Write a query to find the percentage of customers who shop at Kroger's who also have a Kroger's membership card. Round to 2 decimal places.

Table:

kroger_id:        	int
has_member_card:  	text

*/

SELECT
  ROUND(
  (SELECT COUNT(has_member_card)
  FROM customers
  WHERE has_member_card = 'Y'
  ) /
  (
  SELECT COUNT(kroger_id)
  FROM customers
  ) * 100, 2) AS Percentage
FROM customers
LIMIT 1;
