/*

Write a query to determine the popularity of a post on LinkedIn

Popularity is defined by number of actions (likes, comments, shares, etc.) divided by the number impressions the post received * 100.

If the post receives a score higher than 1 it was very popular.

Return all the post IDs and their popularity where the score is 1 or greater.

Order popularity from highest to lowest.

Table:

post_id:      	int
impressions:  	int
actions:        int

*/

WITH pop AS 
  (SELECT post_id, (actions/impressions) * 100 AS popularity
   FROM linkedin_posts)
SELECT *
FROM pop
WHERE popularity >= 1
ORDER BY popularity DESC
;
