/* 

Query the NAME field for all American cities in the CITY table with populations larger than 120000. 

The CountryCode for America is USA.

The CITY table is described as follows:

    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number

*/
SELECT name
    FROM city
    WHERE population > 120000
        AND countrycode = 'USA';
