/* Procedure for adding a request_item to the request_item table 
   Example usage:
	SQL> exec prc_req_item_add(2)
	(2 would be the item_id of the menu_item being added)
*/

CREATE OR REPLACE PROCEDURE prc_req_item_add (itemid menu_item.item_id%type) IS

itemname menu_item.item_name%type; --get item's name for the dbms output

BEGIN
    -- put item's name into the itemname variable
    SELECT item_name INTO itemname
    FROM menu_item
    WHERE item_id = itemid;
    --add the item to the request_item table
    INSERT INTO request_item VALUES (itemid, request_seq.CURRVAL);
    dbms_output.put_line('Inserted line item "'||itemname||'" to request '||request_seq.CURRVAL);
END;
/

