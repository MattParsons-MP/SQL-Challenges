/*

Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

id:          int
position:    int
trackname:   varchar
artist:      varchar
streams:     int
url:         varchar
date:        datetime
region:      varchar

*/

select artist, COUNT(artist) AS Appearances
from spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY Appearances DESC
;
