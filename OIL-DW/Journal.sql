use [OIL-DW];

CREATE TABLE Journal (
    ID1 INT, -- AutoNumber in MS Access
    restrict_mode_hash_table NVARCHAR(255), -- Short Text in MS Access
    qif_date_format NVARCHAR(255), -- Short Text in MS Access
    qif_decimal_point NVARCHAR(255), -- Short Text in MS Access
    sale_activity_note NVARCHAR(255), -- Short Text in MS Access
    sequence_override_regex NVARCHAR(255), -- Short Text in MS Access
    create_date DATETIME, -- Date/Time in MS Access
    show_on_dashboard BIT, -- Yes/No in MS Access
    bank_statements_source NVARCHAR(255), -- Short Text in MS Access
    name NVARCHAR(255), -- Short Text in MS Access
    create_uid INT, -- Number in MS Access
    secure_sequence_id NVARCHAR(255), -- Short Text in MS Access
    invoice_reference_model NVARCHAR(255), -- Short Text in MS Access
    payment_sequence BIT, -- Yes/No in MS Access
    invoice_reference_type NVARCHAR(255), -- Short Text in MS Access
    type NVARCHAR(255), -- Short Text in MS Access
    code NVARCHAR(255), -- Short Text in MS Access
    sale_activity_user_id NVARCHAR(255), -- Short Text in MS Access
    active BIT, -- Yes/No in MS Access
    refund_sequence BIT, -- Yes/No in MS Access
    alias_id NVARCHAR(255), -- Short Text in MS Access
    id INT PRIMARY KEY, -- Number in MS Access
    color INT, -- Number in MS Access
    account_online_link_id NVARCHAR(255), -- Short Text in MS Access
    currency_id INT, -- Number in MS Access
    sequence INT, -- Number in MS Access
    suspense_account_id INT, -- Number in MS Access
    default_account_id INT, -- Number in MS Access
    account_online_account_id NVARCHAR(255), -- Short Text in MS Access
    write_date DATETIME, -- Date/Time in MS Access
    company_id INT, -- Number in MS Access
    profit_account_id INT, -- Number in MS Access
    loss_account_id INT, -- Number in MS Access
    bank_account_id NVARCHAR(255), -- Short Text in MS Access
    sale_activity_type_id NVARCHAR(255), -- Short Text in MS Access
    write_uid INT, -- Number in MS Access
    message_main_attachment_id NVARCHAR(255) -- Short Text in MS Access
);
