-- This view will display the employee names next to their schedule start/end times displayed in international date format
-- yyyy-mm-dd HH:MM
-- EMP_ID EMP_FNAME EMP_LNAME SCHE_STAR SCHE_END

-- Format columns to avoid wrapping.
SET WRAP OFF
SET LINESIZE 3000
COLUMN emp_fname FORMAT A15
COLUMN emp_lname FORMAT A15
COLUMN emp_phone FORMAT A15
COLUMN emp_email FORMAT A15

CREATE OR REPLACE VIEW schedule_view AS
    SELECT emp_id, emp_fname, emp_lname, (TO_CHAR(sche_start, 'yyyy-mm-dd hh24:mi')) "START", TO_CHAR(sche_end, 'yyyy-mm-dd hh24:mi') "END"
    FROM employee
    LEFT OUTER JOIN schedule USING (emp_id)
    ORDER BY emp_id, "start", "end";
