USE [OIL-DATAWAREHOUSE];
GO


-- Create the Location Dimension Table
CREATE TABLE Location_Dim (
    LocationKey INT IDENTITY(1,1) PRIMARY KEY,    -- Surrogate Key
    LocationID INT,                              -- Location ID from Location
    WarehouseID INT,                             -- Warehouse ID from Warehouse
    LocationName NVARCHAR(255),                  -- Name from Location
    Usage NVARCHAR(255),                         -- Usage type from Location
    CompanyID INT,                               -- Company ID from both Location and Warehouse
    IsActive BIT,                                -- Active flag from Location
    IsScrapLocation BIT,                         -- Scrap Location flag from Location
    IsTransit BIT,                               -- Transit trucks flag from Location and Warehouse
    AllowNegativeStock BIT,                      -- Allow Negative Stock from Location
    WarehouseName NVARCHAR(255),                 -- Name from Warehouse
    WarehouseType NVARCHAR(255),                 -- Warehouse Type (in/out) from Warehouse
    CreateDate DATETIME                          -- Create Date from Location
  
);
GO
