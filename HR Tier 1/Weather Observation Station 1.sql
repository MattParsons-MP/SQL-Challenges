/*

Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:

    id:          number
    city:        varchar2(21)
    state:       varchar2(2)
    Lat_n:       number
    long_w:      number

*/

SELECT city, state 
FROM station;
