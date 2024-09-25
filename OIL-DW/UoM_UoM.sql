CREATE TABLE UoM_UoM (
    ID1 INT PRIMARY KEY,          -- AutoNumber equivalent in SQL Server
    uom_type NVARCHAR(255),                     -- Short Text
    id INT,                                     -- Number
    category_id INT,                            -- Number
    write_uid INT,                              -- Number
    create_uid INT,                             -- Number
    name NVARCHAR(255),                         -- Short Text
    factor DECIMAL(18, 6),                      -- Number (assuming a decimal value for factor)
    rounding DECIMAL(18, 6),                    -- Number (assuming a decimal value for rounding)
    active BIT,                                 -- Yes/No (using BIT for boolean values)
    create_date DATETIME,                       -- Date/Time
    write_date DATETIME,                        -- Date/Time
    description NVARCHAR(255)                   -- Short Text
);
