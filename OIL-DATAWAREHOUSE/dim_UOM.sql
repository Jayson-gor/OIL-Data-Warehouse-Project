USE [OIL-DATAWAREHOUSE];
GO

-- Create the Unit of Measure (UOM) Dimension Table
CREATE TABLE dim_UOM (
    UOMKey INT IDENTITY(1,1) PRIMARY KEY,         -- Surrogate Key
    UomID INT,                                    -- UOM ID from UoM
    UomType NVARCHAR(255),                        -- UOM Type from UoM_UoM
    Uom NVARCHAR(255),                            -- UOM Name from UoM
    UomUnitOfMeasure NVARCHAR(255),               -- UOM Unit of Measure from UoM
    UomCategoryID INT,                            -- Category ID from UoM_UoM
    UomCategory NVARCHAR(255),                    -- UOM Category Name from Uom_Category
    Description NVARCHAR(255),                    -- Description from UoM_UoM
    CreateDate DATETIME                         -- Create Date from UoM_UoM
);
GO
