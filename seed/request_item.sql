CREATE TABLE request_item(
    item_id INT,
    request_id INT,
    CONSTRAINT request_item_pk PRIMARY KEY (item_id, request_id)
);
