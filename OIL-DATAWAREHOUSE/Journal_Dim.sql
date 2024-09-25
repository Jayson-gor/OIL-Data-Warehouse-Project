-- Create Journal_Dim Table
USE [OIL-DATAWAREHOUSE];
GO


CREATE TABLE Journal_Dim (
    JournalKey INT IDENTITY(1,1) PRIMARY KEY,    -- Surrogate Key
    JournalID INT,                               -- Original Journal ID
    CreateDate DATETIME,                         -- Journal creation date
    Name NVARCHAR(255),                          -- Journal name
    PaymentSequence NVARCHAR(255),               -- Payment sequence
    InvoiceReferenceType NVARCHAR(255),          -- Invoice reference type
    JournalType NVARCHAR(50),                    -- Journal type (e.g., sale, purchase, etc.)
    Code NVARCHAR(255),                           -- Journal code
    Active BIT,                                  -- Active status (Yes/No)
    CurrencyID INT,                              -- Currency foreign key reference
    Sequence INT,                                -- Sequence number for the journal
    WriteDate DATETIME,                          -- Last write date
    CompanyID INT,                               -- Company foreign key reference
    BankAccountID INT                            -- Bank account foreign key reference
);