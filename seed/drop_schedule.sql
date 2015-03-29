-- Drop table if exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE schedule';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

-- Drop sequence if exists
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE schedule_seq';
EXCEPTION
    WHEN OTHERS THEN
        -- Sequence does not exist
        IF SQLCODE != -02289 THEN
            RAISE;
        END IF;
END;
/
