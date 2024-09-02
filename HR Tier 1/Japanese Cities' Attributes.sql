/*

Query all attributes of every Japanese city in the CITY table. 

The COUNTRYCODE for Japan is JPN.

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/

SELECT * 
  from city 
  WHERE countrycode = 'JPN';
