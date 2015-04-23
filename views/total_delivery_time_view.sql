--view that dispalys the Request ID, date and time the request was dispatched
--time the request was delivered, and total time in minutes it took to deliver the request
--from dispatch to delivery.

CREATE OR REPLACE VIEW total_delivery_time_view AS
	SELECT request_id, TO_CHAR(dispatch_time,'yyyy-mm-dd hh24:mi') AS DispatchTime, TO_CHAR(delivery_complete, 'hh24:mi') AS DeliveryTime, 
	(delivery_complete - dispatch_time)*24*60 AS TotalTime_Minutes
	FROM Request;
