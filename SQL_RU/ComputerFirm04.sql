/* 

Find all records from the Printer table containing data about color printers.

Tables:

            printer

    code:          int
    model:         varchar(50)
    color:         char(1)
    type:          varchar(10)
    price:         money

*/

SELECT *
FROM printer
WHERE color = 'y';
