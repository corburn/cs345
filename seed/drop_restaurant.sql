-- Drop table if exists
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE restaurant';
EXCEPTION
   WHEN OTHERS THEN
      -- Table or view does not exist
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

-- Drop sequence if exists
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE restaurant_seq';
EXCEPTION
    WHEN OTHERS THEN
        -- Sequence does not exist
        IF SQLCODE != -02289 THEN
            RAISE;
        END IF;
END;
/
