/*

Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/

SELECT MAX(population) -
       MIN(population)
FROM city AS Difference;
