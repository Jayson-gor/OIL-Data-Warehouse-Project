USE [OIL-DATAWAREHOUSE];
GO

-- Drop the table if it already exists
DROP TABLE IF EXISTS Fact_Collection;
GO

-- Create Fact_Collection Table
CREATE TABLE Fact_Collection (
    CollectionFactKey INT IDENTITY(1,1) PRIMARY KEY,     -- Surrogate Key for the Fact Table

    -- Foreign Keys to Dimension Tables
    DateKey INT,                                      -- Foreign Key to Date Dimension
    SalesKey INT,                                     -- Foreign Key to Sales Dimension
    CompanyKey INT,                                   -- Foreign Key to Company Dimension
    ProductKey INT,                                   -- Foreign Key to Product Dimension
    LocationKey INT,                                  -- Foreign Key to Location Dimension

    -- Collection metrics
    CurrencyRate DECIMAL(18, 6),                      -- Currency Exchange Rate
    DateOrder DATETIME,                               -- Date of Order
    WarehouseID INT,                                  -- Warehouse ID
    DeliveryStatus NVARCHAR(255),                     -- Delivery Status
    Origin NVARCHAR(255),                             -- Origin of the Order
    State NVARCHAR(255),                              -- State of the Order
    Discount DECIMAL(18, 2),                          -- Discount Applied
    PriceTotal DECIMAL(18, 2),                        -- Total Price
    QtyInvoiced DECIMAL(18, 6),                       -- Quantity Invoiced
    QtyDelivered DECIMAL(18, 6),                      -- Quantity Delivered
    ProductUOM NVARCHAR(255),                         -- Unit of Measure for Product
    PriceUnit DECIMAL(18, 6),                         -- Unit Price of Product
    QtyObserved DECIMAL(18, 6),                       -- Quantity Observed
    QtyAt20 DECIMAL(18, 6),                           -- Quantity at 20 degrees (for oil-related measurements)

    -- Foreign Key Constraints
    FOREIGN KEY (DateKey) REFERENCES date_dim(date_key),
    FOREIGN KEY (SalesKey) REFERENCES dim_Sales(SalesKey),
    FOREIGN KEY (CompanyKey) REFERENCES Company_dim(company_key),
    FOREIGN KEY (ProductKey) REFERENCES Product_Dim(ProductKey),
    FOREIGN KEY (LocationKey) REFERENCES Location_Dim(LocationKey)
);
