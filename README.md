# A-kart
This document covers the workflow including the following :
1. Project Scoping (based on first discussion with the stakeholders, it is likely to enhance based on findings)
2. Data collection
3. Data Preprocessing
4. Data Analysis
5. Findings, Insights and Recommendations
6. Dashboarding

## 1.Project Scope:
**Business Context**

A-Kart, a renowned e-commerce platform, offers a diverse range of products. To drive revenue growth in the upcoming fiscal year, the Sales and Marketing department has set an objective: 
enhancing revenues by targeting existing customers through precision marketing. The ultimate decision regarding this strategy rests with the Vice President of Sales

**GAP Analysis**

In the current year, the company has met its projected targets successfully. Nonetheless, the company's recent focus has predominantly been on acquiring new customers, an endeavor known for its costliness. 
In the forthcoming year, budget constraints demand a more resourceful approach. Notably, the company has not harnessed any marketing efforts for its existing customer base thus far. 

**Vision**

The Sales and Marketing department will receive dynamic dashboards that update every 15 days. These dashboards are designed to pinpoint the top-tier customers responsible for contributing 50% or more of the total revenue. Furthermore, they provide valuable insights by segmenting customers based on their RFM Scores and showcasing Customer Lifetime Value (LTV).

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

 ## <span style="background-color: yellow;"> 3.Data Preprocessing:</span>


In this crucial stage, the data undergoes meticulous processing through SQL to detect and rectify any anomalies or discrepancies within the dataset. The SQL file utilized for executing these data transformations can be accessed via the following link:
   `#ffffff`
