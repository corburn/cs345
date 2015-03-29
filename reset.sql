-- This is the main script. It will drop all tables and rebuild it from scratch.-- You can run it as many times as you like and each time it will restore the
-- database to a "clean" state.
--
-- To run the script `cd` into the same folder as the script and run:
-- sqlplus username@seed/tund.cefns.nau.edu @seed/reset
--
-- This will run the script as soon as you log in.
--
-- The script output will be written to a cs345project4.txt in the current
-- directory.
DEFINE _EDITOR = vim
SET ECHO ON;
SPOOL cs345project4.txt

-- Tables with foreign keys must be dropped before the tables they reference.
-- Drop tables in the opposite order they are created.
-- vehicle references employee
@seed/drop_vehicle
-- schedule reference employee
@seed/drop_schedule
@seed/drop_employee
@seed/drop_restaurant
-- customer_location references customer
@seed/drop_customer_location
@seed/seed/drop_customer

@seed/customer
@seed/customer_location
@seed/restaurant
@seed/employee
@seed/schedule
@seed/vehicle

SPOOL OFF
