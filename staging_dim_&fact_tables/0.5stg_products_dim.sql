DROP TABLE IF EXISTS [stg].[dbo].[dim_products];

CREATE TABLE dbo.[dim_products]
(
    ProductKey INT IDENTITY PRIMARY KEY,
    [product_name] VARCHAR(255),
    [Category] VARCHAR(100),
    [Sub_Category] VARCHAR(100),
    [supplier] VARCHAR(100),
    [sku] VARCHAR(100),
);

INSERT INTO dbo.[dim_products]
(
[Product_name],
[Category],
[Sub_category],
[supplier],
[sku]
)
SELECT DISTINCT
[product_name],
[category],
[sub_category],
[supplier],
[sku]
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];