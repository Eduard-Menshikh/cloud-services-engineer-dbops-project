CREATE INDEX idx_orders_status_date ON orders (status, date_created);

CREATE INDEX idx_order_product_order_id ON order_product (order_id);