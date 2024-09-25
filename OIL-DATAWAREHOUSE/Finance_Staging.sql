use [OIL-DATAWAREHOUSE];

CREATE TABLE Finance_Staging (
    DateKey INT,
    CompanyKey INT,
    AccountKey INT,
    CurrencyKey INT,
    ProductKey INT,
    JournalKey INT,
    AccountType NVARCHAR(255),
    CurrencyID INT,
    JournalName NVARCHAR(255),
    Debit DECIMAL(18, 2),
    Credit DECIMAL(18, 2),
    Balance DECIMAL(18, 2),
    AmountCurrency DECIMAL(18, 2),
    AmountTotal DECIMAL(18, 2),
    State NVARCHAR(255),
    Date_Move DATETIME,
    LatestRate DECIMAL(18, 6),
    LatestRateDate DATETIME
);
