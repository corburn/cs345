-- Return this weeks schdule for the given employee id.
CREATE OR REPLACE  FUNCTION schedule_week(acc_no IN NUMBER)
    RETURN sys_refcursor
    AS
    l_rc sys_refcursor;
    sunday Date;
    saturday Date;
    BEGIN
        SELECT TRUNC(sysdate-1, 'IW') INTO sunday FROM dual;
        SELECT TRUNC(sysdate+5, 'IW') INTO saturday FROM dual;
        OPEN l_rc FOR
            SELECT *
            FROM schedule_view
            WHERE TO_DATE(start_date, 'yyyy-mm-dd hh24:MI') BETWEEN sunday AND saturday AND emp_id = acc_no;
            --SELECT * FROM schedule_view WHERE START_DATE BETWEEN sunday AND saturday;
        RETURN l_rc;
    END schedule_week;
/
