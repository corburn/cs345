CREATE OR REPLACE FUNCTION get_order_total (req_id request.request_id%type)
RETURN number IS
	output number := 0;
BEGIN
	SELECT sum(cost) INTO output FROM customer_view
	WHERE request_id = req_id;
	RETURN output;
END get_order_total;
/

