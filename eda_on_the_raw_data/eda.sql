------------EDA-------------
--1. Check the total number of rows
SELECT COUNT(*) AS total_rows
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data];

--2.Find out when the data starts and ends, plus the lowest, highest prices.
SELECT 
    MIN(transaction_date) AS earliest_date,
    MAX(transaction_date) AS latest_date,
    MIN(unit_price) AS lowest_price,
    MAX(unit_price) AS highest_price
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data];

--3.Check for missing (NULL) values
SELECT COUNT(*) AS missing_customers
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]
WHERE customer_email IS NULL;
