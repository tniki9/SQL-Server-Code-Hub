# FoodMarket Database - SQL Server Exercise

## Task Overview
The goal is to create a simple database in **SQL Server** with two tables: **customers** and **sales_orders**. It is required to define data rules, insert sample data and write queries to retrieve specific information.

## Step 1: Create the FoodMarket Database
Create a database named `FoodMarket`.

## Step 2: Create the Customers Table
Create a customers table with the following columns:
- **ID** Unique, auto-generated ID starting from `1000`.
- **Name** Cannot contain numbers.
- **Address** Must include a street name and number.
- **Phone** Must follow the format: `064/12-34-567`.

**After creating the table, insert three sample customers.**

## Step 3: Create the Sales Orders Table
Create a sales orders table with the following columns:
- **OrderNumber** Unique identifier for each order.
- **CustomerID** Foreign key referencing the `id` column from the `customers` table.
- **OrderedProduct** Max length: **10 characters**.
- **Quantity** The quantity of the ordered product.
- **Price** Decimal value with up to **two decimal places** (e.g. `1.99`, `5.64`).
- **Note** Can contain both numbers and letters with a character limit.

**Insert 10 different products purchased by the customers.**

## Step 4: Write SQL Queries
Write SQL queries to:
1. Retrieve **all products purchased by each customer**.
2. List **all orders where more than one product was ordered**.
3. Count the **total number of orders, grouped by Customer ID**.

### Purpose
This task was created to demonstrate SQL knowledge, database constraints, and query writing skills.  
