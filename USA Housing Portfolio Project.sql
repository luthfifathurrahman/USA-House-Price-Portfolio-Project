------------------------------------------------------------------------------------------------------
------------------------------------------- DATA PROFILING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Looking All The Data from The Table
SELECT *
FROM USAHousePrice..HousePrice

-- Counting How Many Rows in The Table
SELECT COUNT(*) AS Row_Count
FROM USAHousePrice..HousePrice

-- Showing The Data Type For Every Column
SELECT COLUMN_NAME, DATA_TYPE
FROM USAHousePrice.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'HousePrice'

------------------------------------------------------------------------------------------------------
------------------------------------------- DATA CLEANSING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- date Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The date Column
SELECT date
FROM USAHousePrice..HousePrice

-- Checking Missing Value on date Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE date is null

-- Changing The Format Date on date Column
SELECT date, CONVERT(date,Date)
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD date_converted date

UPDATE USAHousePrice..HousePrice
SET date_converted = CONVERT(date,date)

-- Removing date Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN date

------------------------------------------------------------------------------------------------------
-- price Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The price Column
SELECT price
FROM USAHousePrice..HousePrice

-- Changing The Data Type of price Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN price numeric
