/*
https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=3

Find the last time each bike was in use. 
Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). 
Order the results by bikes that were most recently used.

duration:          varchar
duration_seconds:  int
start_time:        datetime
start_station:     varchar
start_terminal:    int
end_time:          datetime
end_station:       varchar
end_terminal:      int
bike_number:       varchar
rider_type:        varchar
id:                int

*/


select bike_number AS bike , MAX(end_time) AS last_used
from dc_bikeshare_q1_2012
GROUP BY bike
ORDER BY last_used DESC
;
