USE [OIL-DATAWAREHOUSE];
GO

-- Create the Accounts Dimension Table
CREATE TABLE Accounts_Dim (
    AccountKey INT IDENTITY(1,1) PRIMARY KEY,        -- Surrogate Key
    AccountID INT,                                   -- Account ID from Accounts
    MoveID INT,                                      -- Move ID from AccountMove
	MoveLineID INT,                                  -- Moveline ID
    JournalID INT,                                   -- Journal ID from AccountMove
    CompanyID INT,                                   -- Company ID from Accounts, Move_Line, and AccountMove
    CurrencyID INT,                                  -- Currency ID from Accounts and AccountMove
	ProductID INT,									-- from moveline
	ProductUoMID INT,								-- from moveline
    Name NVARCHAR(255),                              -- Account name from Accounts
    AccountType NVARCHAR(255),                       -- Account Type from Accounts
    Deprecated BIT,                                  -- Deprecated flag from Accounts
    CreateAsset BIT,                                 -- Create Asset flag from Accounts
    Debit DECIMAL(18, 6),                            -- Debit amount from Move_Line
    Credit DECIMAL(18, 6),                           -- Credit amount from Move_Line
    Balance DECIMAL(18, 6),                          -- Balance from Move_Line
    AmountCurrency DECIMAL(18, 6),                   -- Amount in currency from Move_Line
    AmountTotal DECIMAL(18, 6),                      -- Total amount from AccountMove
    AmountUntaxed DECIMAL(18, 6),                    -- Untaxed amount from AccountMove
    AmountTax DECIMAL(18, 6),                        -- Tax amount from AccountMove
    AmountResidual DECIMAL(18, 6),                   -- Residual amount from AccountMove
    CreateDate DATETIME,                             -- Create date from Accounts
    Date DATETIME,                                   -- Transaction date from Move_Line
    InvoiceDate DATETIME,                            -- Invoice date from AccountMove
    DueDate DATETIME,                                 -- Invoice due date from AccountMove
	Date_Move DATETIME,                              -- Account move date
	State NVARCHAR(255),                             -- From Account Move
	ModifiedDate DATETIME							-- from Moveline
);
GO


alter table Accounts_Dim
alter column CreateAsset NVARCHAR(255);

alter table Accounts_Dim
alter column Date NVARCHAR(255);

alter table Accounts_Dim
alter column Date_Move NVARCHAR(255);

