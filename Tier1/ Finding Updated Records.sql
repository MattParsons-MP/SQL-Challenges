/*

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
Find the current salary of each employee assuming that salaries increase each year. 
Output their id, first name, last name, department ID, and current salary. 
Order your list by employee ID in ascending order.

id:              int
first_name:      varchar
last_name:       varchar
salary:          int
department_id:   int

*/


select DISTINCT id, 
    first_name, 
    last_name, 
    department_id, 
    MAX(salary) 
from ms_employee_salary
GROUP BY id, 
    first_name, 
    last_name, 
    department_id
ORDER BY id ASC
;
