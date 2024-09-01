--- bikes last used

select bike_number AS bike , MAX(end_time) AS last_used
from dc_bikeshare_q1_2012
GROUP BY bike
ORDER BY last_used DESC
;
