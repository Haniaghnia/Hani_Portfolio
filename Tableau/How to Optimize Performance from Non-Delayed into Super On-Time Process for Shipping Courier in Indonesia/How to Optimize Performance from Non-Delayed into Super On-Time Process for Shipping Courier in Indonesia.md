## [How to Optimize Performance from Non-Delayed into Super On-Time Process for Shipping Courier in Indonesia]()
 See on Tableau Public: [Dashboard](https://public.tableau.com/app/profile/hani5828/viz/StoryOptimizePerformancefromNon-DelayedintoSuperOn-TimeProcess/StoryIndonesiaShipping)  
Outlier and Changes Dimensions Data SQL Script: [HERE](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/How%20to%20Optimize%20Performance%20from%20Non-Delayed%20into%20Super%20On-Time%20Process%20for%20Shipping%20Courier%20in%20Indonesia/Outlier%20and%20Changes%20Dimensions%20Data.sql)

### Project Background
* Analyzing How to Optimize Performance from Non-Delayed into Super On-Time for Shipping Courier in Indonesia.
* Using the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the Credit card Data in order to gain some insights that could be beneficial.
* With the data that is owned, it performs data processing based on business objectives, data exploration and generates insights for the company.

#### Step 1 : Ask
##### 1.1 Introduction 
* Plays the role of a Data Analyst in a small shop that acts as a distributor for shipping expeditions in a remote town. The shop as a third party plays a role in determining the right expedition to use in sending goods from your city to other cities.
* In this case study, I will follow the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the database to gain some insights that could be beneficial.

##### 1.2 Business Task
How to Optimize Performance from Non-Delayed into Super On-Time for Shipping Courier in Indonesia

##### 1.3 Business Objective
1. How is Shipping Courier performance in Indonesia?
2. What factors influence Shipping Courier performance in Indonesia?

##### 1.4 Deliverables
1.	A clear summary of the business task
2.	A description of all data sources used
3.	Documentation of any cleaning or manipulation of data
4.	A summary of the analysis
5.	Supporting visualizations and key findings
6.	High-level content recommendations based on the analysis

#### Step 2 : Prepare
##### 2.1 Dataset Used
The data from Small Shop in Indonesia with a total transaction of 10.999

#### Step 3 : Process
To start processing data, use PostgreSQL as one of the data analytics tools, to import datasets, and carry out cleaning and organizing processes. The cleaning process includes adjusting data type formats and removing duplicate data and nulls. I extracted the clean data to a new CSV and saved it. I document the entire cleaning process.

#### Step 4 : Analyze
After cleaning the data, the dataset will be used to do the analysis process. In this process, I organized and formatted the data, performed some calculations, and identified trends.

#### Step 5 : Share 
* How is the delivery performance of the expedition service? and of the total delivery of goods through expedition services in Indonesia, the majority are not on-time. A total of 59.67% experienced delays. 
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/How%20to%20Optimize%20Performance%20from%20Non-Delayed%20into%20Super%20On-Time%20Process%20for%20Shipping%20Courier%20in%20Indonesia/Shipping(1).PNG)


* There are 3 variables that have the highest correlation value :
1.  Discount offered
2.  weight of goods
3.  total calls to customer care calls
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/How%20to%20Optimize%20Performance%20from%20Non-Delayed%20into%20Super%20On-Time%20Process%20for%20Shipping%20Courier%20in%20Indonesia/Shipping(2).PNG)


* Three variables that affect the delivery time of the expedition. 
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/How%20to%20Optimize%20Performance%20from%20Non-Delayed%20into%20Super%20On-Time%20Process%20for%20Shipping%20Courier%20in%20Indonesia/Shipping(3).PNG)


* Shipping Analytics in Geolocation
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Tableau/How%20to%20Optimize%20Performance%20from%20Non-Delayed%20into%20Super%20On-Time%20Process%20for%20Shipping%20Courier%20in%20Indonesia/Shipping(4).PNG)

#### Step 6 : Act 
1. How Shipping Courier Performance
* Overall the performance of goods delivery is not very good quality, especially in terms of delivery timelines
2. What factors influence Shipping Courier performance in Indonesia?
* There are several factors that affect the performance or accuracy of delivery, namely the discounted price offered, the price of goods, the number of calls to CS, etc.
* The delivery of goods and services will not arrive on time if the discounted price given by the seller is above IDR 150,000.
3. Intense competition for machete expedition services in Indonesia can be seen from the domination of expeditions between provinces in Indonesia.
