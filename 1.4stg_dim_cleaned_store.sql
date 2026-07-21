DROP TABLE IF EXISTS [stg].[dbo].[dim_cleaned_store];

CREATE TABLE dbo.dim_cleaned_store
(
    StoreKey INT IDENTITY PRIMARY KEY,
    [store_name] VARCHAR(150),
    [store_city] VARCHAR(100),
    [store_province] VARCHAR(100),
    [store_region] VARCHAR(100),
    [store_manager] VARCHAR(100)
);

INSERT INTO dbo.dim_cleaned_store
(
[store_name],
[store_city],
[store_province],
[store_region],
[store_manager]
)
SELECT DISTINCT
[store_name],
[store_city],
[store_province],
[store_region],
[store_manager]
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];

select * from dim_cleaned_store