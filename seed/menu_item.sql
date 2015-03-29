CREATE TABLE menu_item(
    item_id INT CONSTRAINT menu_item_pk PRIMARY KEY,
    res_id INT CONSTRAINT menu_item_res_id_nn_cnst NOT NULL,
    item_name INT CONSTRAINT menu_item_item_name_nn_cnst NOT NULL,
    item_description VARCHAR(255),
    CONSTRAINT menu_item_res_id_fk FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);
