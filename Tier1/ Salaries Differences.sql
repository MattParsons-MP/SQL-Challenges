/*

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
Output just the absolute difference in salaries.

id:            int
first_name:    varchar
last_name:     varchar
salary:        int
department_id: int

*/

select ABS(
    MAX(CASE
        WHEN emp.department_id = 4 THEN emp.salary
        ELSE 0
        END) -
    MAX(CASE
        WHEN emp.department_id = 1 THEN emp.salary
        ELSE 0
        END)
    ) AS Salary_gap
from db_employee emp
JOIN db_dept dept ON
    emp.department_id = dept.id
;
