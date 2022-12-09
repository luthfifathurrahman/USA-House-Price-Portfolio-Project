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
-- id Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The id Column
SELECT id
FROM USAHousePrice..HousePrice

-- Checking Missing Value on id Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE id is null

-- date Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The date Column
SELECT date
FROM USAHousePrice..HousePrice

-- Checking Missing Value on date Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE date is null

---- Changing The Format Date on date Column
--SELECT date
--FROM USAHousePrice..HousePrice

--SELECT date, CONVERT(date,Date)
--FROM USAHousePrice..HousePrice

--ALTER TABLE USAHousePrice..HousePrice
--ADD date_converted date

--UPDATE USAHousePrice..HousePrice
--SET date_converted = CONVERT(date,date)

---- Removing date Column From Table
--ALTER TABLE USAHousePrice..HousePrice
--DROP COLUMN date

------------------------------------------------------------------------------------------------------
-- price Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The price Column
SELECT price
FROM USAHousePrice..HousePrice

-- Changing The Data Type of price Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN price float

-- Checking Missing Value on price Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE price is null

------------------------------------------------------------------------------------------------------
-- bedrooms Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The bedrooms Column
SELECT bedrooms
FROM USAHousePrice..HousePrice

-- Changing The Data Type of bedrooms Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN bedrooms float

-- Checking The Unique Value on The bedrooms Column
SELECT DISTINCT bedrooms
FROM USAHousePrice..HousePrice
ORDER BY bedrooms

---- Changing The Value on The bedrooms 
--SELECT bedrooms,
--CASE WHEN bedrooms = 0 THEN 1
--ELSE bedrooms
--END
--FROM USAHousePrice..HousePrice
--ORDER BY bedrooms

--UPDATE USAHousePrice..HousePrice
--SET bedrooms = CASE WHEN bedrooms = 0 THEN 1
--ELSE bedrooms
--END

-- Checking Missing Value on The bedrooms Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE bedrooms is null

------------------------------------------------------------------------------------------------------
-- bathrooms Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The bathrooms Column
SELECT bathrooms
FROM USAHousePrice..HousePrice

-- Changing The Data Type of bathrooms Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN bathrooms float

-- Checking The Unique Value on The bathrooms Column
SELECT DISTINCT bathrooms
FROM USAHousePrice..HousePrice
ORDER BY bathrooms

---- Changing The Value on The bathrooms Column
--SELECT bathrooms,
--CASE WHEN bathrooms = 0.75 THEN 1
--WHEN bathrooms = 1.25 THEN 2
--WHEN bathrooms = 1.5 THEN 2
--WHEN bathrooms = 1.75 THEN 2
--WHEN bathrooms = 2.25 THEN 3
--WHEN bathrooms = 2.5 THEN 3
--WHEN bathrooms = 2.75 THEN 3
--WHEN bathrooms = 3.25 THEN 4
--WHEN bathrooms = 3.5 THEN 4
--WHEN bathrooms = 3.75 THEN 4
--WHEN bathrooms = 4.25 THEN 5
--WHEN bathrooms = 4.5 THEN 5
--WHEN bathrooms = 4.75 THEN 5
--WHEN bathrooms = 5.25 THEN 6
--WHEN bathrooms = 5.5 THEN 6
--WHEN bathrooms = 5.75 THEN 6
--WHEN bathrooms = 6.25 THEN 7
--WHEN bathrooms = 6.5 THEN 7
--WHEN bathrooms = 6.75 THEN 7
--ELSE bathrooms
--END
--FROM USAHousePrice..HousePrice

--UPDATE USAHousePrice..HousePrice
--SET bathrooms = CASE WHEN bathrooms = 0.75 THEN 1
--WHEN bathrooms = 1.25 THEN 2
--WHEN bathrooms = 1.5 THEN 2
--WHEN bathrooms = 1.75 THEN 2
--WHEN bathrooms = 2.25 THEN 3
--WHEN bathrooms = 2.5 THEN 3
--WHEN bathrooms = 2.75 THEN 3
--WHEN bathrooms = 3.25 THEN 4
--WHEN bathrooms = 3.5 THEN 4
--WHEN bathrooms = 3.75 THEN 4
--WHEN bathrooms = 4.25 THEN 5
--WHEN bathrooms = 4.5 THEN 5
--WHEN bathrooms = 4.75 THEN 5
--WHEN bathrooms = 5.25 THEN 6
--WHEN bathrooms = 5.5 THEN 6
--WHEN bathrooms = 5.75 THEN 6
--WHEN bathrooms = 6.25 THEN 7
--WHEN bathrooms = 6.5 THEN 7
--WHEN bathrooms = 6.75 THEN 7
--ELSE bathrooms
--END

