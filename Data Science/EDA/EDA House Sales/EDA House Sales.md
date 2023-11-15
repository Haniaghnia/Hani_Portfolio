![image](https://github.com/Haniaghnia/Hani_Portfolio/assets/111478034/2e7ed09c-cacf-425b-8062-dba65cc921e1)

# [Explore Data Analysis Car Prices ]()
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/d817d24ae72f1e85c1981b8859cdf0c7bfcb5ca4/Data%20Science/EDA/EDA%20House%20Sales/Bankgroud.png)

## Objective
To explore data sets of car prices and features. The goal of the project is to uncover hidden patterns, identify key trends, and gain insight into the factors that drive car prices.

## Scope
1. Data collection and preparation: Collect a dataset of car prices and features. Clean and prepare the data for analysis.
2. Exploratory data analysis: Perform EDA on the data to identify patterns and trends. This may involve visualizing the data, calculating summary statistics, and performing correlation analysis.
3. Findings and recommendations: 
Based on the results of the EDA, identify the key features that are most important for predicting car prices and make recommendations for further analysis or modeling.

## Data Collection 
### About Dataset
Dataset is open source from Kaggle. 1985 Auto Imports Database, the dataset is about cars from back in 85.

### Scope
The dataset includes information on the specification of an auto in terms of various characteristics, assigned insurance risk rating, and normalized losses in use as compared to other cars.

### Preprocessing
Cleaned and preprocessed the data to ensure accuracy, and consistency, and handle missing values or outliers.

## EDA Overview
### Univariate Analysis

#### Numerical Features
Analyzing every single feature to understand its distribution and characteristics. Visualize using boxplots and Histograms, 
##### Summary Univariate Analysis Numerical Features: 
Features such as wheel-base, width, horsepower, city-mpg, highway-mpg, ... seem to share a similar distribution to the one we have with price. Let's see if we can find new clues later.

#### Categorical Feature
For Categorical features, the characteristics are visualized using a frequency distribution.
##### Summary Univariate Analysis Categorical Feature: 
I noticed that the make category had too many groups, so I didn't choose it as a feature. Price between the different aspiration, num-of-doors, body-style,num-of-cylinders, fuel-system, and engine-type categories has a significant overlap so this feature would not be a good predictor of price. Engine- location, and drive-wheels a potential good predictors of price because they are distinct enough for each category

### Bivariate Analysis
To examine the relationship between two variables using Bivariate analysis. How two variables interact and whether there is a meaningful connection between them. 

#### Numerical Feature
Using Scatter plots, Correlation analysis uses the correlation coefficients Pearson's to quantify the strength and direction of the linear relationship. The last is Regression analysis to identify the functional form of the relationship and quantify the effect of the independent variables on the dependent variable.
###### Regression analysis 
There are 10 strongly correlated values with Price:
engine-size     0.872335
curb-weight     0.834415
horsepower      0.809575
city-L/100km    0.789898
width           0.751265
length          0.690628
wheel-base      0.584642
bore            0.543155
city-mpg       -0.686571
highway-mpg    -0.704692

###### Regression analysis 
The scatter plots show the relationship between each feature and the target variable price
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/cff783558a0a2427e8a900affc52aeacb6d858fe/Data%20Science/EDA/EDA%20House%20Sales/Regression%20analysis%20Car%20Price.png)

## Descriptive Statistical Analysis
### Correlation and Causation
Correlation is a measure relationship between two variables and Causation refers to the cause-and-effect relationship between two variables. To measure Correlation and Causation using The Pearson Correlation and p-value

###### Correlation coefficients Pearson's
- The variable has a correlation significant and a relationship positive and very strong with to target (Price) is engine-size
- The variable has a correlation significant and a relationship positive and moderately strong with to target (Price) is wheel-base, length
- The variable has a correlation significant and a relationship positive and quite strong with to target (Price) is curb-weight, city-L/100km, width
- The variable has a correlation significant and a relationship positive and weak with to target (Price) is bore
- The variable has a correlation significant and a relationship negative and moderate strong with to target (Price) is city-mpg and highway-mpg

### ANOVA
To compare the means of a variable across different levels of a categorical variable using ANOVA, It is used to determine whether there is a statistically significant difference in the mean values of the dependent variable between the different levels of the independent variable.Using two parameters F-test score and P-value
###### Summary 
Only Drive-wheels have statistically significant difference between the means of the groups 


## Summary and Insights




