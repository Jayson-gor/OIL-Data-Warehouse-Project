-- Create the Company table
USE [OIL-DATAWAREHOUSE];
GO



CREATE TABLE Currency_Dim (
    CurrencyKey INT IDENTITY(1,1) PRIMARY KEY,   -- Surrogate Key
    CurrencyID INT NOT NULL,                     -- Original Currency ID
    CurrencyName NVARCHAR(255),                  -- Currency Name (Short Name)
    FullName NVARCHAR(255),                      -- Full Name
    DecimalPlaces INT,                           -- Number of Decimal Places
    CurrencyUnitLabel NVARCHAR(255),             -- Unit Label (e.g., USD, EUR)
    CurrencySubunitLabel NVARCHAR(255),          -- Subunit Label (e.g., Cents)
    Position NVARCHAR(255),                      -- Currency Position (before/after amount)
    Rounding DECIMAL(18,6),                      -- Rounding Value
    Active BIT,                                  -- Active Status (Yes/No)
    LatestRate DECIMAL(18,6),                    -- Latest Currency Exchange Rate
    LatestRateDate DATETIME                     -- Date of the Latest Rate

);