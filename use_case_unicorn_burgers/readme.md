###  🚀 Introducción

Caterina loves hamburgers, and in 2022 she decided to launch her first restaurant that offers the best burgers in the market 🍔

But Caterina has just started and has NOTHING done in terms of technology. She wants to start storing her data from the beginning so that when she grows, all the information doesn't become a snowball and there is no way to analyze the data later.

### ⚡️ Problem to solve

Caterina wants to create her first MYSQL database to later perform an ETL process and be able to extract data from her restaurant's POS software and update this information in her database. But for this, she needs an analyst to create the database and tables to store the restaurant's data.

### 🔗 Data Description

In the following diagram, we can see the structure of the Unicorn Burgers restaurant. This would be a simple schema of the business model, where we have our sales, our "products" which are dishes, and our customers.

### 💻 Practice:

### 1. Create a database
You must create a database in MYSQL called UnicornBurgers.

### 2. Create the tables of the database

**Table 1:** ventas - It will record all sales made to customers in the restaurant. The fields of the table will be: fecha_venta (sale date), id_cliente (customer ID), id_producto (product ID).

**Table 2:** menu - It will record the dishes we offer in the restaurant. The fields of the table will be: id_producto (product ID), nombre_producto (product name), fecha_creacion (creation date), precio (price).

**Table 3:** clientes - It will record all the customers of the restaurant who have made purchases. The fields of the table will be: id_cliente (customer ID), nombre_cliente (customer name), fecha_creacion (creation date).

###  3. Insert values into the tables of the database

The historical data is currently in a CSV file. We need to load this historical data, and later on, an automation will be created to collect the data.

### 4. Update and insert records into the ventas table

We have been informed by management that there was an error in the ventas table, so we need to update a cell. Additionally, there is a missing sale in our tables.

1. Update the record with fecha_venta = 17/03/2022, id_cliente = 4, id_producto = 2 with the following data: cliente (customer) = Bux Bunny and producto (product) = Guaca chicken.
2. Insert the following record into ventas: fecha_creacion (creation date) = 03/03/2022, cliente (customer) = Cameron Diaz, producto (product) = Yankee.

### 5. Alter table and create constraints with PK and FK

1. Assign to the clientes table that the primary key should be the id_cliente field.
2. Assign to the productos table that the primary key will be the id_producto field.
3. Assign to the ventas table that the foreign keys will be: id_cliente, id_producto.

### 6. Create the entity-relationship model to present to management

In this final step, you should create an entity-relationship model to show the Unicorn Project management the data model you have created and that the work is completed.