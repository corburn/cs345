CREATE TRIGGER dispatch_time_auto
BEFORE UPDATE OF driver_id ON Request
FOR EACH ROW 
BEGIN
	:new.dispatch_time := CURRENT_TIMESTAMP;
END dispatch_time_auto;
/

