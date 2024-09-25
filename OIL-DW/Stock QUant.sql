USE [OIL-DW];
GO

CREATE TABLE Stock_Quant (
    lot_id INT,                              -- Number
    accounting_date DATETIME,                -- Date/Time
    write_date DATETIME,                     -- Date/Time
    create_date DATETIME,                    -- Date/Time
    in_date DATETIME,                        -- Date/Time
    inventory_quantity_set BIT,              -- Yes/No (using BIT for boolean values)
    inventory_diff_quantity DECIMAL(18, 6),  -- Number
    inventory_quantity DECIMAL(18, 6),       -- Number
    reserved_quantity DECIMAL(18, 6),        -- Number
    quantity DECIMAL(18, 6),                 -- Number
    inventory_date DATETIME,                 -- Date/Time
    write_uid INT,                           -- Number
    create_uid INT,                          -- Number
    user_id INT,                             -- Number
    owner_id INT,                            -- Number
    package_id NVARCHAR(255),                -- Short Text
    storage_category_id INT,                 -- Number
    location_id INT,                         -- Number
    company_id INT,                          -- Number
    product_id INT,                          -- Number
    id INT PRIMARY KEY                       -- Number, Primary Key
);
