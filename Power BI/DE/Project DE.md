## [Data Engineering]()
 See on Power BI: [Insights](https://github.com/Haniaghnia/Hani_Portfolio/blob/dafa719edb6d061a70fde0c5815a0fbd0a1460c5/Power%20BI/DE/DE%20BTPN.pbix)  

### Project Background
* Analyzing Bank BTPN credit card customer database, see the risks that will arise, and how preventive actions can be taken. 
* Using the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the Credit card Data in order to gain some insights that could be beneficial.
* With the data that is owned, it performs data processing based on business objectives, data exploration and generates insights for the company.

#### Step 1 : Ask
##### 1.1 Introduction 
Bank BTPN, one of the banking banks in Indonesia, of its products is a credit card. As a Data Engineering internship, the task is to collect, manage, and convert raw data into information that can be interpreted and can provide insight for the company. In this case study, I will follow the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the Credit card Data in order to gain some insights that could be beneficial to Bank BTPN

##### 1.2 Business Task
Analyzing Bank  BTPN credit card customer database, see the risks that will arise, and how preventive actions can be taken. 

##### 1.3 Business Objective
1.	Identify what factors cause customers to be late in paying credit arrears
2.	Visualization of the condition of customers who have delayed credit payments
3.	Determine the factors that are the most common cause of customer defaults

##### 1.4 Deliverables
1.	A clear summary of the business task
2.	A description of all data sources used
3.	Documentation of any cleaning or manipulation of data
4.	A summary of the analysis
5.	Supporting visualizations and key findings
6.	High-level content recommendations based on the analysis

#### Step 2 : Prepare
##### 2.1 Dataset Used
The data is publicly from Bank BTPN and stored in 5 CSV files, Data collected includes (1) Customer data history, (2) Card category, (3) Education, (4) Martial status, and (5) Status customer. With a total of all customers of 10.128

#### Step 3 : Process
To start processing data, use PostgreSQL as one of the data analytics tools, to import datasets, and carry out cleaning and organizing processes. The cleaning process includes adjusting data type formats and removing duplicate data and nulls. I extracted the clean data to a new CSV and saved it. I document the entire cleaning process.

#### Step 4 : Analyze
After cleaning the data, the dataset will be used to do the analysis process. In this process, I organized and formatted the data, performed some calculations, and identified trends.

#### Step 5 : Share 
![](https://github.com/Haniaghnia/Hani_Portfolio/blob/dafa719edb6d061a70fde0c5815a0fbd0a1460c5/Power%20BI/DE/DE.PNG)

#### Step 6 : Act 
1.	One of the factors that determine whether a customer will continue to make a loan or not is monthly income and age.
2.	With the results of the company's insight, it can carry out auto screening, with conditions when customers who register have an income of less than $40, and at 44-57 years old then, we can enter into a strong potential customer profile failed to pay.
