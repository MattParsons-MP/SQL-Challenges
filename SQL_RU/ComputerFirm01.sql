/* 

Find the model number, speed and hard drive capacity for all the PCs with prices below $500.

Result set: model, speed, hd.

Tables:

            PC

    code:          int
    model:         varchar2(50)
    speed:         smallint
    ram:           smallint
    hd:            real
    cd:            varchar(10)
    price:         money

*/

SELECT model, 
       speed, 
       hd
FROM pc
WHERE price < 500;
