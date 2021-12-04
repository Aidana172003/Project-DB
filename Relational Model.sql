create table customer(
    customer_id integer,
    name varchar(15),
    address varchar(30),
    tele_number integer,
    seller_ID integer,
    primary key(customer_id),
    foreign key(seller_ID) references seller(seller_id)
);
create table products(
    product_id integer primary key,
    product_name varchar(10) not null,
    product_price float not null
);
create table seller(
    seller_id integer primary key,
    seller_name varchar(10) not null
);
create table sell(
    seller_ID integer not null,
    customer_ID integer not null,
    product_ID integer not null,
    foreign key(seller_ID) references seller(seller_id),
    foreign key(customer_ID) references customer(customer_id),
    foreign key(product_ID) references products(product_id)
);
create table shopping_order(
    order_id integer primary key,
    customer_ID integer,
    date date,
    product_ID float,
    customer_name varchar(12),
    foreign key(customer_name) references customer(name),
    foreign key(customer_ID) references customer(customer_id),
    foreign key(product_ID) references products(product_id)
);
create table deliveries(
    delivery_id integer primary key,
    date date,
    customer_ID integer,
    order_ID integer,
    foreign key(order_ID) references shopping_order(order_id),
    foreign key(customer_ID) references customer(customer_id)
);
create table receipt(
    check_ID integer primary key,
    customer_ID integer,
    order_ID integer,
    product_ID integer,
    date date,
    foreign key(customer_ID) references customer(customer_id),
    foreign key(order_ID) references shopping_order(order_id),
    foreign key(product_ID) references products(product_id)
);
create table online_shopping(
    shopping_id integer primary key,
    check_ID integer,
    order_ID integer,
    delivery_ID integer,
    foreign key(order_ID) references shopping_order(order_id),
    foreign key(delivery_ID) references deliveries(delivery_id),
    foreign key(check_ID) references receipt(check_ID)
);
create table store(
    product_id integer references products(product_id),
    status varchar(10),
    location varchar(10)
);