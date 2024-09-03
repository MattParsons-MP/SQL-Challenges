/*

Query the sum of the populations for all Japanese cities in CITY. 

The COUNTRYCODE for Japan is JPN.

Input Format

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/

SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';
