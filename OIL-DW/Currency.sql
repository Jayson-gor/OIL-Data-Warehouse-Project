use [OIL-DW];

CREATE TABLE Currency (
    ID1 INT,         -- AutoNumber equivalent in SQL Server
    create_uid INT,                            -- Number
    id INT PRIMARY KEY,                                    -- Number
    decimal_places INT,                        -- Number
    write_uid INT,                             -- Number
    rounding DECIMAL(18, 6),                   -- Number (assuming it's a decimal number for rounding purposes)
    active BIT,                                -- Yes/No (using BIT in SQL Server for boolean values)
    create_date DATETIME,                      -- Date/Time
    write_date DATETIME,                       -- Date/Time
    currency_subunit_label NVARCHAR(255),      -- Short Text
    name NVARCHAR(255),                        -- Short Text
    full_name NVARCHAR(255),                   -- Short Text
    position NVARCHAR(255),                    -- Short Text
    currency_unit_label NVARCHAR(255)          -- Short Text
);
