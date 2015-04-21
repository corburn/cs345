CREATE TABLE restaurant(
    res_id INT CONSTRAINT restaurant_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    res_name VARCHAR(50) CONSTRAINT res_name_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_add_1 VARCHAR(100) CONSTRAINT res_add_1_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_add_2 VARCHAR(100),
    res_zip VARCHAR(10) CONSTRAINT res_zip_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_phone VARCHAR(15) CONSTRAINT res_phone_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    res_instructions VARCHAR(100)
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

INSERT INTO restaurant (res_name, res_add_1, res_add_2, res_zip, res_phone, res_instructions)
VALUES ('Freddy Fazbear''s Pizza', '3345 S. Jump St.', 'Suite #11', '45221', '4502263154', 
        'Farthest right location at the strip mall');

INSERT INTO restaurant (res_name, res_add_1, res_add_2, res_zip, res_phone, res_instructions)
VALUES ('Pizza Planet', '122 N. Toy Ave.', Null, '45221', '4505452221', Null);

INSERT INTO restaurant (res_name, res_add_1, res_add_2, res_zip, res_phone, res_instructions)
VALUES ('Krusty Burger', '1990 W. Homer St.', Null, '45221', '4508963214', Null);
