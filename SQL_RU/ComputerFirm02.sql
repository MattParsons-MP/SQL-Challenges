/* 

List all printer makers. 

Result set: maker.

Tables:

            product

    maker:          varchar(10)
    model:          varchar(50)
    type:           varchar(50)

*/

SELECT DISTINCT maker
FROM Product 
WHERE type = 'printer'
