/*

We define an employee's total earnings to be their monthly salary x months  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 

Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 

Then print these values as 2 space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:

    employee_id:   Integer
    name:          String
    months:        Integer
    salary:        Integer

*/

SELECT MAX(salary * months), 
      COUNT(*) 
FROM employee 
GROUP BY salary * months 
ORDER BY salary * months DESC 
limit 1;
