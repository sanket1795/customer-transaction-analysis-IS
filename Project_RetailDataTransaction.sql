CREATE DATABASE RetailSalesData;
USE RetailSalesData;

CREATE TABLE  Sales_Data_Transactions (
customer_id VARCHAR(255),
trans_date VARCHAR(255),
tran_amount INTEGER);

DROP TABLE Sales_Data_Transactions;

CREATE TABLE  Sales_Data_Response (
customer_id VARCHAR(255),
response INTEGER);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

SELECT * FROM Sales_Data_Transactions;

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE customer_id = 'CS1195';

-- Creating index on customer_id column on primary key.

CREATE INDEX idx_id ON Sales_Data_Transactions(customer_id);

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE customer_id = 'CS1195';
