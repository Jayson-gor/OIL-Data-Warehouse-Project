use [OIL-DW];

CREATE TABLE Product_Product (
    barcode NVARCHAR(255),                    -- Short Text
    write_date DATETIME,                      -- Date/Time
    weight DECIMAL(18, 6),                    -- Number
    volume DECIMAL(18, 6),                    -- Number
    write_uid INT,                            -- Number
    combination_indices NVARCHAR(255),        -- Short Text
    can_image_variant_1024_be_zoomed BIT,     -- Yes/No
    default_code NVARCHAR(255),               -- Short Text
    create_uid INT,                           -- Number
    product_tmpl_id INT,                      -- Number
    active BIT,                               -- Yes/No
    id INT PRIMARY KEY,                       -- Number (Assuming 'id' is the primary key)
    message_main_attachment_id NVARCHAR(255), -- Short Text
    create_date DATETIME                      -- Date/Time
);
