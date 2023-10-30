-- Lets understand what is there in CUSTOMER_T table

SELECT * FROM CUSTOMER_T;	

-- What is the number of rows in the table and do we have any duplicates of customers?
 -- Total number of rows in the table CUSTOMER_T 
SELECT COUNT(*) AS NUMBER_OF_ROWS from CUSTOMER_T;
 
 -- Are all the customers on the table unique customers?
SELECT COUNT(DISTINCT CUSTOMER_ID) AS DISTINCT_COUNT_CUSTOMER FROM CUSTOMER_T;

--  What are the disticnt occupation of the customers
 SELECT DISTINCT OCCUPATION FROM CUSTOMER_T;

-- Now lets observe SALES_T
SELECT * FROM SALES_T;

-- Now, Lets check the number of columns & rows in the sales table
SELECT COUNT(*) AS NUMBER_OF_ROWS FROM SALES_T; -- gives total number of rows

-- Below query gives total number of columns
SELECT COUNT(*) AS NUMBER_OF_COLUMNS FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'SALES_T';

-- Check the data type of the columns 
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'SALES_T';

/* 
From the customer_t & sales_t there are certain columns that need to be cleaned and certain columns which can be segregated into categories
in order to bucket the customer accordingly and finally lets join the table and export them as a CSV
*/

WITH cust AS (
SELECT
		CUSTOMER_ID,
		EMAIL_ID,
		FIRST_NAME,
		LAST_NAME,
		REPLACE(OCCUPATION, 'Blue Collar','Blue-Collar' ) as OCCUPATION,
		TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age,
        CASE 
			WHEN (TIMESTAMPDIFF(YEAR, dob, CURDATE()) <= 19) THEN '19 & below'
			WHEN (TIMESTAMPDIFF(YEAR, dob, CURDATE()) <= 29 AND TIMESTAMPDIFF(YEAR, dob, CURDATE()) >= 20) THEN '20-29'
			WHEN (TIMESTAMPDIFF(YEAR, dob, CURDATE()) <= 39 AND TIMESTAMPDIFF(YEAR, dob, CURDATE()) >= 30) THEN '30-39'
			WHEN (TIMESTAMPDIFF(YEAR, dob, CURDATE()) <= 49 AND TIMESTAMPDIFF(YEAR, dob, CURDATE()) >= 40) THEN '40-49'
			ELSE '50 and above'
		END AGE_CATEGORY
FROM CUSTOMER_T
GROUP BY 1,2,3,4,5,6
)
SELECT
		c.CUSTOMER_ID,
		c.EMAIL_ID,
		c.FIRST_NAME,
		c.LAST_NAME,
        c.OCCUPATION,
        c.AGE,
        c.AGE_CATEGORY,
        s.TOTAL_ORDERS,
		s.REVENUE,
		s.AVERAGE_ORDER_VALUE,
		s.CARRIAGE_REVENUE,
		s.AVERAGESHIPPING,
		s.FIRST_ORDER_DATE,
		s.LATEST_ORDER_DATE,
		s.AVGDAYSBETWEENORDERS,
		s.DAYSSINCELASTORDER,
		s.MONDAY_ORDERS,
		s.TUESDAY_ORDERS,
		s.WEDNESDAY_ORDERS,
		s.THURSDAY_ORDERS,
		s.FRIDAY_ORDERS,
		s.SATURDAY_ORDERS,
		s.SUNDAY_ORDERS,
		s.MONDAY_REVENUE,
		s.TUESDAY_REVENUE,
		s.WEDNESDAY_REVENUE,
		s.THURSDAY_REVENUE,
		s.FRIDAY_REVENUE,
		s.SATURDAY_REVENUE,
		s.SUNDAY_REVENUE,
		s.WEEK1_DAY01_DAY07_ORDERS,
		s.WEEK2_DAY08_DAY15_ORDERS,
		s.WEEK3_DAY16_DAY23_ORDERS,
		s.WEEK4_DAY24_DAY31_ORDERS,
		s.WEEK1_DAY01_DAY07_REVENUE,
		s.WEEK2_DAY08_DAY15_REVENUE,
		s.WEEK3_DAY16_DAY23_REVENUE,
		s.WEEK4_DAY24_DAY31_REVENUE,
		s.TIME_0000_0600_ORDERS,
		s.TIME_0601_1200_ORDERS,
		s.TIME_1200_1800_ORDERS,
		s.TIME_1801_2359_ORDERS,
		s.TIME_0000_0600_REVENUE,
		s.TIME_0601_1200_REVENUE,
		s.TIME_1200_1800_REVENUE,
		s.TIME_1801_2359_REVENUE
from
cust as c LEFT JOIN sales_t as s 
on c.CUSTOMER_ID = s.CUSTOMER_ID;
