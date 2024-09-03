/*

Query the list of CITY names from STATION that do not start with vowels.

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
  WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');
