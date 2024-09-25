USE [OIL-DW];
GO


-- Create a view to combine Accounts, Move_Line, and AccountMove
CREATE VIEW vw_AccountsDim AS
SELECT 
    A.id AS AccountID, 
    AM.id AS MoveID, 
	ML.id AS MoveLineID,
    AM.journal_id AS JournalID, 
    COALESCE(A.company_id, ML.company_id, AM.company_id) AS CompanyID, 
    COALESCE(A.currency_id, AM.currency_id) AS CurrencyID, 
    A.name AS Name, 
    A.account_type AS AccountType, 
    A.deprecated AS Deprecated, 
    A.create_asset AS CreateAsset,
	ML.product_id AS ProductID,
	ML.product_uom_id AS ProductUoMID,
    ML.debit AS Debit, 
    ML.credit AS Credit, 
    ML.balance AS Balance, 
    ML.amount_currency AS AmountCurrency, 
    AM.amount_total AS AmountTotal, 
    AM.amount_untaxed AS AmountUntaxed, 
    AM.amount_tax AS AmountTax, 
    AM.amount_residual AS AmountResidual, 
    A.create_date AS CreateDate, 
    ML.date AS Date, 
    AM.invoice_date AS InvoiceDate, 
    AM.invoice_date_due AS DueDate,
	AM.date AS Date_Move,
	AM.state AS State
FROM 
    [OIL-DW].[dbo].[Accounts] A
LEFT JOIN 
    [OIL-DW].[dbo].[Move_Line] ML ON A.id = ML.account_id
LEFT JOIN 
    [OIL-DW].[dbo].[AccountMove] AM ON ML.move_id = AM.id;
GO
