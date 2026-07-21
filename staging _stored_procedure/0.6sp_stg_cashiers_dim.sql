CREATE PROCEDURE Sp_stg_dim_cashier AS
BEGIN

DROP TABLE IF EXISTS [stg].[dbo].[dim_cashier];

CREATE TABLE dbo.dim_cashier
(
    CashierKey INT IDENTITY PRIMARY KEY,
    Cashier_name VARCHAR(100)
);

INSERT INTO dbo.dim_cashier(Cashier_name)
SELECT DISTINCT cashier_name
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data];
end;