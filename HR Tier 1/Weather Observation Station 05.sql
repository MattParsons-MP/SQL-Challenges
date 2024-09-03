/*

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 

If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The STATION table is described as follows:

    id:          number
    city:        varchar2(21)
    state:       varchar2(2)
    Lat_n:       number
    long_w:      number

*/

SELECT CITY,LENGTH(CITY) 
  FROM STATION 
  WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION) OR 
        LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION) 
  ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 2;
