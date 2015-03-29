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
