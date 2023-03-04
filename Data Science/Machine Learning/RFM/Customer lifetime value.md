## [Machine learning project : Customer Lifetime Value Prediction]()

### Project Background
* Customer lifetime value (CLV) is the predicted sum total of all future revenues (or profits) that a particular customer will generate for a business. 
Using accurate estimates of CLV as the basis for marketing decisions will maximize the company's revenues (or profits).  Customer Lifetime Value prediction uses historical data to predict future sales.
* Using the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the Credit card Data in order to gain some insights that could be beneficial.
* With the data that is owned, it performs data processing based on business objectives, data exploration and generates insights for the company.

#### Step 1 : Ask
##### 1.1 Introduction 
Customer lifetime value is important because allows to maximizes the value of every customer relationship.  Provides a picture of the business long-term and its financial viability. Customer lifetime value predicts how much revenue a customer can bring to the business, improve retention, allocate the right resources, and make informed decisions about marketing and sales strategies.

*Lifetime Value: Total Gross Revenue - Total Cost*
This equation now gives us the historical lifetime value. If we see some customers having very high negative lifetime value historically, it could be too late to take an action. Build a simple machine-learning model that predicts our customer's lifetime value.

##### 1.2 Business Task
Analyze  to calculate the customer lifetime value

##### 1.3 Business Objective
1.	Define an appropriate time frame for Customer Lifetime Value calculation
2.	Identify the features we are going to use to predict the future and create
3.	Calculate lifetime value (LTV) for training the machine learning model
4.	Build, run, and evaluate the machine-learning model

##### 1.4 Deliverables
1.	A clear summary of the business task
2.	A description of all data sources used
3.	Documentation of any cleaning or manipulation of data
4.	A summary of the analysis
5.	Supporting visualizations and key findings
6.	High-level content recommendations based on the analysis

#### Step 2 : Prepare
##### 2.1 Dataset Used
The data is publicly from Kaggle.
This dataframe contains 8 variables that correspond to:
* InvoiceNo: Invoice number. Nominal, a 6-digit integral number uniquely assigned to each transaction. If this code starts with letter 'c', it indicates a cancellation.
* StockCode: Product (item) code. Nominal, a 5-digit integral number uniquely assigned to each distinct product.
* Description: Product (item) name. Nominal.
* Quantity: The quantities of each product (item) per transaction. Numeric.
* InvoiceDate: Invice Date and time. Numeric, the day and time when each transaction was generated.
* UnitPrice: Unit price. Numeric, Product price per unit in sterling.
* CustomerID: Customer number. Nominal, a 5-digit integral number uniquely assigned to each customer.
* Country: Country name. Nominal, the name of the country where each customer resides.

#### Step 3 : Process
To start processing data, use python as one of the data analytics tools, to import datasets, and carry out cleaning and organizing processes. 

#### Step 4 : Analyze
Analysis using python see for details. 
[Click here](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Data%20Science/Machine%20Learning/RFM/Project%20%20Customer%20Lifetime%20Value%20Prediction.ipynb)

#### Step 5 : Share 
* The results of the machine learning model to predict Customer Lifetime Value show an overall accuracy of 92%, which indicates that the model is able to make accurate predictions for the majority of the data points.
* Looking at the precision, recall, and F1-score metrics for each class, we can see that the model performs best for the first class (0), with a precision of 0.96 and a recall of 0.94. This means that the model is able to correctly identify and predict the majority of the customers who have a low lifetime value.
* The model performs slightly less well for the second class (1), which represents customers with a moderate lifetime value. The precision and recall for this class are 0.80 and 0.84, respectively, indicating that the model correctly predicts the majority of these customers, but also makes some false positive and false negative predictions.
* The model performs least well for the third class (2), which represents customers with a high lifetime value. Although the precision and recall for this class are both high (0.88), the small number of data points in this class means that the model is less able to accurately predict these customers.
* Overall, these results suggest that the machine learning model is effective in predicting customer lifetime value, particularly for customers with low or moderate lifetime values. However, there may be some limitations in its ability to accurately predict customers with high lifetime values, due to the relatively small number of data points in this class. Further analysis and refinement of the model may be necessary to improve its performance for this group of customers.

#### Step 6 : Act 
The results of the machine learning model to predict Customer Lifetime Value can provide valuable insights and inform strategic business decisions.

1. Firstly, the high accuracy and precision for customers with low lifetime values (class 0) suggest that the company may want to focus on retaining these customers by implementing loyalty programs, targeted marketing campaigns, or other initiatives to improve customer satisfaction and loyalty.
2. The model's ability to predict customers with moderate lifetime values (class 1) also provides an opportunity for the company to focus on increasing the value of these customers by encouraging them to purchase additional products or services, or by offering targeted promotions or incentives.
3. However, the relatively low number of data points for customers with high lifetime values (class 2) suggests that the company may need to invest more resources in collecting and analyzing data on these customers to better understand their behavior and preferences. This could include conducting market research, gathering customer feedback, or implementing more advanced data analytics techniques.
