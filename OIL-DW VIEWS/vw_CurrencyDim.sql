USE [OIL-DW];
GO

-- Create a view to combine Currency and the Currency_Rate
CREATE OR ALTER VIEW vw_CurrencyDim AS
SELECT 
    c.id AS CurrencyID, 
    c.name AS CurrencyName, 
    c.full_name AS FullName, 
    c.decimal_places AS DecimalPlaces, 
    c.currency_unit_label AS CurrencyUnitLabel, 
    c.currency_subunit_label AS CurrencySubunitLabel, 
    c.position AS Position, 
    c.rounding AS Rounding, 
    c.active AS Active, 
    cr.rate AS LatestRate,                           -- Use the rate from Currency_Rate
    PARSE(cr.name AS DATE USING 'en-US') AS LatestRateDate, -- Parse date format,    -- Convert the verbose date string to a proper DATE format
    c.create_date AS CreateDate, 
    c.write_date AS WriteDate
FROM 
    [OIL-DW].[dbo].[Currency] c
LEFT JOIN 
    [OIL-DW].[dbo].[Currency_Rate] cr 
    ON cr.currency_id = c.id;                        -- Direct join on currency_id
GO
