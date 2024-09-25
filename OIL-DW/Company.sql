CREATE TABLE Company (
    currency_exchange_journal_id INT,           -- Number
    warehouse_id NVARCHAR(255),                 -- Short Text
    expense_journal_id NVARCHAR(255),           -- Short Text
    company_details NVARCHAR(255),              -- Short Text
    name NVARCHAR(255),                         -- Short Text
    id INT PRIMARY KEY,                         -- Number (assuming this is the primary key)
    partner_id INT,                             -- Number
    currency_id INT,                            -- Number
    active BIT                                  -- Yes/No (using BIT for boolean values)
);
