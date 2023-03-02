## [SQL and Tableau : Analyze Coffee Shop]()
 See on Tableau Public: [Dashboard](https://public.tableau.com/app/profile/hani5828/viz/CoffeeShopStory_16613282033970/CoffeShopDataStory)  
 Data Manipulation SQL Script: [HERE](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Data%20Manipulation.sql)

#### Step 1 : Ask
##### 1.1 Introduction 
* Food and Beverage company currently focusing on developing the Coffee Shop business.  Become an Intership Data Analyst, the company wants to develop its product and see how insight is related to sales at the current Coffee Shop.
* In this case study, I will follow the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the database to gain some insights that could be beneficial to the Coffee Shop business.

##### 1.2 Business Task
How are the sales of the coffee shop? 

##### 1.3 Business Objective
1. Performance at each Coffee Shop outlet
2. Sales of coffee and other products for each outlet
3. Performance at each Coffee Shop outlet for new products and how is the customer profile.
4. How to increase sales

##### 1.4 Deliverables
1.	A clear summary of the business task
2.	A description of all data sources used
3.	Documentation of any cleaning or manipulation of data
4.	A summary of the analysis
5.	Supporting visualizations and key findings
6.	High-level content recommendations based on the analysis

#### Step 2 : Prepare
##### 2.1 Dataset Used
The data from the Coffee Shop business is in 5 CSV files, Data collected includes (1) Customer data, (2) Outlet data, (3) Product Data, (4) Staff Data, and (5) Transaction data. With a total all customers 2246 and total transactions of 49.894

#### Step 3 : Process
To start processing data, use PostgreSQL as one of the data analytics tools, to import datasets, and carry out cleaning and organizing processes. The cleaning process includes adjusting data type formats and removing duplicate data and nulls. I extracted the clean data to a new CSV and saved it. I document the entire cleaning process.

#### Step 4 : Analyze
After cleaning the data, the dataset will be used to do the analysis process. In this process, I organized and formatted the data, performed some calculations, and identified trends.

#### Step 5 : Share 
* How are Coffee Shop sales in April 2019
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Coffee%20Shop%20story%20(1).PNG)
* Outlets in south Jakarta look more crowded than outlets in west Jakarta
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Coffee%20Shop%20story%20(2).PNG)
* After the launch of new products, enthusiasm for buying new products is also quite large
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Coffee%20Shop%20story%20(3).PNG)
* So far there have been no significant problems regarding the capacity of our Coffee Wrangler. Store Manager only handles less than 20% of total orders
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Coffee%20Shop%20story%20(4).PNG)
* The mainstay product and the main product at this time is Beverage. With Coffee as the source of most sales.
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Coffee%20Shop%20story%20(5).PNG)
* And what about customer profiles? 
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/Analyze%20Coffee%20Shop%20to%20improving%20new%20product/Coffee%20Shop%20story%20(6).PNG)


#### Step 6 : Act 
1. How is the performance of each outlet?
⋅⋅* Total sales reached 2.81M, and outlets in West Jakarta are not much busier than in South Jakarta.
⋅⋅* Purchase of new products in terms of enthusiasm
⋅⋅* Also bigger at South Jakarta Outlets. Product coffee is the product with the highest sales

2. Sales of coffee and other products for each outlet?
Food and Beverage products are the mainstay products with the largest total sales at each outlet
3. Performance of new products and how is the customer profile?
⋅⋅* Ethiopia (154 million) is the best-selling new product at the moment, its sales can compete with existing coffee products.
⋅⋅* However, when viewed from the product category, Tea has a larger total sales of new products contributed by Spicy Eye Opener Chai (102 million) and Peppermint (100 million).
⋅⋅* Customer profiles with ages between 25-35 years have a greater likelihood of trying new products
⋅⋅* The largest percentage who try new products are 1-year loyalty customers.

4. In increasing product sales, especially the newest product, the right time is at the end of the month, on the last dates at the office, which is the busiest time, but purchases increase due to payday. Offers at 8 am, 14 pm, or 5 pm. And for new customers and customers < 1 year.
5. There is a product that is not feasible, namely Loose tea because it has the smallest sales. To get maximum results to focus on Tea and Coffee. If there are cost constraints, discontinuing Loose Tea products can save storage costs and capital costs
