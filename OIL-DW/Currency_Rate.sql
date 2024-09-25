use [OIL-DW];

CREATE TABLE Currency_Rate (
    ID1 INT,      -- AutoNumber equivalent in SQL Server
    id INT PRIMARY KEY,                                 -- Number
    create_uid INT,                         -- Number
    write_uid INT,                          -- Number
    name NVARCHAR(255),                     -- Short Text
    rate DECIMAL(18, 6),                    -- Number (assuming it's a decimal for currency rate)
    create_date DATETIME,                   -- Date/Time
    write_date DATETIME,                    -- Date/Time
    company_id INT,                         -- Number
    currency_id INT                         -- Number
);
