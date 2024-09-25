use [OIL-DW];

CREATE TABLE Product_Category (
    ID1 INT, -- AutoNumber in MS Access
    parent_path NVARCHAR(255), -- Short Text in MS Access
    create_uid INT, -- Number in MS Access
    parent_id INT, -- Number in MS Access
    create_date DATETIME, -- Date/Time in MS Access
    allow_negative_stock NVARCHAR(255), -- Short Text in MS Access
    write_uid INT, -- Number in MS Access
    id INT PRIMARY KEY, -- Number in MS Access
    write_date DATETIME, -- Date/Time in MS Access
    removal_strategy_id NVARCHAR(255), -- Short Text in MS Access
    name NVARCHAR(255), -- Short Text in MS Access
    complete_name NVARCHAR(255), -- Short Text in MS Access
    packaging_reserve_method NVARCHAR(255) -- Short Text in MS Access
);
