/*

Query a list of CITY names from STATION for cities that have an even ID number. 

Print the results in any order, but exclude duplicates from the answer.

The STATION table is described as follows:

    id:          number
    city:        varchar2(21)
    state:       varchar2(2)
    Lat_n:       number
    long_w:      number

*/
SELECT DISTINCT city 
  FROM station 
  WHERE MOD(id,2) = 0;
