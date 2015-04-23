CREATE TABLE customer_location(
    cus_loc_id INT CONSTRAINT cus_loc_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    cus_id INT CONSTRAINT cus_id_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_add_1 VARCHAR(100) CONSTRAINT cus_add_1_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_add_2 VARCHAR(100),
    cus_loc_zip CHAR(5) CONSTRAINT cus_loc_zip_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_loc_phone CHAR(10) CONSTRAINT cus_loc_phone_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_instructions VARCHAR(255),
    CONSTRAINT cus_loc_cus_id_fk FOREIGN KEY(cus_id) REFERENCES customer(cus_id)
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE customer_location_seq;
CREATE TRIGGER customer_location_trig
BEFORE INSERT ON customer_location
FOR EACH ROW
BEGIN
      SELECT customer_location_seq.NEXTVAL
      INTO :new.cus_loc_id
      FROM dual;
END;
/

--Add test data
INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (1, '21 Jump St.', null, '45221', '9285551233', 'Deliver to back door');

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (1, '11 N. Peace Ave.', 'apt #15', '45221', '9285551919', null);

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (2, '2050 Huntington Dr.', 'apt #215', '45211', '9285551111', 'Second floor');

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (3, '564 W. Moore St.', null, '45220', '9285551298', null);

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (4, '1917 E. Red Blvd.', null, '45211', '4805681652', 'Behind concrete wall');

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (5, '654 N. Acorn Ln.', 'apt #22', '45220', '9284562845', null);

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (5, '555 Grey Dr.', 'suite 56', '45211', '9285561238', 'Last business on the right');

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (6, '7895 S. Chile Ln.', null, '45211', '6458962157', null);

INSERT INTO customer_location(cus_id, cus_add_1, cus_add_2, cus_loc_zip, cus_loc_phone, cus_instructions)
VALUES (7, '456 W. Sunny Rd.', null, '45221', '2138854962', null);
