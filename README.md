# USA Housing Portfolio Project

What is a house?
> According to Wikipedia, a house is a single-unit residential building. It may range in complexity from a rudimentary hut to a complex structure of wood, masonry, concrete, or other material, outfitted with plumbing, electrical, heating, ventilation, and air conditioning systems.

<p align="justify"> Some houses are limited to one or more of the same number of families or social groups. People usually go outside to work, attend school, or do other activities that require social interaction in everyday activities. The most frequent activity in the house is rest and sleeping.</p>

<p align="justify">A modern house consists of several rooms that each have a specific function: the bedroom, the bathroom, the kitchen, the living room, the dining room, the basement, and so forth.</p>

<p align="justify">According to the explanation above, many people would like to own a house. To own a house, some of them built it from an empty space. Meanwhile, the others bought it directly from another person. When it comes to buying a house, many considerations need attention like how many bedrooms and bathrooms are there, how about the house’s condition, when the house was built, and the most important question what is the right price for a house.</p>

<p align="justify">Some people find it difficult to decide whether it is the right price or not. To answer this question, I tried to help by building a machine learning model that predicts the price of a house. In creating this machine learning model, I used the dataset from Kaggle.</p>

## What I Do In This Project

- Analyzing Using Microsoft SQL
	- Data Profiling.
	- Data Cleansing.
	- Data Exploration.
		- Looking For The Highest Price.
		- Looking For The Lowest Price.
		- Looking For The Average Price For Bedrooms.
			- Creating View.
		- Looking For The Average Price For Bathrooms.
			- Creating View.
		- Looking For The Average Price For Floors.
			- Creating View.
		- Looking For The Average Price For Waterfront.
			- Creating View.
		- Looking For The Average Price For Basement.
			- Creating View.
		- Looking For The Average Price For Renovated.
			- Creating View.
		- Looking For The Average Price in Every ZIP Code.
			- Creating View.
      
      
- Analyzing Using Python
	- Data Profiling
		- Showing The Length of The Data
		- Showing The Shape of The Data
		- Showing The Information of The Data
		- Checking The Outliers
	- Data Cleansing
		- Checking The id Column.
    		- Checking The date Column.
    		- Checking The price Column.
    			- Visualization.
    		- Checking The bedrooms Column.
    			- Visualization.
    		- Checking The bathrooms Column.
    			- Visualization.
    		- Checking The sqft_living, sqft_lot, sqft_living15, sqft_lot15, and sqft_above Column.
    			- Visualization.
    		- Checking The floors Column.
    			- Visualization.
    		- Checking The waterfront Column.
    			- Visualization.
    		- Checking The view Column.
    			- Visualization.
    		- Checking The condition Column.
    			- Visualization.
    		- Checking The grade Column.
    			- Visualization.
    		- Checking The sqft_basement Column.
    			- Visualization.
    		- Checking The yr_built Column.
    			- Visualization.
    		- Checking The yr_renovated Column.
    			- Visualization.
    		- Checking The zipcode Column.
    			- Visualization.
    		- Checking The lat Column.
    		- Checking The long Column.
  	- Data Exploration.
		- Looking For The Highest Price.
		- Looking For The Lowest Price.
		- Looking For The Average Price For Bedrooms.
		- Looking For The Average Price For Bathrooms.
		- Looking For The Average Price For Floors.
		- Looking For The Average Price For Waterfront.
		- Looking For The Average Price For Basement.
		- Looking For The Average Price For Renovated.
		- Looking For The Average Price in Every ZIP Code.
		- Checking The Distribution of The Building On The Washington Map.
	- Machine Learning
		- Removing Duplicates in The Data
		- Removing Outliers in The Data
		- Label Encoding on The Dataset
		- Separating Features and Labels
		- Preparing Training, Testing, And Validating Dataset
		- Building A Machine Learning Linear Regression Model
		- Building A Machine Learning Random Forest Regressor Model
		- Building A Machine Learning Decision Tree Regressor Model
		- Building A Machine Learning Lasso Model
		- Building A Machine Learning Ridge Model
		- Comparing The Machine Learning Model
    
## Conclusion

1. The Building That Has The Highest Price Is In Latitude 47.6298, Longitude -122.323, ZIP 98102 With 7700000 USD.
2. The Building That Has The Lowest Price Is In Latitude 47.2638, Longitude -121.906, ZIP 98022 With 75000 USD.
3. The Building That Has 8 Bedrooms, Has The Highest Average Price With 1105076 USD.
4. The Building That Has 7.75 Bathrooms, Has The Highest Average Price With 6885000 USD.
5. The Building That Has 2.5 Floors, Has The Highest Average Price With 1060346 USD.
6. The Building That Does Have A Waterfront, Has The Highest Average Price With 1661876 USD.
7. The Building That Does Have A Basement, Has The Highest Average Price With 622373 USD.
8. The Building That Has Been Renovated, Has The Highest Average Price With 760379 USD.
9. ZIP Code 98039 Has The Highest Average Price With 2160606 USD.
10. The Grade (0.509446), Bathrooms (0.525138), Square Meter Living 15 (0.585378), Square Meter Above (0.605535), And Square Meter Living (0.702016) Column Has The Highest Correlation With The Price Column.

## Data Source
Kaggle = https://www.kaggle.com/datasets/harlfoxem/housesalesprediction
