CREATE TABLE dbo.DimProduct
(
    ProductKey INT IDENTITY PRIMARY KEY,
    [product_name] VARCHAR(255),
    [Category] VARCHAR(100),
    [Sub_Category] VARCHAR(100),
    [sku] VARCHAR(100),
);

INSERT INTO dbo.DimProduct
(
[Product_name],
[Category],
[Sub_category],
[sku]
)
SELECT DISTINCT
[product_name],
[category],
[sub_category],
[sku]
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];