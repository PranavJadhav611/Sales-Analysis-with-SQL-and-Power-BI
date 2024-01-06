-- Cleaned Data Table for Analysis

SELECT 
	   DateKey
      ,FullDateAlternateKey as Date
      ,EnglishDayNameOfWeek as Day
      ,EnglishMonthName as Month
	  ,LEFT(EnglishMonthName,3) as Month_Short
	  ,MonthNumberOfYear as Month_number
      ,CalendarQuarter as Quarter
      ,CalendarYear as Year
      FROM DimDate

