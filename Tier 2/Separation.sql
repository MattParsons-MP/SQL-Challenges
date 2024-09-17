/*

Data was input incorrectly into the database. The ID was combined with the First Name.

Write a query to separate the ID and First Name into two separate columns.

Each ID is 5 characters long.

Table:

id:	text

*/

SELECT LEFT(id, 5) AS ID,
       SUBSTRING(id, 6) AS 'First Name'
FROM bad_data 
;
