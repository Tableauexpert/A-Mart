# A-Mart
This document covers the workflow including the following :
1. Project Scoping (based on first discussion with the stakeholders, it is likely to enhance based on findings)
2. Data Collection
3. Data Preprocessing
4. Data Analysis
5. Findings and Insights

## 1.Project Scope:
**Business Context**

A-Mart, a renowned e-commerce platform, offers a diverse range of products. To drive revenue growth in the upcoming fiscal year, the Sales and Marketing department has set an objective: 
enhancing revenues by targeting existing customers through precision marketing. The ultimate decision regarding this strategy rests with the Vice President of Sales

**GAP Analysis**

In the current year, the company has met its projected targets successfully. Nonetheless, the company's recent focus has predominantly been on acquiring new customers, an endeavor known for its costliness. 
In the forthcoming year, budget constraints demand a more resourceful approach. Notably, the company has not harnessed any marketing efforts for its existing customer base thus far. 

**Vision**

The CXO suggested to implement the RFM(Recency, Frequency, Monetary) Model.
Recency (R): When was the user’s most recent transaction?
Frequency (F): How often does the customer transact?
Monetary (M): What is the size of the user’s transaction?
Stakeholders will receive dynamic dashboards that update every 15 days. These dashboards are designed to pinpoint the top-tier customers responsible for contributing 50% or more of the total revenue. Furthermore, they will provide valuable insights by segmenting customers based on their RFM Scores and showcasing Customer Lifetime Value (LTV) in later versions.

**Mockup**
1. Proactive Customer Engagement:
Personalized product recommendations in popular categories based on RFM Scores.
Timely notifications ensure customers discover products tailored to their preferences.

2. Tailored Savings:
Precision-based discounts, meticulously calculated from Customer Lifetime Value and purchasing patterns.
Customers receive exclusive offers that resonate with their shopping history.

## 2.Data Collection:
Our data is currently housed within a robust MySQL database, leveraging the following core tables:

Customer_t:
Primary Repository of Customer Information, it contains customer particulars, including names, addresses, emails, occupations, and dates of birth.

Sales_t:
Sales Records Database which stores comprehensive sales data, encompassing total orders, revenue metrics, first and last order dates, revenue and orders analyzed by week, day, and time. All data is categorized by customer, offering a rich overview of customer transaction history.
These two tables are intrinsically linked through the unique Customer ID, providing a structured foundation for comprehensive data analysis and customer relationship management.

 ## 3.Data Preprocessing:

The company uses MySQL database for storing records. In this crucial stage, the data undergoes meticulous processing through SQL to detect and rectify any anomalies or discrepancies within the dataset. The SQL file utilized for executing these data transformations can be accessed via [this link](https://github.com/Tableauexpert/A-Mart/blob/main/preprocess.sql)

After running the last query in the above SQL file, we will get the desired data , which we will use for conducting analysis and presenting dashboards in the steps ahead. For this purpose we will save the output of the final query and export it as a CSV file.

## 4. Data Analysis

In this stage, we will be conducting an Exploratory Analysis of the data using python. This step will provide insights and context for more complex visualisations in Tableau.
Here is a link to the [jupyer notebook](https://github.com/Tableauexpert/A-Mart/blob/main/Exploratory_Data_Analysis_A_Mart.ipynb) used for conducting this anlaysis.

To view the Tableau Dashboard - [Click Here](https://public.tableau.com/app/profile/mansi.vermani1783/viz/E-Kart_Customer_Metric_16992262969920/CustomerMetricOverview)
Note: This is only the first iteration of the dashboard.

## 5. Findings and Insights

Following observations are made from the above analysis:

1. only 18 % customers are active i.e who have made purchase in the last 14 days
2. 53% cutomers are inactive i.e. who have not made any purchase in last 56 days or more
3. Avg value of an order is USD 136. 75% of the orders have order value less than USD 160.
4. 55 % of revenue comes from customers that belong to medium order bucket, 40 % revenue comes from low order bucket customers 
5. Less than 50% of the customer have purchase frequency less than 60-days(2 months)
6. Majority customers are b/w the age 15-30. 38.14% Revenue is generated from customer whose age category is between 20-29

   
The company must target only these two segments of customers (medium and low order bucket) 
It should also target inactive customers by offering them personalised offers in regular intervals.

