/*

https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=3

Find the number of employees working in the Admin department that joined in April or later.

worker_id:      int
first_name:     varchar
last_name:      varchar
salary:         int
joining_date:   datetime
department:     varchar

*/


select COUNT(*)
from worker
WHERE department LIKE 'admin'
    AND MONTH(joining_date) >= 4;
