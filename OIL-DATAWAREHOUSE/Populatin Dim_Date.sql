------ population of Date dimension 

DECLARE @StartDate DATE = '2020-01-01';
DECLARE @EndDate DATE = '2040-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    DECLARE @DateKey INT = CONVERT(INT, FORMAT(@StartDate, 'yyyyMMdd'));

    INSERT INTO date_dim (date_key, full_date, year, quarter, quarter_name, month, month_name, week, day, day_name)
    VALUES (
        @DateKey,
        @StartDate,
        DATEPART(YEAR, @StartDate),
        DATEPART(QUARTER, @StartDate),
        'Q' + CAST(DATEPART(QUARTER, @StartDate) AS VARCHAR(2)),
        DATEPART(MONTH, @StartDate),
        DATENAME(MONTH, @StartDate),
        DATEPART(WEEK, @StartDate),
        DATEPART(DAY, @StartDate),
        DATENAME(WEEKDAY, @StartDate)
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;