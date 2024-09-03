/*

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.

Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

    id:          number
    city:        varchar2(21)
    state:       varchar2(2)
    Lat_n:       number
    long_w:      number

*/

SELECT DISTINCT CITY 
  FROM STATION 
  WHERE LEFT(CITY,1) IN ('A', 'E', 'I', 'O', 'U') AND
        RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');

----------------------------------------------------------------------------------------------
