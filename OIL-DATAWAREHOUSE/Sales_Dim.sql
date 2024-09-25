USE [OIL-DATAWAREHOUSE];
GO

-- Creating the Sales Dimension Table
CREATE TABLE dim_Sales (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,           -- Surrogate Key
    SalesOrderID INT,                                 -- Sales Order ID from Sales_Order
    OrderLineID INT,                                  -- Order Line ID from Order_Line
    CompanyID INT,                                    -- Company ID from Sales_Order
    CurrencyID INT,                                   -- Currency ID from Sales_Order
    ValidityDate NVARCHAR(255),                            -- Validity Date from Sales_Order
    CurrencyRate DECIMAL(18,6),                       -- Currency Rate from Sales_Order
    CreateDate DATETIME,                              -- Create Date from Sales_Order
    DateOrder DATETIME,                               -- Date of Order from Sales_Order
    SalesOrderTemplateID NVARCHAR(255),               -- Sales Order Template ID from Sales_Order
    WarehouseID INT,                                  -- Warehouse ID from Sales_Order
    EffectiveDate DATETIME,                           -- Effective Date from Sales_Order
    DestinationID NVARCHAR(255),                      -- Destination ID from Sales_Order
    LoadingOrderQuantity DECIMAL(18, 2),              -- Loading Order Quantity from Sales_Order
    City NVARCHAR(255),                               -- City from Sales_Order
    DeliveryStatus NVARCHAR(255),                     -- Delivery Status from Sales_Order
    InvoiceStatus NVARCHAR(255),                      -- Invoice Status from Sales_Order
    Origin NVARCHAR(255),                             -- Origin from Sales_Order
    ClientOrderRef NVARCHAR(255),                     -- Client Order Reference from Sales_Order
    State NVARCHAR(255),                              -- Order State from Sales_Order
    OrderName NVARCHAR(255),                          -- Order Name from Sales_Order
    Discount DECIMAL(18, 2),                          -- Discount from Order_Line
    PriceTotal DECIMAL(18, 2),                        -- Price Total from Order_Line
    QtyInvoiced DECIMAL(18, 2),                       -- Qty Invoiced from Order_Line
    QtyDelivered DECIMAL(18, 2),                      -- Qty Delivered from Order_Line
    ProductID INT,                                    -- Product ID from Order_Line
    ProductUOM INT,                                   -- Product UOM from Order_Line
    IsExpense BIT,                                    -- Is Expense flag from Order_Line
    PriceUnit DECIMAL(18, 6),                         -- Price Unit from Order_Line
    QtyObserved DECIMAL(18, 2),                       -- Quantity Observed from Order_Line
    QtyAt20 DECIMAL(18, 2),                           -- Qty at 20 from Order_Line
    ProductName NVARCHAR(255),                        -- Product Name from Order_Line
    ProductCurrencyID INT,                            -- Product Currency ID from Order_Line
    ProductCompanyID INT                              -- Product Company ID from Order_Line
);
GO
