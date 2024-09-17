/*

Write a query to determine how many direct reports each Manager has.

Note: Managers will have "Manager" in their title.

Report the Manager ID, Manager Title, and the number of direct reports in your output.

Table:

employee_id:    	int
position:        	text
managers_id:    	int

*/

SELECT man.managers_id,
       emp.position,
       COUNT(man.managers_id) AS 'Direct Reports' 
FROM direct_reports AS emp
JOIN direct_reports AS man ON
  emp.employee_id = man.managers_id
WHERE emp.position LIKE '%manager%'
GROUP BY man.managers_id, emp.position
;
