 */
   Query all columns for a city in CITY with the ID 1661.

   The CITY table is described as follows:

   
    id:          number
    name:        varchar2(17)
    countrycode: varchar2(3)
    district:    varchar2(20)
    population:  number
*/
SELECT *
    FROM city
    WHERE id = 1661;
