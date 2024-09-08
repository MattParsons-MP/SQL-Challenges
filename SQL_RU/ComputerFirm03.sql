/* 

Find the model number, RAM and screen size of the laptops with prices over $1000.

Tables:

            laptop

    code:          int
    model:         varchar(50)
    speed:         smallint
    ram:           smallint
    hd:            real
    price:         money
    screen:        tinyint

*/

SELECT model, 
       ram, 
       screen
FROM laptop
WHERE price > 1000;
