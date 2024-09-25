-- Create a view to combine Location and Warehouse for Location_Dim

USE [OIL-DW];
GO

CREATE VIEW vw_LocationDim AS
SELECT 
    L.location_id AS LocationID, 
    W.id AS WarehouseID, 
    L.name AS LocationName, 
    L.usage AS Usage, 
    COALESCE(L.company_id, W.company_id) AS CompanyID, 
    L.active AS IsActive, 
    L.scrap_location AS IsScrapLocation, 
    COALESCE(L.is_transit_trucks, W.is_transit_trucks) AS IsTransit, 
    L.allow_negative_stock AS AllowNegativeStock, 
    W.code AS WarehouseCode, 
    COALESCE(W.in_type_id, W.out_type_id) AS WarehouseType,
	W.name AS WarehouseName,
	W.create_date AS CreateDate

FROM 
    [OIL-DW].[dbo].[Location] L
LEFT JOIN 
    [OIL-DW].[dbo].[Warehouse] W ON L.warehouse_id = W.id;
GO
