ALTER TABLE product
    ADD COLUMN price DOUBLE PRECISION;

ALTER TABLE orders
    ADD COLUMN date_created DATE DEFAULT CURRENT_DATE;

ALTER TABLE order_product
    ADD CONSTRAINT fk_product FOREIGN KEY (product_id)
        REFERENCES product (id);

ALTER TABLE order_product
    ADD CONSTRAINT fk_orders FOREIGN KEY (order_id)
        REFERENCES orders (id);

DROP TABLE orders_date;

DROP TABLE product_info;