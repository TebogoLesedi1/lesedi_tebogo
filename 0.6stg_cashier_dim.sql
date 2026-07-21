CREATE TABLE dbo.DimCashier
(
    CashierKey INT IDENTITY PRIMARY KEY,
    Cashier_name VARCHAR(100)
);

INSERT INTO dbo.DimCashier(Cashier_name)
SELECT DISTINCT cashier_name
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data];