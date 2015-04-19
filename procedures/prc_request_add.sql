/* Put Procedure definition here for when a request is made that calculates 
   the total of the request based on what was requested and how much it costs.
   Example usage:
	SQL> exec prc_request_add(1)

   (adds a new request using the customer location id of '1' */

CREATE OR REPLACE PROCEDURE prc_request_add (customer_loc customer_location.cus_loc_id%type) IS
--create new request that we will have to use another procedure to add "request_items" to
current_user VARCHAR2(40);
location customer_location.cus_add_1%type;

BEGIN
    current_user := user; --gets current logged-on user
    -- gets the address field and puts it into location variable
    SELECT cus_add_1 INTO location
    FROM customer_location
    WHERE cus_loc_id = customer_loc;
    -- creates the new invoice with the current date/time (sysdate includes time as well as date)
    INSERT INTO request (cus_loc_id, dispatcher, create_time)
	VALUES (customer_loc, current_user, sysdate);
    dbms_output.put_line('New order request made by '||current_user||' to be delivered to '||location);
END;
/

