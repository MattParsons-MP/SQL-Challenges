/*

Find all posts which were reacted to with a heart. 
For such posts output all columns from facebook_posts table.

poster:      int
friend:      int
reaction:    varchar
date_day:    int
post_id:     int

*/


select DISTINCT posts.post_id,
    posts.poster,
    posts.post_text,
    posts.post_keywords,
    posts.post_date
from facebook_reactions react
JOIN facebook_posts posts ON
    react.post_id = posts.post_id
WHERE reaction = 'heart'
;
