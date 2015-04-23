CREATE TABLE customer(
    cus_id INT CONSTRAINT cus_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    cus_phone CHAR(10) CONSTRAINT cus_phone_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_fname VARCHAR(20) CONSTRAINT cus_fname_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_lname VARCHAR(20) CONSTRAINT cus_lname_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    cus_email VARCHAR(100) CONSTRAINT cus_email_nn_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE CONSTRAINT cus_email_uq_cnst UNIQUE DEFERRABLE INITIALLY IMMEDIATE
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE customer_seq;
CREATE TRIGGER customer_trig
BEFORE INSERT ON customer
FOR EACH ROW
BEGIN
      SELECT customer_seq.NEXTVAL
      INTO :new.cus_id
      FROM dual;
END;
/

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('9285559876', 'Hank', 'Williams', 'hank.williams@email.com');

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('9285559991', 'Bob', 'Boolean', 'truefalse@bool.org');

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('9285551298', 'Suzy', 'Smith', 'suzy@email.com');

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('4805681652', 'Jospeh', 'Stalin', 'mustache@ussr.gov');

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('9284562845', 'Steve', 'Smith', 'steve@email.com');

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('9284628453', 'Andrea', 'Brazil', 'latindance@email.com');

INSERT INTO customer(cus_phone, cus_fname, cus_lname, cus_email)
VALUES ('2138854962', 'Zach', 'Surfer', 'surferdude@email.com');
