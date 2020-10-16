--CS457 PA3

--Construct the database and table (0 points; expected to work from PA1)
USE CS457_PA3;

-- The following will miss Gill (2 points)
select * 
from Employee E, Sales S 
where E.id = S.employeeID;

-- This is the same as above but with a different syntax (3 points)
select * 
from Employee E inner join Sales S 
on E.id = S.employeeID;

-- The following will include Gill (5 points)
select * 
from Employee E left outer join Sales S 
on E.id = S.employeeID;


.exit

-- Expected output
--
-- Database CS457_PA3 created.
-- Using database CS457_PA3.
-- Table Employee created.
-- Table Sales created.
-- 1 new record inserted.
-- 1 new record inserted.
-- 1 new record inserted.
-- 1 new record inserted.
-- 1 new record inserted.
-- 1 new record inserted.
-- id int|name varchar(10)|employeeID int|productID int
-- 1|Joe|1|344
-- 1|Joe|1|355
-- 2|Jack|2|544
-- id int|name varchar(10)|employeeID int|productID int
-- 1|Joe|1|344
-- 1|Joe|1|355
-- 2|Jack|2|544
-- id int|name varchar(10)|employeeID int|productID int
-- 1|Joe|1|344
-- 1|Joe|1|355
-- 2|Jack|2|544
-- 3|Gill||
-- All done.