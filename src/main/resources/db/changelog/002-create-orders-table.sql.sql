--liquibase formatted sql

--changeset your_name:002-create-orders
CREATE TABLE ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         DATE DEFAULT NOW(),
    customer_id  INT,
    product_name VARCHAR(255),
    amount       INT CHECK (amount > 0),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);