-- Checking The Missing Value on The bathrooms Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE bathrooms is null

------------------------------------------------------------------------------------------------------
-- sqft_living Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The sqft_living Column
SELECT sqft_living
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The sqft_living Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE sqft_living is null

-- Changing The Value on The sqft_living Column from sqft to sqm
SELECT sqft_living,
ROUND((sqft_living*0.092903),2) AS sqm_living
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD sqm_living float

UPDATE USAHousePrice..HousePrice
SET sqm_living = ROUND((sqft_living*0.092903),2)

-- Removing The sqft_living Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN sqft_living

------------------------------------------------------------------------------------------------------
-- sqft_lot Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The sqft_lot Column
SELECT sqft_lot
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The sqft_lot Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE sqft_lot is null

-- Changing The Value on The sqft_lot Column from sqft to sqm
SELECT sqft_lot,
ROUND((sqft_lot*0.092903),2) AS sqm_lot
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD sqm_lot float

UPDATE USAHousePrice..HousePrice
SET sqm_lot = ROUND((sqft_lot*0.092903),2)

-- Removing The sqft_lot Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN sqft_lot

------------------------------------------------------------------------------------------------------
-- sqft_living15 Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The sqft_living15 Column
SELECT sqft_living15
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The sqft_living15 Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE sqft_living15 is null

-- Changing The Value on The sqft_living15 Column from sqft to sqm
SELECT sqft_living15,
ROUND((sqft_living15*0.092903),2) AS sqm_living15
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD sqm_living15 float

UPDATE USAHousePrice..HousePrice
SET sqm_living15 = ROUND((sqft_living15*0.092903),2)

-- Removing The sqft_living15 Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN sqft_living15

------------------------------------------------------------------------------------------------------
-- sqft_lot15 Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The sqft_lot15 Column
SELECT sqft_lot15
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The sqft_lot15 Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE sqft_lot15 is null

-- Changing The Value on The sqft_lot15 Column from sqft to sqm
SELECT sqft_lot15,
ROUND((sqft_lot15*0.092903),2) AS sqm_lot15
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD sqm_lot15 float

UPDATE USAHousePrice..HousePrice
SET sqm_lot15 = ROUND((sqft_lot15*0.092903),2)

-- Removing The sqft_lot Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN sqft_lot15

------------------------------------------------------------------------------------------------------
-- sqft_above Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The sqft_above Column
SELECT sqft_above
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The sqft_above Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE sqft_above is null

-- Changing The Value on The sqft_above Column from sqft to sqm
SELECT sqft_above,
ROUND((sqft_above*0.092903),2) AS sqm_above
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD sqm_above float

UPDATE USAHousePrice..HousePrice
SET sqm_above = ROUND((sqft_above*0.092903),2)

-- Removing The sqft_lot Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN sqft_above

------------------------------------------------------------------------------------------------------
-- sqft_basement Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The sqft_basement Column
SELECT sqft_basement
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The sqft_lot Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE sqft_basement is null

-- Changing The Value on The sqft_basement Column from sqft to sqm
SELECT sqft_basement,
CASE WHEN sqft_basement > 0 THEN 'Have A Basement'
ELSE 'Not Have A Basement'
END
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD basement nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET basement = CASE WHEN sqft_basement > 0 THEN 'Have A Basement'
ELSE 'Not Have A Basement'
END

-- Removing The sqft_lot Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN sqft_basement

------------------------------------------------------------------------------------------------------
-- floors Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The floors Column
SELECT floors
FROM USAHousePrice..HousePrice

-- Changing The Data Type of floors Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN floors float

-- Checking The Unique Value on The floors Column
SELECT DISTINCT floors
FROM USAHousePrice..HousePrice
ORDER BY floors

---- Changing The Value on The floors Column
--SELECT floors,
--CASE WHEN floors = 1.5 THEN 2
--WHEN floors = 2.5 THEN 3
--WHEN floors = 3.5 THEN 4
--ELSE floors
--END
--FROM USAHousePrice..HousePrice

--UPDATE USAHousePrice..HousePrice
--SET floors = CASE WHEN floors = 1.5 THEN 2
--WHEN floors = 2.5 THEN 3
--WHEN floors = 3.5 THEN 4
--ELSE floors
--END

-- Checking Missing Value on The floors Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE floors is null

------------------------------------------------------------------------------------------------------
-- waterfront Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The waterfront Column
SELECT waterfront
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The waterfront Column
SELECT DISTINCT waterfront
FROM USAHousePrice..HousePrice
ORDER BY waterfront

