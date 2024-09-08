/* 

Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.

Tables:

            PC

    code:          int
    model:         varchar(50)
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
WHERE price < 600 AND
      (cd = '12x' or
       cd = '24x');
