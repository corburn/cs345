-- Drop procedures if they  exist
BEGIN
   EXECUTE IMMEDIATE 'DROP PROCEDURE prc_request_add';
   EXECUTE IMMEDIATE 'DROP PROCEDURE prc_req_item_add';
EXCEPTION
   WHEN OTHERS THEN
      -- Table or view does not exist
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
