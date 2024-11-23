--liquibase formatted sql

--changeset your_name:001-create-customers
CREATE TABLE CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(255) NOT NULL,
    surname      VARCHAR(255) NOT NULL,
    age          INT          NOT NULL CHECK (age > 0 AND age < 120),
    phone_number VARCHAR(20)  NOT NULL UNIQUE
);