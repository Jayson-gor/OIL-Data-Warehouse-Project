USE [OIL-DATAWAREHOUSE];  -- Replace with your actual database name
GO

CREATE TABLE LoadControl (
    Id INT IDENTITY(1,1) PRIMARY KEY,            -- Auto-incrementing ID for each control entry
    TableName NVARCHAR(255) NOT NULL,            -- Name of the table being loaded
	LatsUpdatedColumn NVARCHAR(255) NOT NULL,
    LastLoadTime DATETIME NOT NULL               -- The last time data was loaded for this table
);
GO
