use [OIL-DW];

CREATE TABLE Stock_Move (
	ID1 INT,
    id INT PRIMARY KEY,          -- AutoNumber equivalent in SQL Server and primary key
    group_id INT,                              -- Number
    picking_id INT,                            -- Number
    partner_id INT,                            -- Number
    product_id INT,                            -- Number
    company_id INT,                            -- Number
    product_uom INT,                           -- Number
    location_id INT,                           -- Number
    location_dest_id INT,                      -- Number
    name NVARCHAR(255),                        -- Short Text
    priority INT,                              -- Number
    state NVARCHAR(255),                       -- Short Text
    manual_consumption NVARCHAR(255),          -- Short Text
    origin NVARCHAR(255),                      -- Short Text
    procure_method NVARCHAR(255),              -- Short Text
    reference NVARCHAR(255),                   -- Short Text
    cost_share NVARCHAR(255),                  -- Short Text
    next_serial NVARCHAR(255),                 -- Short Text
    description_picking NVARCHAR(255),         -- Short Text
    order_finished_lot_id NVARCHAR(255),       -- Short Text
    byproduct_id NVARCHAR(255),                -- Short Text
    bom_line_id NVARCHAR(255),                 -- Short Text
    workorder_id NVARCHAR(255),                -- Short Text
    operation_id NVARCHAR(255),                -- Short Text
    consume_unbuild_id NVARCHAR(255),          -- Short Text
    unbuild_id NVARCHAR(255),                  -- Short Text
    raw_material_production_id NVARCHAR(255),  -- Short Text
    production_id NVARCHAR(255),               -- Short Text
    created_production_id NVARCHAR(255),       -- Short Text
    unit_factor DECIMAL(18,6),                 -- Number
    is_done BIT,                               -- Yes/No
    is_oil BIT,                                -- Yes/No
    qty_at_20 DECIMAL(18,6),                   -- Number
    sale_line_id INT,                          -- Number
    created_purchase_line_id NVARCHAR(255),    -- Short Text
    purchase_line_id NVARCHAR(255),            -- Short Text
    to_refund NVARCHAR(255),                   -- Short Text
    analytic_account_line_id NVARCHAR(255),    -- Short Text
    price_unit DECIMAL(18,6),                  -- Number
    write_date DATETIME,                       -- Date/Time
    create_date DATETIME,                      -- Date/Time
    delay_alert_date DATETIME,                 -- Date/Time
    date_deadline DATETIME,                    -- Date/Time
    date DATETIME,                             -- Date/Time
    additional BIT,                            -- Yes/No
    is_inventory BIT,                          -- Yes/No
    propagate_cancel BIT,                      -- Yes/No
    scrapped BIT,                              -- Yes/No
    quantity_done DECIMAL(18,6),               -- Number
    sequence INT,                              -- Number
    product_uom_qty DECIMAL(18,6),             -- Number
    product_qty DECIMAL(18,6),                 -- Number
    reservation_date NVARCHAR(255),            -- Short Text
    write_uid INT,                             -- Number
    create_uid INT,                            -- Number
    product_packaging_id NVARCHAR(255),        -- Short Text
    orderpoint_id NVARCHAR(255),               -- Short Text
    next_serial_count NVARCHAR(255),           -- Short Text
    package_level_id NVARCHAR(255),            -- Short Text
    warehouse_id INT,                          -- Number
    restrict_partner_id NVARCHAR(255),         -- Short Text
    origin_returned_move_id NVARCHAR(255),     -- Short Text
    picking_type_id INT,                       -- Number
    rule_id INT                                -- Number
);

