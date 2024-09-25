use [OIL-DW];

CREATE TABLE Stock_Move_Line (
    ID1 INT,          -- AutoNumber in MS Access equivalent in SQL Server
    result_package_id NVARCHAR(255),            -- Short Text
    description_picking NVARCHAR(255),          -- Short Text
    reference NVARCHAR(255),                    -- Short Text
    state NVARCHAR(255),                        -- Short Text
    workorder_id NVARCHAR(255),                 -- Short Text
    is_oil BIT,                                 -- Yes/No (Boolean)
    production_id NVARCHAR(255),                -- Short Text
    quantity_at_15 DECIMAL(18, 6),              -- Number (assuming these are numeric)
    qty_at_20 DECIMAL(18, 6),                   -- Number
    qty_observed DECIMAL(18, 6),                -- Number
    write_date DATETIME,                        -- Date/Time
    create_date DATETIME,                       -- Date/Time
    date DATETIME,                              -- Date/Time
    qty_done DECIMAL(18, 6),                    -- Number
    reserved_uom_qty DECIMAL(18, 6),            -- Number
    reserved_qty DECIMAL(18, 6),                -- Number
    write_uid INT,                              -- Number
    create_uid INT,                             -- Number
    location_dest_id INT,                       -- Number
    location_id INT,                            -- Number
    owner_id NVARCHAR(255),                     -- Short Text
    lot_id NVARCHAR(255),                       -- Short Text
    package_level_id NVARCHAR(255),             -- Short Text
    company_id INT,                             -- Number
    bond NVARCHAR(255),                         -- Short Text
    lot_name NVARCHAR(255),                     -- Short Text
    move_id NVARCHAR(255),                      -- Short Text
    package_id NVARCHAR(255),                   -- Short Text
    product_uom_id INT,                         -- Number
    product_category_name NVARCHAR(255),        -- Short Text
    product_id INT,                             -- Number
    picking_id INT,                             -- Number
    id INT PRIMARY KEY,                                     -- Number (if this is meant to store unique identifiers separately)
    country_code NVARCHAR(50)                   -- Short Text (assuming country code might not require full length)
);
