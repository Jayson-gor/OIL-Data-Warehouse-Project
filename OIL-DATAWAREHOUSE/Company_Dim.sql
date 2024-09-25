-- Create the Company table
USE [OIL-DATAWAREHOUSE];
GO



CREATE TABLE Company_dim
(
    company_key INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [currency_exchange_journal_id] [int] NULL,
	[warehouse_id] [nvarchar](255) NULL,
	[expense_journal_id] [nvarchar](255) NULL,
	[company_details] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[id] [int] NOT NULL,
	[partner_id] [int] NULL,
	[currency_id] [int] NULL,
	[active] [bit] NULL,
	[EndDate] DATETIME NULL,           -- New for SCD Type 2, NULL for the current record
	[ModifiedDate] DATETIME NULL
);