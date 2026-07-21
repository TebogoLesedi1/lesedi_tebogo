CREATE PROCEDURE Sp_dim_customer AS
BEGIN

DROP TABLE IF EXISTS [stg].[dbo].[dim_customer];

CREATE TABLE dbo.dim_customer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    [customer_first_name] VARCHAR(100),
    [customer_last_name] VARCHAR(100),
    [customer_email] VARCHAR(255),
    [customer_phone] VARCHAR(30),
    [customer_city] VARCHAR(100),
    [customer_province] VARCHAR(100),
    [customer_loyalty_tier] VARCHAR(50),
    [Customer_Since] DATE
);

INSERT INTO dbo.dim_customer
(
[customer_first_name],
[customer_last_name],
[customer_email],
[customer_phone],
[customer_city],
[customer_province],
[customer_loyalty_tier],
[customer_since]
)
SELECT DISTINCT
[customer_first_name],
[customer_last_name],
[customer_email],
[customer_phone],
[customer_city],
[customer_province],
[customer_loyalty_tier],
[customer_since]
FROM [stg].[dbo].[1782578019743_BrightLearn_Raw_Data];
END;