/*

Query a count of the number of cities in CITY having a Population larger than 100,00.

Input Format

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/

SELECT COUNT(city)
FROM city
WHERE population > 100000;
