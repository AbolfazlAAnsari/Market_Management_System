# Market_Management_System
The Market Management System is a project to design and implement a comprehensive database for efficient market management. It stores and organizes information on products, distributors, customers, orders, and other entities.

## Problem Description

The Market Management System addresses the need for an organized and streamlined approach to managing a market. It aims to provide a centralized database to store and manage information related to products, distributors, customers, orders, and other relevant entities.

## Entities

The database includes the following entities:

- Products: Information about the products available in the market, including details such as name, description, price, and quantity.
- Suppliers: Details of the Suppliers supplying products to the market,
- Customers: Information about the market's customers,
- Orders: Details of the orders placed by customers,
- Available: Details about which products are available in which Store

## Phases

The project consists of several phases:

### Phase 0:
- ER Diagram
- 
### Phase 1:
- Design and creation of the database schema.

### Phase 2:
- Convert ER diagram to tables, define keys, create SQL script.


### Phase 3:
- Store real data in tables, including products, customers, distributors, and orders.

### Phase 4:
- Perform update and delete operations in the database, including adding a customer, placing an order, updating phone number, and deleting customers without orders.

### Phase 5:
- Execute SQL queries to retrieve necessary information about the online store, including top-selling products for each distributor and city, distributors with the highest sales, and the number of distributors selling specific products.

### Phase 6:
- Creation different views

### Phase 7:
- Modification of the database structure, add is_sold boolean attribute, 'True' when the first product is sold, using Transaction and Rollback

### Phase 8:
- Implementation of SQL assertions

### Phase 9:
- Creation of indexes to improve data retrieval performance.

### Phase 10:
- Creation of a new user in the DBMS with restricted write access to tables and views.
- Creation of a user named "stones_john" with the specified permissions.

All implemented phases are available in main.ipynb and extracted SQL server queries in the Queries folder.
