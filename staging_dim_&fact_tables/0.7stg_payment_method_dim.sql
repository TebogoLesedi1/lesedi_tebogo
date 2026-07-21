DROP TABLE IF EXISTS [stg].[dbo].[dim_payment_method];

CREATE TABLE dbo.dim_payment_method
(
    PaymentMethodKey INT IDENTITY PRIMARY KEY,
    Payment_Method VARCHAR(50)
);
INSERT INTO dbo.dim_payment_Method(Payment_Method)
SELECT DISTINCT payment_method
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];
