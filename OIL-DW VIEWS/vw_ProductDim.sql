-- Create a view for Product Dimension data
USE [OIL-DW];
GO

CREATE VIEW vw_ProductDim AS
SELECT 
    PP.id AS ProductID, 
    PT.id AS ProductTemplateID, 
    PC.id AS ProductCategoryID, 
    PC.name AS CategoryName,               -- Product Category name from Product_Category
    PT.name AS Name,                       -- Product name from Product_Template
    PT.is_oil,                             -- Is oil column from Product_Template
    PT.purchase_method,                    -- Purchase method from Product_Template
    PT.uom_id,                             -- Unit of measure from Product_Template
    PP.volume,                             -- Volume from Product_Product
    PT.list_price AS ListPrice,            -- List price from Product_Template
    PT.type AS ProductType,                -- Product type from Product_Template
    PC.name AS ProductCategory,            -- Product category name from Product_Category
    PP.active AS Active,                   -- Active flag from Product_Product
    PP.create_date AS CreateDate,          -- Create date from Product_Product
    PP.write_date AS WriteDate             -- Last update date from Product_Product
FROM 
    [dbo].[Product_Product] PP
JOIN 
    [dbo].[Product_Template] PT ON PP.product_tmpl_id = PT.id
JOIN 
    [dbo].[Product_Category] PC ON PT.categ_id = PC.id;
GO
