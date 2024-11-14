create table if not exists CUSTOMERS
(
    id           serial PRIMARY KEY,
    name         varchar(255)  CHECK ( name != '' ),
    surname      varchar(255)  CHECK ( surname != '' ),
    age          INT           CHECK (age > 0 and age < 120),
    phone_number varchar(20)      not null UNIQUE
);

insert into CUSTOMERS
(name, surname, age, phone_number)
values ('alexey', 'Ivanov', '23', '78032138321'),
       ('Oleg', 'Romanov', '43', '7903452131'),
       ('Olya', 'Sky', '25', '78053428765'),
       ('Dmitri', 'Dmitriev', '54', '78213209234'),
       ('Anastasiya', 'Air', '65', '79153478907');

create table if not exists ORDERS
(
    id           serial PRIMARY KEY,
    date         DATE DEFAULT now(),
    customer_id  INT  ,
    product_name varchar(255),
    amount       INT CHECK ( amount > 0 ),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

insert into ORDERS
(customer_id, product_name, amount)
values (1, 'vase', 1),
       (2, 'phone', 1),
       (3, 'car', 1),
       (1, 'magazine', 1);
