INSERT INTO seller (seller_id, seller_name) VALUES (201, 'A');
INSERT INTO seller (seller_id, seller_name) VALUES (202, 'B');
INSERT INTO seller (seller_id, seller_name) VALUES (203, 'C');

INSERT INTO customer (customer_id, name, address, tele_number, "seller_ID") VALUES (101, 'Aidana', 'Almaty', '8775', 203);
INSERT INTO customer (customer_id, name, address, tele_number, "seller_ID") VALUES (102, 'Arai', 'Astana', '8701', 201);
INSERT INTO customer (customer_id, name, address, tele_number, "seller_ID") VALUES (103, 'Aya', 'London', '8707', 202);

INSERT INTO products (product_id, product_name, product_price) VALUES (301, 'Mobile', 132.25);
INSERT INTO products (product_id, product_name, product_price) VALUES (302, 'Laptop', 500.8);
INSERT INTO products (product_id, product_name, product_price) VALUES (303, 'Computer', 1205.49);

INSERT INTO sell (seller_ID, customer_ID, product_ID, date) VALUES (201, 103, 301, '2021-11-09');
INSERT INTO sell (seller_ID, customer_ID, product_ID, date) VALUES (203, 101, 303, '2020-03-21');
INSERT INTO sell (seller_ID, customer_ID, product_ID, date) VALUES (202, 101, 302, '2020-11-28');
INSERT INTO sell (seller_ID, customer_ID, product_ID, date) VALUES (202, 103, 301, '2021-05-15');
INSERT INTO sell (seller_ID, customer_ID, product_ID, date) VALUES (203, 102, 303, '2020-12-30');
INSERT INTO sell (seller_ID, customer_ID, product_ID, date) VALUES (203, 103, 301, '2020-01-30');

INSERT INTO shopping_order (order_ID, customer_ID, customer_name, date, product_ID) VALUES (01, 103, 'Aya' ,'2021-11-09', 301);
INSERT INTO shopping_order (order_ID, customer_ID, customer_name, date, product_ID) VALUES (02, 101, 'Aidana' ,'2020-03-21', 303);
INSERT INTO shopping_order (order_ID, customer_ID, customer_name, date, product_ID) VALUES (03, 101, 'Aidana' ,'2020-11-28', 302);
INSERT INTO shopping_order (order_ID, customer_ID, customer_name, date, product_ID) VALUES (04, 103, 'Aya' ,'2021-05-15', 301);
INSERT INTO shopping_order (order_ID, customer_ID, customer_name, date, product_ID) VALUES (05, 102, 'Arai' ,'2020-12-30', 303);
INSERT INTO shopping_order (order_ID, customer_ID, customer_name, date, product_ID) VALUES (06, 103, 'Aya' ,'2020-01-30', 301);

INSERT INTO deliveries (delivery_id, date, customer_ID, order_ID) VALUES (401, '2021-11-11', 103, 01);
INSERT INTO deliveries (delivery_id, date, customer_ID, order_ID) VALUES (402, '2020-03-21', 101, 02);
INSERT INTO deliveries (delivery_id, date, customer_ID, order_ID) VALUES (404, '2020-11-30', 101, 03);
INSERT INTO deliveries (delivery_id, date, customer_ID, order_ID) VALUES (403, '2021-05-15', 103, 04);
INSERT INTO deliveries (delivery_id, date, customer_ID, order_ID) VALUES (405, '2020-12-30', 102, 05);
INSERT INTO deliveries (delivery_id, date, customer_ID, order_ID) VALUES (406, '2020-01-31', 103, 06);

INSERT INTO store (product_id, status, location) VALUES (301, 'YES', 'Astana');
INSERT INTO store (product_id, status, location) VALUES (302, 'NO', 'Astana');
INSERT INTO store (product_id, status, location) VALUES (303, 'NO', 'Astana');
INSERT INTO store (product_id, status, location) VALUES (301, 'NO', 'California');
INSERT INTO store (product_id, status, location) VALUES (302, 'YES', 'California');
INSERT INTO store (product_id, status, location) VALUES (303, 'NO', 'California');