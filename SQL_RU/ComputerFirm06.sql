/* 

For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. 

Result set: maker, speed.

Tables:

            laptop                        product

    code:          int              maker:      varchar(10)
    model:         varchar(50)      model:      varchar(50)
    speed:         smallint         type:       varchar(50)
    ram:           smallint
    hd:            real
    price:         money
    screen:        tinyint

*/

SELECT DISTINCT product.maker,
       laptop.speed
FROM product
JOIN laptop ON
      product.model = laptop.model
WHERE laptop.hd >= 10 AND
      type IN (SELECT type
               FROM product
               WHERE type = 'laptop);
