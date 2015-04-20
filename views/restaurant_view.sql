CREATE OR REPLACE VIEW restaurant_view AS
	SELECT item_name, COUNT(request_id) AS Times_Ordered
	FROM Menu_Item A
	FULL OUTER JOIN Request_Item B
	ON A.item_id=B.item_id
	GROUP BY item_name;
