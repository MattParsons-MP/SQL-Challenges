/* Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. 
  
Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

tweet_id:  	  integer
user_id:  	  integer
msg:      	  string
tweet_date:	  timestamp

*/

WITH TotalTweets AS (
  SELECT 
    user_id, 
    COUNT(tweet_id) AS TweetsIn2022 
  FROM tweets
  WHERE tweet_date BETWEEN '2022-01-01'
    AND '2022-12-31'
  GROUP BY user_id
  )
  
SELECT 
  TweetsIn2022 AS tweet_bucket,
  COUNT(user_id) AS num_users
FROM TotalTweets
GROUP BY tweet_bucket
;
