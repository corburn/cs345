CREATE TABLE customer_location(
    cus_loc_id INT CONSTRAINT cus_loc_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    cus_id INT CONSTRAINT cus_id_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_add_1 VARCHAR(255) CONSTRAINT cus_add_1_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_add_2 VARCHAR(255),
    cus_loc_zip VARCHAR(255) CONSTRAINT cus_loc_zip_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_loc_phone VARCHAR(255) CONSTRAINT cus_loc_phone_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_instructions VARCHAR(255),
    CONSTRAINT cus_loc_cus_id_fk FOREIGN KEY (cus_id) REFERENCES customer(cus_id) DEFERRABLE INITIALLY IMMEDIATE
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE customer_location_seq;
CREATE TRIGGER customer_location_trig
BEFORE INSERT ON customer_location
FOR EACH ROW
BEGIN
      SELECT customer_location_seq.NEXTVAL
      INTO :new.cus_id
      FROM dual;
END;
/
