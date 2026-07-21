CREATE PROCEDURE Sp_dim_cleaned_products AS
BEGIN

DROP TABLE IF EXISTS [stg].[dbo].[dim_cleaned_products];

CREATE TABLE dbo.dim_cleaned_products
(
    ProductKey INT IDENTITY PRIMARY KEY,
    [product_name] VARCHAR(255),
    [Category] VARCHAR(100),
    [Sub_Category] VARCHAR(100),
    [supplier] VARCHAR(100),
    [sku] VARCHAR(100),
);

INSERT INTO dbo.dim_cleaned_products
(
[Product_name],
[Category],
[Sub_category],
[supplier],
[sku]
)
SELECT DISTINCT
[product_name],
COALESCE(category,'UNKNOWN') as [category],
[sub_category],
[supplier],
[sku]
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data]
;
end;
