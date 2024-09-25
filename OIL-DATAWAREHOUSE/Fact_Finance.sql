USE [OIL-DATAWAREHOUSE];
GO

DROP TABLE IF EXISTS Fact_Finance;
GO

CREATE TABLE Fact_Finance (
    FinanceFactKey INT IDENTITY(1,1) PRIMARY KEY,     -- Surrogate Key for the Fact Table
    DateKey INT,                                      -- Foreign Key to Date Dimension
    CompanyKey INT,                                   -- Foreign Key to Company Dimension
    AccountKey INT,                                   -- Foreign Key to Accounts Dimension
    CurrencyKey INT,                                  -- Foreign Key to Currency Dimension
    ProductKey INT,                                   -- Foreign Key to Product Dimension
    JournalKey INT,                                   -- Foreign Key to Journal Dimension

    -- Additional column for Account Type (income, expense, etc.)
    AccountType NVARCHAR(255),                         -- Account Type from Accounts (e.g., income, expense)
	CurrencyID INT,
	JournalName NVARCHAR(255),                          -- Journal name

    
    
    -- Other financial information
    Debit DECIMAL(18, 2),                             -- Debit Amount from Accounts
    Credit DECIMAL(18, 2),                            -- Credit Amount from Accounts
    Balance DECIMAL(18, 2),                           -- Balance from Accounts
    AmountCurrency DECIMAL(18, 2),                    -- Amount in Transaction Currency
    AmountTotal DECIMAL(18, 2),                       -- Total Amount from Accounts
    State NVARCHAR(255),                               -- Transaction State
    Date_Move DATETIME,                               -- Date from Accounts move
	LatestRateDate DATETIME,
	LatestRate DECIMAL(18,6),                    -- Latest Currency Exchange Rate

    -- Foreign Key constraints
    FOREIGN KEY (DateKey) REFERENCES date_dim(date_key),
    FOREIGN KEY (CompanyKey) REFERENCES Company_dim(company_key),
    FOREIGN KEY (AccountKey) REFERENCES Accounts_Dim(AccountKey),
    FOREIGN KEY (CurrencyKey) REFERENCES Currency_Dim(CurrencyKey),
    FOREIGN KEY (ProductKey) REFERENCES Product_Dim(ProductKey),
    FOREIGN KEY (JournalKey) REFERENCES Journal_Dim(JournalKey)
);
