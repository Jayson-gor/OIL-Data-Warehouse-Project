use [OIL-DW];


CREATE TABLE Product_Template (
    ID1 INT, -- AutoNumber in MS Access
    pos_categ_id NVARCHAR(255), -- Short Text in MS Access
    to_weight NVARCHAR(255), -- Short Text in MS Access
    produce_delay DECIMAL(18, 2), -- Number in MS Access
    days_to_prepare_mo DECIMAL(18, 2), -- Number in MS Access
    fixed_asset NVARCHAR(255), -- Short Text in MS Access
    to_make_mrp NVARCHAR(255), -- Short Text in MS Access
    is_non_taxable NVARCHAR(255), -- Short Text in MS Access
    detailed_type NVARCHAR(255), -- Short Text in MS Access
    type NVARCHAR(255), -- Short Text in MS Access
    split_method_landed_cost NVARCHAR(255), -- Short Text in MS Access
    country_code NVARCHAR(255), -- Short Text in MS Access
    service_tracking NVARCHAR(255), -- Short Text in MS Access
    priority DECIMAL(18, 2), -- Number in MS Access
    can_be_expensed BIT, -- Yes/No in MS Access
    landed_cost_ok BIT, -- Yes/No in MS Access
    is_oil NVARCHAR(255), -- Short Text in MS Access
    is_transit NVARCHAR(255), -- Short Text in MS Access
    costing_by_lot NVARCHAR(255), -- Short Text in MS Access
    allow_negative_stock NVARCHAR(255), -- Short Text in MS Access
    available_in_pos NVARCHAR(255), -- Short Text in MS Access
    purchase_method NVARCHAR(255), -- Short Text in MS Access
    tracking NVARCHAR(255), -- Short Text in MS Access
    purchase_line_warn NVARCHAR(255), -- Short Text in MS Access
    purchase_line_warn_msg NVARCHAR(255), -- Short Text in MS Access
    service_type NVARCHAR(255), -- Short Text in MS Access
    sale_line_warn NVARCHAR(255), -- Short Text in MS Access
    expense_policy NVARCHAR(255), -- Short Text in MS Access
    invoice_policy NVARCHAR(255), -- Short Text in MS Access
    sale_line_warn_msg NVARCHAR(255), -- Short Text in MS Access
    default_code NVARCHAR(255), -- Short Text in MS Access
    id INT PRIMARY KEY, -- Number in MS Access
    message_main_attachment_id NVARCHAR(255), -- Short Text in MS Access
    sequence INT, -- Number in MS Access
    categ_id INT, -- Number in MS Access
    uom_id INT, -- Number in MS Access
    uom_po_id INT, -- Number in MS Access
    company_id INT, -- Number in MS Access
    color NVARCHAR(255), -- Short Text in MS Access
    create_uid INT, -- Number in MS Access
    write_uid INT, -- Number in MS Access
    name NVARCHAR(255), -- Short Text in MS Access
    description NVARCHAR(255), -- Short Text in MS Access
    description_purchase NVARCHAR(255), -- Short Text in MS Access
    description_sale NVARCHAR(255), -- Short Text in MS Access
    list_price DECIMAL(18, 2), -- Number in MS Access
    volume DECIMAL(18, 2), -- Number in MS Access
    weight DECIMAL(18, 2), -- Number in MS Access
    sale_ok BIT, -- Yes/No in MS Access
    purchase_ok BIT, -- Yes/No in MS Access
    active BIT, -- Yes/No in MS Access
    can_image_1024_be_zoomed BIT, -- Yes/No in MS Access
    has_configurable_attributes BIT, -- Yes/No in MS Access
    create_date DATETIME, -- Date/Time in MS Access
    write_date DATETIME, -- Date/Time in MS Access
    description_picking NVARCHAR(255), -- Short Text in MS Access
    description_pickingout NVARCHAR(255), -- Short Text in MS Access
    description_pickingin NVARCHAR(255), -- Short Text in MS Access
    sale_delay DECIMAL(18, 2) -- Number in MS Access
);
