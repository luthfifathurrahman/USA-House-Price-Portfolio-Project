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
ALTER COLUMN price float

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

-- Changing The Value on The bedrooms 
SELECT bedrooms,
CASE WHEN bedrooms = 0 THEN 1
ELSE bedrooms
END
FROM USAHousePrice..HousePrice
ORDER BY bedrooms

UPDATE USAHousePrice..HousePrice
SET bedrooms = CASE WHEN bedrooms = 0 THEN 1
ELSE bedrooms
END

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

-- Changing The Value on The bathrooms Column
SELECT bathrooms,
CASE WHEN bathrooms = 0.75 THEN 1
WHEN bathrooms = 1.25 THEN 2
WHEN bathrooms = 1.5 THEN 2
WHEN bathrooms = 1.75 THEN 2
WHEN bathrooms = 2.25 THEN 3
WHEN bathrooms = 2.5 THEN 3
WHEN bathrooms = 2.75 THEN 3
WHEN bathrooms = 3.25 THEN 4
WHEN bathrooms = 3.5 THEN 4
WHEN bathrooms = 3.75 THEN 4
WHEN bathrooms = 4.25 THEN 5
WHEN bathrooms = 4.5 THEN 5
WHEN bathrooms = 4.75 THEN 5
WHEN bathrooms = 5.25 THEN 6
WHEN bathrooms = 5.5 THEN 6
WHEN bathrooms = 5.75 THEN 6
WHEN bathrooms = 6.25 THEN 7
WHEN bathrooms = 6.5 THEN 7
WHEN bathrooms = 6.75 THEN 7
ELSE bathrooms
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET bathrooms = CASE WHEN bathrooms = 0.75 THEN 1
WHEN bathrooms = 1.25 THEN 2
WHEN bathrooms = 1.5 THEN 2
WHEN bathrooms = 1.75 THEN 2
WHEN bathrooms = 2.25 THEN 3
WHEN bathrooms = 2.5 THEN 3
WHEN bathrooms = 2.75 THEN 3
WHEN bathrooms = 3.25 THEN 4
WHEN bathrooms = 3.5 THEN 4
WHEN bathrooms = 3.75 THEN 4
WHEN bathrooms = 4.25 THEN 5
WHEN bathrooms = 4.5 THEN 5
WHEN bathrooms = 4.75 THEN 5
WHEN bathrooms = 5.25 THEN 6
WHEN bathrooms = 5.5 THEN 6
WHEN bathrooms = 5.75 THEN 6
WHEN bathrooms = 6.25 THEN 7
WHEN bathrooms = 6.5 THEN 7
WHEN bathrooms = 6.75 THEN 7
ELSE bathrooms
END

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
CASE WHEN sqft_basement > 0 THEN 'Yes'
ELSE 'No'
END
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD basement nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET basement = CASE WHEN sqft_basement > 0 THEN 'Yes'
ELSE 'No'
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

-- Changing The Value on The floors Column
SELECT floors,
CASE WHEN floors = 1.5 THEN 2
WHEN floors = 2.5 THEN 3
WHEN floors = 3.5 THEN 4
ELSE floors
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET floors = CASE WHEN floors = 1.5 THEN 2
WHEN floors = 2.5 THEN 3
WHEN floors = 3.5 THEN 4
ELSE floors
END

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
CASE WHEN waterfront = 0 THEN 'No'
ELSE 'Yes'
END
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ALTER COLUMN waterfront nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET waterfront = CASE WHEN waterfront = 0 THEN 'No'
ELSE 'Yes'
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

-- Changing The Value on The scenery Column
SELECT scenery,
CASE WHEN scenery = 0 THEN 1
WHEN scenery = 1 THEN 2
WHEN scenery = 2 THEN 3
WHEN scenery = 3 THEN 4
WHEN scenery = 4 THEN 5
ELSE scenery
END
FROM USAHousePrice..HousePrice

UPDATE USAHousePrice..HousePrice
SET scenery = CASE WHEN scenery = 0 THEN 1
WHEN scenery = 1 THEN 2
WHEN scenery = 2 THEN 3
WHEN scenery = 3 THEN 4
WHEN scenery = 4 THEN 5
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

-- Checking The Missing Value on The yr_built Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE yr_built is null

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
CASE WHEN yr_renovated = 0 THEN 'No'
ELSE 'Yes'
END
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD renovated nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET renovated = CASE WHEN yr_renovated = 0 THEN 'No'
ELSE 'Yes'
END

-- Removing The yr_renovated Column From Table
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN yr_renovated

-- Checking The Missing Value on The scenery Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE renovated is null

------------------------------------------------------------------------------------------------------
-- street Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The street Column
SELECT street
FROM USAHousePrice..HousePrice

-- Checking The Missing Value on The street Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE street is null

------------------------------------------------------------------------------------------------------
-- city Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The city Column
SELECT city
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The city Column
SELECT DISTINCT city
FROM USAHousePrice..HousePrice
ORDER BY city

-- Checking The Missing Value on The city Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE city is null

------------------------------------------------------------------------------------------------------
-- statezip Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The statezip Column
SELECT statezip
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The statezip Column
SELECT DISTINCT statezip
FROM USAHousePrice..HousePrice
ORDER BY statezip

-- Checking The Missing Value on The statezip Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE statezip is null

-- Changing The Value on The statezip Column
SELECT statezip,
PARSENAME(REPLACE(statezip,' ','.'),1) as zip_code,
PARSENAME(REPLACE(statezip,' ','.'),2) as state_house
FROM USAHousePrice..HousePrice

ALTER TABLE USAHousePrice..HousePrice
ADD zip_code numeric

UPDATE USAHousePrice..HousePrice
SET zip_code = PARSENAME(REPLACE(statezip,' ','.'),1)

ALTER TABLE USAHousePrice..HousePrice
ADD state_house nvarchar(255)

UPDATE USAHousePrice..HousePrice
SET state_house = PARSENAME(REPLACE(statezip,' ','.'),2)

-- Removing The statezip Column
ALTER TABLE USAHousePrice..HousePrice
DROP COLUMN statezip

------------------------------------------------------------------------------------------------------
-- country Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The country Column
SELECT country
FROM USAHousePrice..HousePrice

-- Checking The Unique Value on The country Column
SELECT DISTINCT country
FROM USAHousePrice..HousePrice
ORDER BY country

-- Checking The Missing Value on The country Column
SELECT *
FROM USAHousePrice..HousePrice
WHERE country is null

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

-- Looking For The Average Price for bedrooms
SELECT DISTINCT bedrooms, ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY bedrooms
ORDER BY bedrooms

-- Looking For The Average Price for bathrooms
SELECT DISTINCT bathrooms, ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY bathrooms
ORDER BY bathrooms

-- Looking For The Average Price for floors
SELECT DISTINCT floors, ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY floors
ORDER BY floors

-- Looking For The Average Price for waterfront
SELECT DISTINCT waterfront, ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY waterfront
ORDER BY waterfront

-- Looking For The Average Price and Amount of House in Every City
SELECT DISTINCT city, COUNT(city), ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY city
ORDER BY average_price DESC

-- Looking For The Average Price for basement
SELECT DISTINCT basement, ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY basement
ORDER BY basement

-- Looking For The Average Price for renovated
SELECT DISTINCT renovated, ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY renovated
ORDER BY renovated

-- Looking For The Average Price and Amount of House in Every ZIP Code
SELECT DISTINCT zip_code, COUNT(zip_code), ROUND(AVG(price),2) AS average_price
FROM USAHousePrice..HousePrice
GROUP BY zip_code
ORDER BY average_price DESC
