CREATE TABLE dbo.dim_cleaned_paymentmethod
(
    PaymentMethodKey INT IDENTITY PRIMARY KEY,
    Payment_Method VARCHAR(50)
);
INSERT INTO dbo.dim_cleaned_paymentmethod(Payment_Method)
SELECT DISTINCT payment_method
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];

select * from dim_cleaned_paymentmethod
