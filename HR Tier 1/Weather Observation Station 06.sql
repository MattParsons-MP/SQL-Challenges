/*

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 

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
  WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');

----------------------------------------------------------------------------------------------

SELECT DISTINCT CITY 
  FROM STATION 
  WHERE CITY LIKE 'A%' OR 
        CITY LIKE 'E%' OR 
        CITY LIKE 'I%' OR 
        CITY LIKE 'O%' OR 
        CITY LIKE 'U%';




