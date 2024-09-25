use [OIL-DW];


CREATE TABLE Accounts (
    id INT PRIMARY KEY,
    deprecated BIT, -- Yes/No in MS Access
    write_uid INT, -- Number in MS Access
    create_uid INT, -- Number in MS Access
    root_id INT, -- Number in MS Access
    group_id NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    company_id INT, -- Number in MS Access
    currency_id NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    message_main_attachment_id NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    multiple_assets_per_line BIT, -- Yes/No in MS Access
    asset_model NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    name NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    code INT, -- Number in MS Access
    account_type NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    internal_group NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    note NVARCHAR(MAX), -- Short Text in MS Access, now NVARCHAR(MAX)
    create_asset NVARCHAR(255), -- Short Text in MS Access, now NVARCHAR
    write_date DATETIME, -- Date/Time in MS Access
    create_date DATETIME, -- Date/Time in MS Access
    non_trade BIT, -- Yes/No in MS Access
    is_off_balance BIT, -- Yes/No in MS Access
    reconcile BIT, -- Yes/No in MS Access
    include_initial_balance BIT -- Yes/No in MS Access
);
