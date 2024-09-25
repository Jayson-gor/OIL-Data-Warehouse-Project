use [OIL-DW];

CREATE TABLE Sales_Order (
    ID1 INT,           -- AutoNumber equivalent in SQL Server
    amount_total NVARCHAR(255),                  -- Number (changed to NVARCHAR)
    id INT PRIMARY KEY,                                      -- Number
    campaign_id NVARCHAR(255),                   -- Short Text
    source_id NVARCHAR(255),                     -- Short Text
    medium_id NVARCHAR(255),                     -- Short Text
    message_main_attachment_id NVARCHAR(255),    -- Short Text
    company_id INT,                              -- Number
    partner_id INT,                              -- Number
    partner_invoice_id INT,                      -- Number
    partner_shipping_id INT,                     -- Number
    fiscal_position_id NVARCHAR(255),            -- Short Text
    payment_term_id INT,                         -- Number
    pricelist_id INT,                            -- Number
    currency_id INT,                             -- Number
    user_id INT,                                 -- Number
    team_id INT,                                 -- Number
    analytic_account_id NVARCHAR(255),           -- Short Text
    create_uid INT,                              -- Number
    write_uid INT,                               -- Number
    validity_date NVARCHAR(255),                 -- Short Text
    currency_rate NVARCHAR(255),                 -- Number (changed to NVARCHAR)
    amount_untaxed NVARCHAR(255),                -- Number (changed to NVARCHAR)
    amount_tax NVARCHAR(255),                    -- Number (changed to NVARCHAR)
    require_signature BIT,                       -- Yes/No (using BIT for boolean values)
    require_payment BIT,                         -- Yes/No (using BIT for boolean values)
    create_date DATETIME,                        -- Date/Time
    commitment_date DATETIME,                    -- Date/Time
    date_order DATETIME,                         -- Date/Time
    signed_on DATETIME,                          -- Date/Time
    write_date DATETIME,                         -- Date/Time
    sale_order_template_id NVARCHAR(255),        -- Short Text
    incoterm NVARCHAR(255),                      -- Short Text
    warehouse_id INT,                            -- Number
    procurement_group_id INT,                    -- Number
    effective_date NVARCHAR(255),                -- Short Text
    auto_purchase_order_id NVARCHAR(255),        -- Short Text
    auto_generated NVARCHAR(255),                -- Short Text
    proforma_invoice_id NVARCHAR(255),           -- Short Text
    destination_id NVARCHAR(255),                -- Short Text
    transporter_id NVARCHAR(255),                -- Short Text
    driver_id NVARCHAR(255),                     -- Short Text
    loading_order_date DATETIME,                 -- Date/Time
    gate_pass_date DATETIME,                     -- Date/Time
    bill_of_lading_date DATETIME,                -- Date/Time
    pfi_required BIT,                            -- Yes/No (using BIT for boolean values)
    loading_required BIT,                        -- Yes/No (using BIT for boolean values)
    loading_order_quantity NVARCHAR(255),        -- Number (changed to NVARCHAR)
    amount_unpaid NVARCHAR(255),                 -- Number (changed to NVARCHAR)
    tax_calculation_drc_sale BIT,                -- Yes/No (using BIT for boolean values)
    project_id NVARCHAR(255),                    -- Short Text
    nra_entry NVARCHAR(255),                     -- Short Text
    city NVARCHAR(255),                          -- Short Text
    bill_of_lading_no NVARCHAR(255),             -- Short Text
    trailer_reg_no NVARCHAR(255),                -- Short Text
    truck_reg_no NVARCHAR(255),                  -- Short Text
    gate_pass_no NVARCHAR(255),                  -- Short Text
    kra_entry NVARCHAR(255),                     -- Short Text
    consignee NVARCHAR(255),                     -- Short Text
    loading_order_no NVARCHAR(255),              -- Short Text
    delivery_status NVARCHAR(255),               -- Short Text
    picking_policy NVARCHAR(255),                -- Short Text
    incoterm_location NVARCHAR(255),             -- Short Text
    note NVARCHAR(255),                          -- Short Text
    invoice_status NVARCHAR(255),                -- Short Text
    signed_by NVARCHAR(255),                     -- Short Text
    reference NVARCHAR(255),                     -- Short Text
    origin NVARCHAR(255),                        -- Short Text
    client_order_ref NVARCHAR(255),              -- Short Text
    state NVARCHAR(255),                         -- Short Text
    name NVARCHAR(255),                          -- Short Text
    access_token NVARCHAR(255)                   -- Short Text
);
