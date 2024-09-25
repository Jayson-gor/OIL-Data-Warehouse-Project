use [OIL-DW];

CREATE TABLE Uom_Category (
    ID1 INT,         -- AutoNumber equivalent in SQL Server
    write_date DATETIME,                       -- Date/Time
    is_pos_groupable BIT,                      -- Yes/No (using BIT for boolean values)
    create_uid INT,                            -- Number
    id INT PRIMARY KEY,                                    -- Number
    write_uid INT,                             -- Number
    name NVARCHAR(255),                        -- Short Text
    create_date DATETIME                       -- Date/Time
);
