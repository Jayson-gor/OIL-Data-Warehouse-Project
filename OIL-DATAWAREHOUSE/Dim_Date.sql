USE [OIL-DATAWAREHOUSE];
GO


-- Create the date_dim table
CREATE TABLE date_dim
(
    date_key INT NOT NULL PRIMARY KEY,
    full_date DATE,
    year INT,
    quarter INT,
    quarter_name NVARCHAR(20),
    month INT,
    month_name NVARCHAR(20),
    week INT,
    day INT,
    day_name NVARCHAR(9)
);
