CREATE TABLE UoM (
    Uom_ID INT PRIMARY KEY,                    -- Number (Primary Key for the UoM table)
    Uom NVARCHAR(255),                         -- Short Text (Name or symbol for the unit of measure)
    Uom_Unit_of_Measure NVARCHAR(255),         -- Short Text (Full name or description of the unit)
    Uom_Type NVARCHAR(255),                    -- Short Text (Type or classification of the unit)
    Uom_Category NVARCHAR(255)                 -- Short Text (Category to which this unit belongs)
);
