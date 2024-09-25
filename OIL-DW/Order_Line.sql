use [OIL-DW];

CREATE TABLE Order_Line (
    ID1 INT,           
    discount DECIMAL(18, 2),                      -- Number
    price_reduce DECIMAL(18, 2),                  -- Number
    price_subtotal DECIMAL(18, 2),                -- Number
    price_total DECIMAL(18, 2),                   -- Number
    price_reduce_taxexcl DECIMAL(18, 2),          -- Number
    price_reduce_taxinc DECIMAL(18, 2),           -- Number
    qty_delivered_method NVARCHAR(255),           -- Short Text
    qty_invoiced DECIMAL(18, 2),                  -- Number
    qty_to_invoice DECIMAL(18, 2),                -- Number
    qty_delivered DECIMAL(18, 2),                 -- Number
    invoice_status NVARCHAR(255),                 -- Short Text
    order_partner_id INT,                         -- Number
    salesman_id INT,                              -- Number
    product_id INT,                               -- Number
    product_uom INT,                              -- Number
    product_packaging_id NVARCHAR(255),           -- Short Text
    create_uid INT,                               -- Number
    write_uid INT,                                -- Number
    analytic_distribution NVARCHAR(255),          -- Short Text
    product_uom_qty DECIMAL(18, 2),               -- Number
    price_unit DECIMAL(18, 2),                    -- Number
    untaxed_amount_invoiced DECIMAL(18, 2),       -- Number
    untaxed_amount_to_invoice DECIMAL(18, 2),     -- Number
    is_downpayment NVARCHAR(255),                 -- Short Text
    is_expense NVARCHAR(255),                     -- Short Text
    create_date DATETIME,                         -- Date/Time
    write_date DATETIME,                          -- Date/Time
    price_tax DECIMAL(18, 2),                     -- Number
    product_packaging_qty DECIMAL(18, 2),         -- Number
    customer_lead DECIMAL(18, 2),                 -- Number
    route_id NVARCHAR(255),                       -- Short Text
    qty_observed DECIMAL(18, 2),                  -- Number
    qty_at_20 DECIMAL(18, 2),                     -- Number
    is_service BIT,                               -- Yes/No (Bit for Boolean)
    project_id NVARCHAR(255),                     -- Short Text
    task_id NVARCHAR(255),                        -- Short Text
    id INT PRIMARY KEY,                                       -- Number
    order_id INT,                                 -- Number
    sequence INT,                                 -- Number
    company_id INT,                               -- Number
    currency_id INT,                              -- Number
    name NVARCHAR(255),                           -- Short Text
    state NVARCHAR(255),                          -- Short Text
    display_type NVARCHAR(255)                    -- Short Text
);
