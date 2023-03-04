## [Machine learning project : Lending company risk prediction]()

### Project Background
* Become an intern Data Scientist at ID/X Partners, involved in a project from a lending company. Collaborated with various other departments on this project to provide technology solutions for the company. The task in this project is to build a model that can predict credit risk using a dataset provided by the company which consists of data on loans received and rejected.
* Using the six steps of the data analysis process: ask, prepare, process, analyze, share, and act, to break down how I analyzed the Credit card Data in order to gain some insights that could be beneficial.
* With the data that is owned, it performs data processing based on business objectives, data exploration and generates insights for the company.

#### Step 1 : Ask
##### 1.1 Introduction 
One of the risks that credit card financing companies experience is having problems with customers who are unable or unwilling to pay their credit card installments. This can lead to high levels of non-performing loans (NPLs), which can reduce a company's profits and increase the risk of loss. In this case how to increase the number of current consumers and reduce or reject potential customers who have a high chance of experiencing a risk of default. As data scientist maximizes data to predict the payment ability of their consumers, thus ensuring customers who are able to make repayments are not rejected when applying for a loan and reject loan applications with consumers who have a high risk of default.

##### 1.2 Business Task
  How to increase the number of current consumers and reduce or reject potential customers who have a high chance of experiencing a risk of default.

##### 1.3 Business Objective
1.	Build, run, and evaluate the machine-learning model. Using random forest algorithm for modeling to predict lending company risk prediction. And 
evaluate Model Performance using AUC and KS.
2.	Share the results and insights for the company and recommendations for steps that need to be taken

##### 1.4 Deliverables
1.	A clear summary of the business task
2.	A description of all data sources used
3.	Documentation of any cleaning or manipulation of data
4.	A summary of the analysis
5.	Supporting visualizations and key findings
6.	High-level content recommendations based on the analysis

#### Step 2 : Prepare
##### 2.1 Dataset Used
  The data is publicly from IDX 

#### Step 3 : Process
  To start processing data, use python as one of the data analytics tools, to import datasets, and carry out cleaning and organizing processes. 

#### Step 4 : Analyze
  Analysis using python see for details. 
[Click here](https://github.com/Haniaghnia/Hani_Portfolio/blob/main/Data%20Science/Machine%20Learning/Lending%20company/Credit%20Loans%20.ipynb)

#### Step 5 : Share 
  In credit risk modeling using Random Forest Algorithm, the performance metrics AUC (Area Under the Curve) and KS (Kolmogorov-Smirnov) are commonly used to evaluate the accuracy of the model.
* An AUC of 0.857 means that the model has a good ability to distinguish between good and bad borrowers. An AUC of 1.0 would represent a perfect model, while an AUC of 0.5 would indicate a completely random model.
* The KS statistic measures the maximum difference between the cumulative distribution functions of good and bad borrowers. A KS of 0.56 indicates a moderate level of separation between the good and bad borrowers. A higher KS value indicates a better model performance.
* Overall, an AUC of 0.857 and a KS of 0.56 suggest that the Random Forest model has good predictive power and is able to distinguish between good and bad borrowers to a moderate degree. However, it is important to note that these metrics do not provide a complete picture of model performance and should be interpreted in conjunction with other relevant metrics and business considerations.

#### Step 6 : Act 
  Based on the results of the Lending company's risk prediction using the Random Forest Algorithm model and evaluating the results of AUC = 0.857 and KS = 0.56, the company can take the following steps:
1.	Refine lending criteria: Companies can use models to improve lending criteria by setting more stringent criteria for perceived high-risk borrowers and offering more favorable terms for perceived low-risk borrowers.
2.	Monitor model performance: Companies should monitor and evaluate model performance to make future adjustments, including re-evaluating relevant features, adjusting model hyperparameters, or updating training data.

