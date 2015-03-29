-- This is the main script. It will drop all tables and rebuild it from scratch.-- You can run it as many times as you like and each time it will restore the
-- database to a "clean" state.
--
-- To run the script `cd` into the same folder as the script and run:
-- sqlplus username@tund.cefns.nau.edu @reset
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
@drop_vehicle
-- schedule reference employee
@drop_schedule
@drop_employee
@drop_restaurant
@drop_customer

@customer
@restaurant
@employee
@schedule
@vehicle

SPOOL OFF
