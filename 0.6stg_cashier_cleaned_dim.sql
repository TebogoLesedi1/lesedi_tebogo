CREATE TABLE dbo.dim_cleaned_cashier
(
    CashierKey INT IDENTITY PRIMARY KEY,
    Cashier_name VARCHAR(100)
);

INSERT INTO dbo.dim_cleaned_cashier(Cashier_name)
SELECT DISTINCT cashier_name
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data];

select * from dim_cleaned_cashier