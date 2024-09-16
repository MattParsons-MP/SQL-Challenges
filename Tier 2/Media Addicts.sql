/*
Social Media Addiction can be a crippling disease affecting millions every year.

We need to identify people who may fall into that category.

Write a query to find the people who spent a higher than average amount of time on social media.

Provide just their first names alphabetically so we can reach out to them individually.

Tables:

user_time                       users     

user_id:          	  int       user_id:      int
media_time_minutes:	  int       first_name:   int

*/

SELECT first_name
FROM users
  JOIN user_time ON
  user_time.user_id = users.user_id
WHERE media_time_minutes > 
            (SELECT AVG(media_time_minutes)
            FROM user_time)
ORDER BY first_name
;
