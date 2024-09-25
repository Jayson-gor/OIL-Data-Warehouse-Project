-- Create a view to combine UoM, UoM_UoM, and Uom_Category
USE [OIL-DW];
GO


CREATE VIEW vw_UOMDim AS
SELECT 
    UoM.Uom_ID AS UomID, 
    UoM_UoM.uom_type AS UomType, 
    UoM.Uom AS Uom, 
    UoM.Uom_Unit_of_Measure AS UomUnitOfMeasure, 
    UoM_UoM.category_id AS UomCategoryID, 
    Uom_Category.name AS UomCategory, 
    UoM_UoM.description AS Description, 
    UoM_UoM.create_date AS CreateDate, 
    UoM_UoM.write_date AS WriteDate
FROM 
    [OIL-DW].[dbo].[UoM] UoM
JOIN 
    [OIL-DW].[dbo].[UoM_UoM] UoM_UoM ON UoM.Uom_ID = UoM_UoM.id
JOIN 
    [OIL-DW].[dbo].[Uom_Category] Uom_Category ON UoM_UoM.category_id = Uom_Category.id;
GO