-- Changing The Value on The waterfront Column
SELECT waterfront,
CASE WHEN waterfront = 0 THEN 'Not Have A Waterfront'
ELSE 'Have A Waterfront'
END
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN waterfront nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET waterfront = CASE WHEN waterfront = 0 THEN 'Not Have A Waterfront'
ELSE 'Have A Waterfront'
END

-- Checking The Missing Value on The waterfront Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE waterfront is null

------------------------------------------------------------------------------------------------------
-- scenery Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The scenery Column
SELECT scenery
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The scenery Column
SELECT DISTINCT scenery
FROM USAHousePrice..HousePrice
ORDER BY scenery

-- Changing The Data Type of scenery Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN scenery nvarchar(255)

-- Changing The Value on The scenery Column
SELECT scenery,
CASE WHEN scenery = 0 THEN 'No Scenery'
WHEN scenery = 1 THEN 'Fair Scenery'
WHEN scenery = 2 THEN 'Average Scenery'
WHEN scenery = 3 THEN 'Good Scenery'
WHEN scenery = 4 THEN 'Excelent Scenery'
ELSE scenery
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET scenery = CASE WHEN scenery = 0 THEN 'No Scenery'
WHEN scenery = 1 THEN 'Fair Scenery'
WHEN scenery = 2 THEN 'Average Scenery'
WHEN scenery = 3 THEN 'Good Scenery'
WHEN scenery = 4 THEN 'Excelent Scenery'
ELSE scenery
END

-- Checking The Missing Value on The scenery Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE scenery is null

------------------------------------------------------------------------------------------------------
-- condition Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The condition Column
SELECT condition
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The condition Column
SELECT DISTINCT condition
FROM USAHousePrice..HousePrice
ORDER BY condition

-- Changing The Data Type of condition Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN condition nvarchar(255)

-- Changing The Value on The condition Column
SELECT condition,
CASE WHEN condition = 1 THEN 'Poor Condition'
WHEN condition = 2 THEN 'Fair Condition'
WHEN condition = 3 THEN 'Average Condition'
WHEN condition = 4 THEN 'Good Condition'
WHEN condition = 5 THEN 'Excelent Condition'
ELSE condition
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET condition = CASE WHEN condition = 1 THEN 'Poor Condition'
WHEN condition = 2 THEN 'Fair Condition'
WHEN condition = 3 THEN 'Average Condition'
WHEN condition = 4 THEN 'Good Condition'
WHEN condition = 5 THEN 'Excelent Condition'
ELSE condition
END

-- Checking The Missing Value on The condition Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE condition is null

------------------------------------------------------------------------------------------------------
-- yr_built Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The yr_built Column
SELECT yr_built
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The yr_built Column
SELECT DISTINCT yr_built
FROM USAHousePrice..HousePrice
ORDER BY yr_built

-- Changing The Value on The yr_built Column into age
SELECT yr_built, (YEAR(GETDATE()) - yr_built) as AGE
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD age int

UPDATE USAHousePrice..HousePrice
SET age = (YEAR(GETDATE()) - yr_built)

-- Changing The Data Type of age Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN age nvarchar(255)

-- Changing The Value on The age Column
SELECT age,
CASE WHEN age <= 20 THEN '0-20'
WHEN age BETWEEN 21 AND 40 THEN '21-40'
WHEN age BETWEEN 41 AND 60 THEN '41-60'
WHEN age BETWEEN 61 AND 80 THEN '61-80'
WHEN age BETWEEN 81 AND 100 THEN '81-100'
WHEN age > 100 THEN 'More Than 100'
ELSE age
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET age = CASE WHEN age <= 20 THEN '0-20'
WHEN age BETWEEN 21 AND 40 THEN '21-40'
WHEN age BETWEEN 41 AND 60 THEN '41-60'
WHEN age BETWEEN 61 AND 80 THEN '61-80'
WHEN age BETWEEN 81 AND 100 THEN '81-100'
WHEN age > 100 THEN 'More Than 100'
ELSE age
END

-- Removing The yr_built Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN yr_built

-- Checking The Missing Value on The age Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE age is null

------------------------------------------------------------------------------------------------------
-- yr_renovated Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The yr_renovated Column
SELECT yr_renovated
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The yr_renovated Column
SELECT DISTINCT yr_renovated
FROM USAHousePrice..HousePrice
ORDER BY yr_renovated

-- Changing The Value on The yr_renovated Column
SELECT yr_renovated,
CASE WHEN yr_renovated = 0 THEN 'Has Never Been Renovated'
ELSE 'Has Been Renovated'
END
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD renovated nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET renovated = CASE WHEN yr_renovated = 0 THEN 'Has Never Been Renovated'
ELSE 'Has Been Renovated'
END

-- Removing The yr_renovated Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN yr_renovated

-- Checking The Missing Value on The renovated Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE renovated is null

