/*

Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) from STATION. 

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
  WHERE RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');

----------------------------------------------------------------------------------------------

SELECT DISTINCT CITY 
  FROM STATION 
  WHERE CITY LIKE '%a' OR 
        CITY LIKE '%e' OR 
        CITY LIKE '%i' OR 
        CITY LIKE '%o' OR 
        CITY LIKE '%u';
