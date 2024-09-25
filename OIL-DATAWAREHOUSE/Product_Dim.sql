--Create the Product_Dim table

USE [OIL-DATAWAREHOUSE];
GO


CREATE TABLE Product_Dim (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,    -- Surrogate Key
    ProductID INT,                              -- Product_Product ID
    ProductTemplateID INT,                      -- Product_Template ID
    ProductCategoryID INT,                      -- Product_Category ID
    CategoryName NVARCHAR(255),                 -- Category Name
    Name NVARCHAR(255),                         -- Product name from Product_Template
    [is_oil] [nvarchar](255) NULL,              -- Product weight from Product_Product
	[purchase_method] [nvarchar](255) NULL,     -- from product template
	[uom_id] [int] NULL,
    Volume DECIMAL(18, 6),                      -- Product volume from Product_Product
    ListPrice DECIMAL(18, 2),                   -- Product list price from Product_Template
    ProductType NVARCHAR(255),                  -- Product type from Product_Template
    ProductCategory NVARCHAR(255),              -- Product category name from Product_Category
    Active BIT,                                 -- Active flag from Product_Product
    CreateDate DATETIME,                        -- Product creation date
    WriteDate DATETIME                          -- Product last update date
);

