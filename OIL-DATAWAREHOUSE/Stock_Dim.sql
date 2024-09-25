USE [OIL-DATAWAREHOUSE];
GO

-- Creating the Stock Dimension Table
CREATE TABLE dim_Stock (
    StockKey INT IDENTITY(1,1) PRIMARY KEY,         -- Surrogate Key
    StockMoveID INT,                                -- Stock Move ID from Stock_Move
    StockMoveLineID INT,                            -- Stock Move Line ID from Stock_Move_Line
    StockQuantID INT,                               -- Stock Quant ID from Stock_Quant
    GroupID INT,                                    -- Group ID from Stock_Move
    PartnerID INT,                                  -- Partner ID from Stock_Move
    ProductID INT,                                  -- Product ID from Stock_Move, Stock_Move_Line, and Stock_Quant
    CompanyID INT,                                  -- Company ID from Stock_Move, Stock_Move_Line, and Stock_Quant
    ProductUOM INT,                                 -- Unit of Measure from Stock_Move
    LocationID INT,                                 -- Location ID from Stock_Move, Stock_Move_Line, and Stock_Quant
    LotID INT,                                      -- Lot ID from Stock_Move_Line and Stock_Quant
    Name NVARCHAR(255),                             -- Name from Stock_Move
    Priority INT,                                   -- Priority from Stock_Move
    State NVARCHAR(255),                             -- State from Stock_Move and Stock_Move_Line
    Origin NVARCHAR(255),                           -- Origin from Stock_Move
    Reference NVARCHAR(255),                        -- Reference from Stock_Move and Stock_Move_Line
    UnitFactor DECIMAL(18, 6),                      -- Unit Factor from Stock_Move
    IsDone BIT,                                     -- Is Done flag from Stock_Move
    IsOil BIT,                                      -- Is Oil flag from Stock_Move and Stock_Move_Line
    QtyAt20 DECIMAL(18, 2),                         -- Qty at 20 from Stock_Move and Stock_Move_Line
	qty_done DECIMAL(18, 2),                       -- Qty at done from Stock_Move_Line
    SaleLineID INT,                                 -- Sale Line ID from Stock_Move
    PriceUnit DECIMAL(18, 6),                       -- Price Unit from Stock_Move
    QuantityDone DECIMAL(18, 6),                    -- Quantity Done from Stock_Move and Stock_Move_Line
    ProductUOMQty DECIMAL(18, 6),                   -- Product UOM Quantity from Stock_Move
    ProductQty DECIMAL(18, 6),                      -- Product Quantity from Stock_Move
    WarehouseID INT,                                -- Warehouse ID from Stock_Move
    ProductionID INT,                               -- Production ID from Stock_Move_Line
    QuantityAt15 DECIMAL(18, 6),                    -- Quantity at 15 from Stock_Move_Line
    QtyObserved DECIMAL(18, 6),                     -- Qty Observed from Stock_Move_Line
    ReservedUOMQty DECIMAL(18, 6),                  -- Reserved UOM Quantity from Stock_Move_Line
    ReservedQty DECIMAL(18, 6),                     -- Reserved Quantity from Stock_Move_Line and Stock_Quant
    InventoryQuantity DECIMAL(18, 6),               -- Inventory Quantity from Stock_Quant
    InventoryDiffQuantity DECIMAL(18, 6),           -- Inventory Difference Quantity from Stock_Quant
    InventoryQuantitySet BIT,                       -- Inventory Quantity Set from Stock_Quant
    AccountingDate DATETIME,                        -- Accounting Date from Stock_Quant
    CreateDate DATETIME,                            -- Create Date from Stock_Move, Stock_Move_Line, and Stock_Quant
    [product_category_name] NVARCHAR(255),          -- From stock move line 
    InDate DATETIME,                                -- In Date from Stock_Quant
    InventoryDate DATETIME                          -- Inventory Date from Stock_Quant
);
GO

