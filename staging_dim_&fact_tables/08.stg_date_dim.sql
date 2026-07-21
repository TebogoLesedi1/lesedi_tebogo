CREATE TABLE dbo.DimDate
(
    DateKey INT PRIMARY KEY,      -- 20240612
    FullDate DATE,
    DayNumber INT,
    MonthNumber INT,
    MonthName VARCHAR(20),
    QuarterNumber INT,
    YearNumber INT,
    WeekDayName VARCHAR(20)
);

INSERT INTO dbo.DimDate
SELECT DISTINCT
    CONVERT(INT,FORMAT(transaction_date,'yyyyMMdd')),
    transaction_date,
    DAY(transaction_date),
    MONTH(transaction_date),
    DATENAME(MONTH,transaction_date),
    DATEPART(QUARTER,transaction_date),
    YEAR(transaction_date),
    DATENAME(WEEKDAY,transaction_date)
FROM stg.dbo.[1782578019743_BrightLearn_Raw_Data];