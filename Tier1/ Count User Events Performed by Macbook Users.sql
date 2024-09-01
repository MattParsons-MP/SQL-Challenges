/*

Count the number of user events performed by MacBookPro users.
Output the result along with the event name.
Sort the result based on the event count in the descending order.


user_id:        int
occurred_at:    datetime
event_type:     varchar
event_name:     varchar
location:       varchar
device:         varchar

*/

select event_name, COUNT(event_name) AS MacbookUserCount
from playbook_events
WHERE device = 'macbook pro'
GROUP BY event_name
ORDER BY MacBookUserCount DESC
;
