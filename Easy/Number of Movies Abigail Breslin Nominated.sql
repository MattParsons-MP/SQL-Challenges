/*

Count the number of movies that Abigail Breslin was nominated for an oscar.

year:        int
category:    varchar
nominee:     varchar
movie:       varchar
winner:      bool
id:          int

*/

select COUNT(nominee)
from oscar_nominees
WHERE nominee = 'Abigail Breslin'
;
