USE [OIL-DATAWAREHOUSE];
GO

-- Create the Fact_Stock Table
CREATE TABLE Fact_Stock (
    StockFactKey INT IDENTITY(1,1) PRIMARY KEY,    -- Surrogate Key for Fact table
    DateKey INT NOT NULL,                         -- Foreign Key to Date Dimension
    ProductKey INT NOT NULL,                      -- Foreign Key to Product Dimension
    CompanyKey INT NOT NULL,                      -- Foreign Key to Company Dimension
    UOMKey INT NOT NULL,                          -- Foreign Key to UOM Dimension
    StockKey INT NOT NULL,                        -- Foreign Key to Stock Dimension (dim_Stock)
    
    -- Measures
    QuantityDone DECIMAL(18, 6),                  -- Quantity moved in the stock transaction
    ReservedUOMQty DECIMAL(18, 6),                -- Reserved quantity in UOM
    ReservedQty DECIMAL(18, 6),                   -- Reserved quantity
    InventoryQuantity DECIMAL(18, 6),             -- Inventory quantity
    InventoryDiffQuantity DECIMAL(18, 6),         -- Inventory difference quantity
    Volume DECIMAL(18, 6),                        -- Volume calculated in SSIS
    PriceUnit DECIMAL(18, 6),                     -- Price per unit
    Date_Moveline DATETIME,
    IsOil BIT,                                    -- Whether the product is oil
	State NVARCHAR(255),                             -- State from Stock_Move and Stock_Move_Line
	Origin NVARCHAR(255),                           -- Origin from Stock_Move
    
    -- Foreign Key Constraints
    FOREIGN KEY (DateKey) REFERENCES date_dim(date_key),
    FOREIGN KEY (ProductKey) REFERENCES Product_Dim(ProductKey),
    FOREIGN KEY (CompanyKey) REFERENCES Company_dim(company_key),
    FOREIGN KEY (UOMKey) REFERENCES dim_UOM(UOMKey),
    FOREIGN KEY (StockKey) REFERENCES dim_Stock(StockKey)
);
