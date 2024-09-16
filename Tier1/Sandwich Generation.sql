*/

Yan is a sandwich enthusiast and is determined to try every combination of sandwich possible. He wants to start with every combination of bread and meats and then move on from there, but he wants to do it in a systematic way.

Below we have 2 tables, bread and meats

Output every possible combination of bread and meats to help Yan in his endeavors.

Order by the bread and then meat alphabetically. This is what Yan prefers.

Tables:

Bread                        Meat

bread_id:    	int            meat_id:      int
bread_name:	  text           meat_name:    text


*/
  
SELECT bread_name, meat_name 
FROM bread_table, meat_table
GROUP BY bread_name, meat_name
ORDER BY bread_name, meat_name
;
