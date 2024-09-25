SELECT TOP (1000) [TableName]
      ,[LastLoadTime]
  FROM [OIL-DATAWAREHOUSE].[dbo].[LoadControlTable]


  -- Insert default LastLoadTime for all dimensions and fact tables
INSERT INTO LoadControlTable (TableName, LastLoadTime)
VALUES 
    ('Finanace_Staging', '2024-01-01'),           -- Default for Fact_Finance
    ('Fact_Stock', '2024-01-01'),             -- Default for Fact_Stock
    ('Fact_Collection', '2024-01-01'),       -- Default for Fact_Collections (assuming this table exists)
    ('dim_Sales', '2024-01-01'),              -- Default for dim_Sales
    ('dim_Stock', '2024-01-01'),              -- Default for dim_Stock
    ('Product_Dim', '2024-01-01'),            -- Default for dim_Product
    ('Company_dim', '2024-01-01'),            -- Default for dim_Company
    ('dim_Date', '2024-01-01'),               -- Default for dim_Date
    ('Journal_Dim', '2024-01-01'),            -- Default for dim_Journal
    ('Currency_Dim', '2024-01-01'),           -- Default for dim_Currency
    ('Location_Dim', '2024-01-01'),           -- Default for dim_Location
	('Accounts_Dim', '2024-01-01'),           -- Default for dim_Location
	('dim_UOM', '2024-01-01');           -- Default for dim_Location


