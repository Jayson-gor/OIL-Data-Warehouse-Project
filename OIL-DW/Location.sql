use [OIL-DW];

CREATE TABLE Location (
    ID1 INT PRIMARY KEY,              -- AutoNumber equivalent in SQL Server
    is_transit_trucks NVARCHAR(255),                -- Short Text
    return_location NVARCHAR(255),                  -- Short Text
    scrap_location BIT,                             -- Yes/No (using BIT in SQL Server for boolean values)
    active BIT,                                     -- Yes/No
    removal_strategy_id NVARCHAR(255),              -- Short Text
    cyclic_inventory_frequency INT,                 -- Number
    warehouse_id INT,                               -- Number
    storage_category_id INT,                        -- Number
    comment NVARCHAR(255),                          -- Short Text
    valuation_out_account_id NVARCHAR(255),         -- Short Text
    usage NVARCHAR(255),                            -- Short Text
    location_id INT,                                -- Number
    next_inventory_date NVARCHAR(255),              -- Short Text
    last_inventory_date NVARCHAR(255),              -- Short Text
    parent_path NVARCHAR(255),                      -- Short Text
    posx INT,                                       -- Number
    posy INT,                                       -- Number
    posz INT,                                       -- Number
    write_uid INT,                                  -- Number
    create_uid INT,                                 -- Number
    company_id INT,                                 -- Number
    barcode NVARCHAR(255),                          -- Short Text
    valuation_in_account_id NVARCHAR(255),          -- Short Text
    create_date DATETIME,                           -- Date/Time
    is_batching_location BIT,                       -- Yes/No
    truck_offloading NVARCHAR(255),                 -- Short Text
    write_date DATETIME,                            -- Date/Time
    name NVARCHAR(255),                             -- Short Text
    allow_negative_stock NVARCHAR(255),             -- Short Text
    replenish_location NVARCHAR(255),               -- Short Text
    complete_name NVARCHAR(255),                    -- Short Text
    batch_type_id NVARCHAR(255)                     -- Short Text
);
