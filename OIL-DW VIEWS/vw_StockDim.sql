-- Create a view to combine data from Stock_Move, Stock_Move_Line, and Stock_Quant
USE [OIL-DW];
GO


CREATE VIEW vw_StockDim AS
SELECT 
    SM.id AS StockMoveID, 
    SML.id AS StockMoveLineID, 
    SQ.id AS StockQuantID, 
    SM.group_id AS GroupID, 
    SM.partner_id AS PartnerID, 
    COALESCE(SM.product_id, SML.product_id, SQ.product_id) AS ProductID, 
    COALESCE(SM.company_id, SML.company_id, SQ.company_id) AS CompanyID, 
    SM.product_uom AS ProductUOM, 
    COALESCE(SM.location_id, SML.location_id, SQ.location_id) AS LocationID, 
    COALESCE(SML.lot_id, SQ.lot_id) AS LotID, 
    SM.name AS Name, 
    SM.priority AS Priority, 
    COALESCE(SM.state, SML.state) AS State, 
    SM.origin AS Origin, 
    COALESCE(SM.reference, SML.reference) AS Reference, 
    SM.unit_factor AS UnitFactor, 
    SM.is_done AS IsDone, 
    COALESCE(SM.is_oil, SML.is_oil) AS IsOil, 
    COALESCE(SM.qty_at_20, SML.qty_at_20) AS QtyAt20, 
    SM.sale_line_id AS SaleLineID, 
    SM.price_unit AS PriceUnit, 
    COALESCE(SM.quantity_done, SML.qty_done) AS QuantityDone, 
    SM.product_uom_qty AS ProductUOMQty, 
    SM.product_qty AS ProductQty, 
    SM.warehouse_id AS WarehouseID, 
    SML.production_id AS ProductionID, 
    SML.quantity_at_15 AS QuantityAt15, 
    SML.qty_observed AS QtyObserved, 
	SML.qty_done AS qty_done,
    SML.reserved_uom_qty AS ReservedUOMQty, 
    COALESCE(SML.reserved_qty, SQ.reserved_quantity) AS ReservedQty, 
    SQ.inventory_quantity AS InventoryQuantity, 
    SQ.inventory_diff_quantity AS InventoryDiffQuantity, 
    SQ.inventory_quantity_set AS InventoryQuantitySet, 
    SQ.accounting_date AS AccountingDate, 
    COALESCE(SM.create_date, SML.create_date, SQ.create_date) AS CreateDate, 
    COALESCE(SM.write_date, SML.write_date, SQ.write_date) AS WriteDate, 
    SQ.in_date AS InDate, 
    SQ.inventory_date AS InventoryDate
FROM 
    [OIL-DW].[dbo].[Stock_Move] SM
LEFT JOIN 
    [OIL-DW].[dbo].[Stock_Move_Line] SML ON SM.id = SML.move_id
LEFT JOIN 
    [OIL-DW].[dbo].[Stock_Quant] SQ ON SM.product_id = SQ.product_id
                                     AND SM.location_id = SQ.location_id;
GO
