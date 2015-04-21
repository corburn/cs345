--View for restaurants to see how frequently menu items have been ordered
--Calling on the view as is will show all restaurants
--To show a single restaurant then a WHERE statement is added when view is called
--SELECT * FROM restaurant_view WHERE res_id = [restaurant ID];

CREATE OR REPLACE VIEW restaurant_view AS
	SELECT item_name, res_id, NVL(SUM(quantity),0) AS Times_Ordered
	FROM Menu_Item A
	FULL OUTER JOIN Request_Item B
	ON A.item_id=B.item_id
	GROUP BY res_id, item_name;
