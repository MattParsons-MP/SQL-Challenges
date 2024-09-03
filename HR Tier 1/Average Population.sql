/*

Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/

SELECT FLOOR(AVG(population))
FROM city;
