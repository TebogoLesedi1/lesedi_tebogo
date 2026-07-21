CREATE TABLE dbo.DimPaymentMethod
(
    PaymentMethodKey INT IDENTITY PRIMARY KEY,
    Payment_Method VARCHAR(50)
);
INSERT INTO dbo.DimPaymentMethod(Payment_Method)
SELECT DISTINCT payment_method
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];
