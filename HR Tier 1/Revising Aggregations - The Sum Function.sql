/*
Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/

SELECT DISTINCT SUM(population)
  FROM city
WHERE district = 'California';