------------------------------------------------------------------------------------------------------
-- grade Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The street Column
SELECT grade
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The grade Column
SELECT DISTINCT grade
FROM USAHousePrice..HousePrice
ORDER BY grade

-- Changing The Data Type of grade Column
ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN grade nvarchar(255)

-- Changing The Value on The grade Column
SELECT grade,
CASE WHEN grade BETWEEN 1 AND 3 THEN 'Poor Grade'
WHEN grade BETWEEN 4 AND 6 THEN 'Fair Grade'
WHEN grade = 7 THEN 'Average Grade'
WHEN grade BETWEEN 8 AND 10 THEN 'Good Grade'
WHEN grade BETWEEN 1 AND 13 THEN 'Very Good Grade'
ELSE grade
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET grade = CASE WHEN grade BETWEEN 1 AND 3 THEN 'Poor Grade'
WHEN grade BETWEEN 4 AND 6 THEN 'Fair Grade'
WHEN grade = 7 THEN 'Average Grade'
WHEN grade BETWEEN 8 AND 10 THEN 'Good Grade'
WHEN grade BETWEEN 1 AND 13 THEN 'Very Good Grade'
ELSE grade
END

-- Checking The Missing Value on The grade Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE grade is null

------------------------------------------------------------------------------------------------------
-- lat Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The lat Column
SELECT lat
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The lat Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE lat is null

------------------------------------------------------------------------------------------------------
-- long Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The long Column
SELECT long
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The long Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE long is null

------------------------------------------------------------------------------------------------------
-- zipcode Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The zipcode Column
SELECT zipcode
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The zipcode Column
SELECT DISTINCT zipcode
FROM USAHousePrice..HousePrice
ORDER BY zipcode

-- Checking The Missing Value on The zipcode Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE zipcode is null

------------------------------------------------------------------------------------------------------
------------------------------------------ DATA EXPLORATION ------------------------------------------
------------------------------------------------------------------------------------------------------
SELECT *
FROM USAHousePrice..HousePrice

-- Looking For The Highest Price
SELECT *
FROM USAHousePrice..HousePrice
ORDER BY price DESC

-- Looking For The Lowest Price
SELECT *
FROM USAHousePrice..HousePrice
ORDER BY price ASC

-- Looking For The Average Price For Bedrooms
SELECT bedrooms, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY bedrooms
ORDER BY average_price DESC

-- Creating View For The Average Price For Bedrooms
CREATE VIEW AveragePriceBedrooms AS
SELECT bedrooms, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY bedrooms

SELECT *
FROM AveragePriceBedrooms
ORDER BY average_price DESC

-- Looking For The Average Price For Bathrooms
SELECT DISTINCT bathrooms, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY bathrooms
ORDER BY average_price DESC

-- Creating View For The Average Price for Bathrooms
CREATE VIEW AveragePriceBathrooms AS
SELECT DISTINCT bathrooms, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY bathrooms

SELECT *
FROM AveragePriceBathrooms

-- Looking For The Average Price For Floors
SELECT floors, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY floors
ORDER BY average_price DESC

-- Creating View For The Average Price For Floors
CREATE VIEW AveragePriceFloors AS
SELECT floors, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY floors

SELECT *
FROM AveragePriceFloors

-- Looking For The Average Price For Waterfront
SELECT waterfront, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY waterfront
ORDER BY average_price DESC

-- Creating View For The Average Price For Waterfront
CREATE VIEW AveragePriceWaterfront AS
SELECT waterfront, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY waterfront

SELECT *
FROM AveragePriceWaterfront

-- Looking For The Average Price For Basement
SELECT basement, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY basement
ORDER BY average_price DESC

-- Creating View For The Average Price For Basement
CREATE VIEW AveragePriceBasement AS
SELECT basement, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY basement

SELECT *
FROM AveragePriceBasement

-- Looking For The Average Price For Renovated
SELECT renovated, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY renovated
ORDER BY average_price DESC

-- Creating View For The Average Price For Renovated
CREATE VIEW AveragePriceRenovated AS
SELECT renovated, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY renovated

SELECT *
FROM AveragePriceRenovated

-- Looking For The Average Price and Amount of House in Every ZIP Code
SELECT zipcode, COUNT(zipcode) AS amount_of_house, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY zipcode
ORDER BY average_price DESC

-- Creating View For The Average Price and Amount of House in Every ZIP Code
CREATE VIEW AveragePriceAmountPerZIP AS
SELECT zipcode, COUNT(zipcode) AS amount_of_house, ROUND(AVG(price),0) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY zipcode

SELECT *
FROM AveragePriceAmountPerZIP
