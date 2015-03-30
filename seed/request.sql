CREATE TABLE request(
    request_id INT CONSTRAINT request_pk PRIMARY KEY,
    cus_loc_id INT CONSTRAINT request_cus_loc_id_nn_cnst NOT NULL,
    dispatcher_id INT,
    driver_id INT,
    create_time DATE CONSTRAINT request_create_time_nn_cnst NOT NULL,
    dispatch_time DATE,
    estim_pickup DATE,
    delivery_pickup DATE,
    delivery_complete DATE,
    CONSTRAINT cus_loc_id_fk FOREIGN KEY (cus_loc_id) REFERENCES customer_location(cus_loc_id),
    CONSTRAINT request_dispatcher_fk FOREIGN KEY (dispatcher_id) REFERENCES employee(emp_id),
    CONSTRAINT request_driver_fk FOREIGN KEY (driver_id) REFERENCES employee(emp_id)
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE request_seq;
CREATE TRIGGER request_trig
BEFORE INSERT ON request 
FOR EACH ROW
BEGIN
      SELECT request_seq.NEXTVAL
      INTO :new.request_id
      FROM dual;
END;
/
