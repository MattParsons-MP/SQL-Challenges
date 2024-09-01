/*

Write a query that returns the number of unique users per client per month

id:              int
time_id:         datetime
user_id:         varchar
customer_id:     varchar
client_id:       varchar
event_type:      varchar
event_id:        int

*/

select MONTH(time_id) AS Month, 
    COUNT(DISTINCT user_id), 
    client_id
from fact_events
GROUP BY 
    MONTH(time_id),
    client_id
;
