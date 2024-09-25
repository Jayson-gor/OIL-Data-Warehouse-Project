SELECT
    -- DateKey from date_dim
    d.date_key AS DateKey,

    -- CompanyKey from company_dim
    c.company_key AS CompanyKey,

    -- AccountKey from accounts_dim
    a.AccountKey AS AccountKey,

    -- CurrencyKey from currency_dim
    cr.CurrencyKey AS CurrencyKey,

    -- ProductKey from product_dim
    p.ProductKey AS ProductKey,

    -- JournalKey and JournalName from journal_dim
    j.JournalKey AS JournalKey,
    j.Name AS JournalName,

    -- Account Type and CurrencyID from accounts_dim
    a.AccountType AS AccountType,
    a.CurrencyID AS CurrencyID,

    -- Financial metrics from accounts_dim
    a.Debit,
    a.Credit,
    a.Balance,
    a.AmountCurrency,
    a.AmountTotal,
    a.State,
    a.Date_Move,
	cr.LatestRate,
	cr.LatestRateDate

FROM 
    Accounts_Dim a

-- Join with date_dim on the Date_Move column
JOIN 
    date_dim d ON CONVERT(DATE, a.Date_Move) = d.full_date

-- Join with company_dim on CompanyID
JOIN 
    Company_dim c ON a.CompanyID = c.id

-- Join with currency_dim on CurrencyID
JOIN 
    Currency_Dim cr ON a.CurrencyID = cr.CurrencyID

-- Join with journal_dim on JournalID and include Journal Name
JOIN 
    Journal_Dim j ON a.JournalID = j.JournalID

-- Left Join with product_dim to allow NULL ProductKey, but filter out NULLs later
LEFT JOIN 
    Product_Dim p ON a.ProductID = p.ProductID

-- Filter to include posted transactions, relevant journal names, account types, and non-null products
WHERE 
    a.State = 'posted'
    AND p.ProductKey IS NOT NULL
    AND j.Name = 'Customer Invoices'
    AND a.AccountType IN ('income', 'expense_depreciation', 'expense', 'expense_direct_cost')
    AND a.Date_Move >= '2022-01-01';  -- Example date range filter
