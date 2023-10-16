
# Creation of unicorn_burgers database
CREATE SCHEMA unicorn_burgers;

# Creation of tables for unicorn_burgers

# Sales table

CREATE TABLE unicorn_burgers.sales(
    sale_date date,
    customer_id int,
    product_id int
);

# Menu table

    CREATE TABLE unicorn_burgers.menu(
    product_id int,
    product_name varchar(100),
    product_creation_date date,
    price decimal(12,2)
);

# Customers table

CREATE TABLE unicorn_burgers.customer(
    customer_id int,
    customer_name varchar(50),
    customer_creation_date date
);

# Data insertion into each table

# Sales table

INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-02-02', 1, 1);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-02-03', 2, 2);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-02-15', 3, 3);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-03-17', 4, 2);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-03-25', 5, 2);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-03-25', 6, 7);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-03-29', 7, 7);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-03-29', 8, 7);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-04-04', 9, 7);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-04-15', 10, 5);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-04-15', 3, 3);
INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-04-15', 3, 7);

# Menu table

INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (1, 'Winged Unicorn', '2022-01-01', 12.99);
INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (2, 'The Smoke', '2022-03-15', 11.99);
INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (3, 'Guaca Chicken', '2022-02-25', 10.99);
INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (4, 'Bacon Pony', '2022-04-01', 10.99);
INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (5, 'Sexy Bomb', '2022-04-15', 12.49);
INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (6, 'Yankee', '2022-04-22', 13.59);
INSERT INTO unicorn_burgers.menu (product_id, product_name, product_creation_date, price) VALUES (7, 'Triple Cheese Rainbow', '2022-05-06', 12.99);

# Customers table

INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (1, 'Brad Pitt', '2022-02-02');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (2, 'Speedy Gonzalez', '2022-02-03');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (3, 'Lionel Messi', '2022-02-15');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (4, 'Michelle Obama', '2022-03-17');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (5, 'Cameron Diaz', '2022-03-25');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (6, 'Bugs Bunny', '2022-03-25');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (7, 'Ibai Llanos', '2022-03-29');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (8, 'Britney Spears', '2022-03-29');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (9, 'Demi Moore', '2022-04-04');
INSERT INTO unicorn_burgers.customer (customer_id, customer_name, customer_creation_date) VALUES (10, 'Agatha Christie', '2022-04-15');

# Update record in sales table where sale_date='2022-03-17', customer_id=4, and product_id=2 to customer Bugs Bunny and product Guaca Chicken

UPDATE unicorn_burgers.sales
SET customer_id=6, product_id=3
WHERE sale_date='2022-03-17' AND customer_id=4 AND product_id=2;

# Insert new record into sales table where sale_date='2022-03-13', customer = Cameron Diaz, and product=Yankee

INSERT INTO unicorn_burgers.sales (sale_date, customer_id, product_id) VALUES ('2022-03-03', 5, 6);

# Add constraints to the tables in the database

# Adding primary key to the menu table
ALTER TABLE unicorn_burgers.menu ADD PRIMARY KEY(product_id);

# Adding primary key to the customer table

ALTER TABLE unicorn_burgers.customer ADD PRIMARY KEY(customer_id);

# Adding foreign keys to the sales table

ALTER TABLE unicorn_burgers.sales ADD FOREIGN KEY(customer_id) REFERENCES unicorn_burgers.customer (customer_id);
ALTER TABLE unicorn_burgers.sales ADD FOREIGN KEY(product_id) REFERENCES unicorn_burgers.menu (product_id);