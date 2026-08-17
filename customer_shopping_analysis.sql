/* ============================================================
       CUSTOMER SHOPPING BEHAVIOR ANALYSIS
   ============================================================
Objective:
Analyze customer shopping behavior using MySQL to identify
sales patterns, customer segments, product performance,
discount behavior, and seasonal performance.
Database: customer_behavior
Table: customer_data
Records: 3,900
Tools:
MySQL, SQL, Python/Pandas
============================================================
*/
Use customer_behavior;
-- -- SQL BUSINESS ANALYSIS

-- -- Q1. How many customer records are present in the dataset?
SELECT COUNT(*) AS total_records
FROM customer_data;

-- -- Q2. What is the average purchase amount across all customers?
SELECT ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM customer_data;

-- -- Q3. What is the total revenue generated from all purchases?
SELECT SUM(purchase_amount) AS total_revenue
FROM customer_data;

-- -- Q4. Which product categories generate the highest revenue?
SELECT
    category,
    SUM(purchase_amount) AS total_revenue
FROM customer_data
GROUP BY category
ORDER BY total_revenue DESC;

-- -- Q5. Which product generates the highest revenue?
SELECT
    item_purchased,
    SUM(purchase_amount) AS total_revenue
FROM customer_data
GROUP BY item_purchased
ORDER BY total_revenue DESC
LIMIT 1;

-- -- Q6. What is the average purchase amount by customer gender?
SELECT
    gender,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM customer_data
GROUP BY gender
ORDER BY average_purchase_amount DESC;

-- -- Q7. Which age group has the highest average purchase amount?
SELECT
    age_group,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM customer_data
GROUP BY age_group
ORDER BY average_purchase_amount DESC;

-- -- Q8. Which customers are spending more than the overall average purchase amount?
SELECT
    customer_id,
    item_purchased,
    category,
    purchase_amount
FROM customer_data
WHERE purchase_amount > (
    SELECT AVG(purchase_amount)
    FROM customer_data
)
ORDER BY purchase_amount DESC;

-- -- Q9. How can we segment customers based on their purchase amount?
SELECT
    customer_id,
    purchase_amount,
    CASE
        WHEN purchase_amount < 40 THEN 'Low Spender'
        WHEN purchase_amount BETWEEN 40 AND 70 THEN 'Medium Spender'
        ELSE 'High Spender'
    END AS spending_segment
FROM customer_data;

-- -- Q10. How much revenue comes from each spending segment?
WITH customer_segments AS (
    SELECT
        customer_id,
        purchase_amount,
        CASE
            WHEN purchase_amount < 40 THEN 'Low Spender'
            WHEN purchase_amount BETWEEN 40 AND 70 THEN 'Medium Spender'
            ELSE 'High Spender'
        END AS spending_segment
    FROM customer_data
)

SELECT
    spending_segment,
    COUNT(*) AS number_of_customers,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customer_segments
GROUP BY spending_segment
ORDER BY total_revenue DESC;

-- -- Q11. Which products have generated more than $9,000 in total revenue?
SELECT
    item_purchased,
    SUM(purchase_amount) AS total_revenue
FROM customer_data
GROUP BY item_purchased
HAVING SUM(purchase_amount) > 9000
ORDER BY total_revenue DESC;

-- -- Q12. How can we rank products based on their total revenue?
SELECT
    item_purchased,
    SUM(purchase_amount) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(purchase_amount) DESC
    ) AS revenue_rank
FROM customer_data
GROUP BY item_purchased
ORDER BY revenue_rank;

-- -- Q13. Do customers who use discounts spend more or less on average?
SELECT
    discount_applied,
    COUNT(*) AS number_of_customers,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customer_data
GROUP BY discount_applied
ORDER BY average_purchase DESC;

-- -- Q14. Which customer age group generates the highest revenue?
SELECT
    age_group,
    COUNT(*) AS number_of_customers,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customer_data
GROUP BY age_group
ORDER BY total_revenue DESC;

-- -- Q15 Which season generates the highest revenue?
SELECT
    season,
    COUNT(*) AS number_of_purchases,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customer_data
GROUP BY season
ORDER BY total_revenue DESC;

/* Conclusion:
This project analyzed 3,900 customer shopping records using Python/Pandas for data preparation and MySQL for business-
oriented SQL analysis. The analysis examined revenue performance, customer spending behavior,product performance, age 
groups, discounts, and seasonal purchasing patterns. The findings showed that Clothing was the strongest revenue-
generating category, Blouse was the top individual product by revenue and High Spenders contributed the largest share 
of revenue. Young Adults showed the highest average purchase amount and revenue contribution among the age groups,  
while Fall was the strongest-performing season.The analysis demonstrates how SQL can be used to transform raw customer 
transaction data into actionable business insights for product planning, customer segmentation and sales strategy./*
