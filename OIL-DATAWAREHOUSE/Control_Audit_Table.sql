USE [OIL-DATAWAREHOUSE];  -- Replace with your actual database name
GO

CREATE TABLE Control_Audit_Log (
    Id INT IDENTITY(1,1) PRIMARY KEY,            -- Auto-incrementing ID for each log entry
    PackageName NVARCHAR(255) NOT NULL,          -- Name of the SSIS package
    TableName NVARCHAR(255) NOT NULL,            -- Name of the table being loaded
    RecordsInserted INT NOT NULL,                -- Number of records inserted in the load
    RecordsUpdated INT NOT NULL,                 -- Number of records updated in the load
    LoadDateTime DATETIME DEFAULT GETDATE()      -- Timestamp of the load (defaults to current date/time)
);
GO
