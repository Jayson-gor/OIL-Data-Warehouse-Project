-- Create a view to combine Sales_Order and Order_Line for ETL
USE [OIL-DW];
GO


CREATE VIEW vw_SalesDim AS
SELECT 
    SO.id AS SalesOrderID,
    OL.id AS OrderLineID,
    SO.company_id AS CompanyID,
    SO.partner_id AS PartnerID,
    SO.currency_id AS CurrencyID,
    SO.validity_date AS ValidityDate,
    SO.currency_rate AS CurrencyRate,
    SO.create_date AS CreateDate,
    SO.date_order AS DateOrder,
    SO.sale_order_template_id AS SalesOrderTemplateID,
    SO.warehouse_id AS WarehouseID,
    SO.effective_date AS EffectiveDate,
    SO.destination_id AS DestinationID,
    SO.loading_order_quantity AS LoadingOrderQuantity,
    SO.amount_unpaid AS AmountUnpaid,
    SO.city AS City,
    SO.delivery_status AS DeliveryStatus,
    SO.invoice_status AS InvoiceStatus,
    SO.origin AS Origin,
    SO.client_order_ref AS ClientOrderRef,
    SO.state AS State,
    SO.name AS OrderName,
    OL.discount AS Discount,
    OL.price_reduce AS PriceReduce,
    OL.price_subtotal AS PriceSubtotal,
    OL.price_total AS PriceTotal,
    OL.qty_delivered_method AS QtyDeliveredMethod,
    OL.qty_invoiced AS QtyInvoiced,
    OL.qty_to_invoice AS QtyToInvoice,
    OL.qty_delivered AS QtyDelivered,
    OL.salesman_id AS SalesmanID,
    OL.product_id AS ProductID,
    OL.product_uom AS ProductUOM,
    OL.product_packaging_id AS ProductPackagingID,
    OL.untaxed_amount_invoiced AS UntaxedAmountInvoiced,
    OL.untaxed_amount_to_invoice AS UntaxedAmountToInvoice,
    OL.is_downpayment AS IsDownpayment,
    OL.is_expense AS IsExpense,
    OL.price_unit AS PriceUnit,
    OL.price_tax AS PriceTax,
    OL.customer_lead AS CustomerLead,
    OL.qty_observed AS QtyObserved,
    OL.qty_at_20 AS QtyAt20,
    OL.project_id AS ProjectID,
    OL.task_id AS TaskID,
    OL.sequence AS Sequence,
    OL.display_type AS DisplayType,
    OL.name AS ProductName,
    OL.state AS LineState,
    OL.currency_id AS ProductCurrencyID,
    OL.company_id AS ProductCompanyID
FROM 
    dbo.Sales_Order SO
JOIN 
    dbo.Order_Line OL ON SO.id = OL.order_id;
GO
