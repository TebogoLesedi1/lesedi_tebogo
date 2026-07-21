-- dim  customer ---
select [customer_first_name]
	,[customer_last_name]
	,[customer_email]
	,[customer_phone]
	,[customer_city]
	,[customer_province]
	,[customer_loyalty_tier]
	,[customer_since]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

--dim store--- 

select [store_name]
	,[store_city]
	,[store_province]
	,[store_region]
    ,[store_manager]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

-- dim_cashier
select [cashier_name]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

--dim payment method--
select [payment_method]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

--dim product--
select [product_name]
,[category]
,[sub_category]
,[sku]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

--dim supplier --
select [supplier]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

-- dim date --
select [transaction_date]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]

--fact table --[qty]
select [unit_price]
	  ,[cost_price]
	  ,[qty]
	  ,[line_amount]
	  ,[stock_on_hand]
	  ,[reorder_threshold]
from [stg].[dbo].[1782578019743_BrightLearn_Raw_Data]
