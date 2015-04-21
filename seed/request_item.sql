CREATE TABLE request_item(
    item_id INT,
    request_id INT,
    quantity INT,
    CONSTRAINT request_item_pk PRIMARY KEY (item_id, request_id),
    CONSTRAINT request_item_item_id_fk FOREIGN KEY (item_id) REFERENCES menu_item(item_id),
    CONSTRAINT request_item_request_id_fk FOREIGN KEY (request_id) REFERENCES request(request_id)
);
