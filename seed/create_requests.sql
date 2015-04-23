EXECUTE prc_request_add(1);
EXECUTE prc_req_item_add(1, 1);
EXECUTE prc_req_item_add(3, 1);
UPDATE Request SET driver_id=1, create_time=TO_DATE('2015-03-29 12:00', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-29 12:03', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-29 12:30', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-29 12:31', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-29 12:42', 'yyyy-mm-dd hh24:mi')
WHERE request_id=1;

EXECUTE prc_request_add(4);
EXECUTE prc_req_item_add(5, 2);
EXECUTE prc_req_item_add(7, 1);
UPDATE Request SET driver_id=1, create_time=TO_DATE('2015-03-29 13:00', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-29 13:07', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-29 13:30', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-29 13:31', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-29 13:42', 'yyyy-mm-dd hh24:mi')
WHERE request_id=2;

EXECUTE prc_request_add(2);
EXECUTE prc_req_item_add(2, 3);
UPDATE Request SET driver_id=2, create_time=TO_DATE('2015-03-29 13:10', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-29 13:13', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-29 13:35', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-29 13:34', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-29 13:42', 'yyyy-mm-dd hh24:mi')
WHERE request_id=3;

EXECUTE prc_request_add(7);
EXECUTE prc_req_item_add(7, 1);
EXECUTE prc_req_item_add(2, 3);
UPDATE Request SET driver_id=2, create_time=TO_DATE('2015-03-29 15:45', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-29 15:49', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-29 16:10', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-29 16:12', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-29 16:23', 'yyyy-mm-dd hh24:mi')
WHERE request_id=4;

EXECUTE prc_request_add(1);
EXECUTE prc_req_item_add(1, 1);
UPDATE Request SET driver_id=3, create_time=TO_DATE('2015-03-30 12:25', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-30 12:28', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-30 12:40', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-30 12:38', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-30 12:48', 'yyyy-mm-dd hh24:mi')
WHERE request_id=5;

EXECUTE prc_request_add(8);
EXECUTE prc_req_item_add(8, 2);
EXECUTE prc_req_item_add(7, 2);
EXECUTE prc_req_item_add(9, 4);
UPDATE Request SET driver_id=1, create_time=TO_DATE('2015-03-30 14:55', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-30 15:00', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-30 15:15', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-30 15:17', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-30 15:29', 'yyyy-mm-dd hh24:mi')
WHERE request_id=6;

EXECUTE prc_request_add(3);
EXECUTE prc_req_item_add(4, 1);
EXECUTE prc_req_item_add(5, 3);
UPDATE Request SET driver_id=1, create_time=TO_DATE('2015-03-30 19:05', 'yyyy-mm-dd hh24:mi'), dispatch_time=TO_DATE('2015-03-30 19:07', 'yyyy-mm-dd hh24:mi'), estim_pickup=TO_DATE('2015-03-30 19:35', 'yyyy-mm-dd hh24:mi'), delivery_pickup=TO_DATE('2015-03-30 19:35', 'yyyy-mm-dd hh24:mi'), delivery_complete=TO_DATE('2015-03-30 19:41', 'yyyy-mm-dd hh24:mi')
WHERE request_id=7;
