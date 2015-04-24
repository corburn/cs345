CREATE TABLE menu_item(
    item_id INT CONSTRAINT menu_item_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    res_id INT CONSTRAINT menu_item_res_id_nn_cnst NOT NULL,
    item_name VARCHAR(30) CONSTRAINT menu_item_item_name_nn_cnst NOT NULL,
    --added this line because we need prices to make sales right?
    item_price NUMBER(9,2) CONSTRAINT menu_item_item_nn_cnst NOT NULL,
    item_description VARCHAR(75),
    CONSTRAINT menu_item_res_id_fk FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE menu_item_seq;
CREATE TRIGGER menu_item_trig
BEFORE INSERT ON menu_item
FOR EACH ROW
BEGIN
      SELECT menu_item_seq.NEXTVAL
      INTO :new.item_id
      FROM dual;
END;
/

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (1, 'Love Me Tender', 'Seared beef tenderloin with sauteed mushrooms', 17.99);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (1, 'Hunka Hunka Burnin'' Love', 
        'Sliced Rocky Mountain Oyster glazed with a tangy Habanero glaze', 12.99);
		
INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (1, 'Hound Dog', 'Dachshund sausage', 5.50);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (2, 'All Shook Up', '180 ounces of milk-shake, all flavors', 3.99);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (2, 'Alright, Okay, You Win', '64 slices of bacon wrapped in...bacon', 29.99);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (2, 'I''ll Never Know', 'Mystery meat-loaf', 11.95);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (3, 'Slice of Heaven', 'Pecan Pumpkin Pie', 5.99);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (3, 'Turducken Slammer', 'Perfect storm of the top 3 edible birds', 19.99);

INSERT INTO menu_item (res_id, item_name, item_description, item_price)
VALUES (3, 'Cannibal''s Clown Burger', 'Does this taste funny to you', 4.99);
