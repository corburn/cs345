CREATE TABLE restaurant(
    res_id INT CONSTRAINT restaurant_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    res_name VARCHAR(255) CONSTRAINT res_name_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_add_1 VARCHAR(255) CONSTRAINT res_add_1_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_add_2 VARCHAR(255),
    res_zip VARCHAR(255) CONSTRAINT res_zip_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_phone VARCHAR(255) CONSTRAINT res_phone_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_instructions VARCHAR(255) CONSTRAINT res_instructions_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE restaurant_seq;
CREATE TRIGGER restaurant_trig
BEFORE INSERT ON restaurant
FOR EACH ROW
BEGIN
      SELECT restaurant_seq.NEXTVAL
      INTO :new.res_id
      FROM dual;
END;
/
