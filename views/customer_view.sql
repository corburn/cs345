--This view will display the history of orders for a customer
--It will display the request_id, date of order, restaurant name, and
--all menu items from that order. This view can be used by customer
--who wish to see the history of what, where, and when they have placed orders.

--It needs to have breaks added
--BREAK ON request_id ON create_time ON res_name;
--To show the order #, date, and restaurant on a single line with
--multiple lines for the individual menu items

--usage:

-- select * from customer view where cus_id=<some customer id>

CREATE OR REPLACE VIEW customer_view AS
	SELECT cus.cus_id, Request.request_id, Request.create_time, rest.res_name, menu.item_name
	FROM Request JOIN Request_Item req_item ON Request.request_id = req_item.request_id
	JOIN Menu_Item menu ON req_item.item_id = menu.item_id
	JOIN Restaurant rest ON menu.res_id = rest.res_id
	JOIN customer_location cus_loc ON cus_loc.cus_loc_id = request.cus_loc_id 
	JOIN customer cus ON cus.cus_id = cus_loc.cus_id
	ORDER BY Request.request_id, rest.res_name;
