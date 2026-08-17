# 🛍️ Customer Shopping Behavior Analysis

## 📌 Project Overview

This project analyzes customer shopping behavior using **Python, Pandas, MySQL, and Power BI**.

The objective is to transform raw customer purchase data into meaningful business insights related to **sales performance, customer spending behavior, product performance, seasonal trends, customer segments, and discount impact**.

The project follows a complete data analytics workflow:

**Data Cleaning → Exploratory Data Analysis → SQL Business Analysis → Power BI Dashboard → Business Insights**

---

## 🎯 Business Objective

The main objective of this project is to understand customer purchasing patterns and identify insights that can help businesses make better decisions related to:

- Product performance
- Revenue generation
- Customer spending behavior
- Seasonal sales trends
- Customer demographics
- Discounts and promotions
- Purchasing frequency

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| 🐍 Python | Data cleaning and exploratory analysis |
| 🐼 Pandas | Data manipulation and analysis |
| 🗄️ MySQL | Business-focused SQL analysis |
| 📊 Power BI | Dashboard development and visualization |
| 📁 CSV | Source dataset |

---

## 📂 Dataset

The dataset contains **3,900 customer purchase records** and **18 columns**.

### Important attributes include:

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount
- Location
- Size
- Color
- Season
- Review Rating
- Subscription Status
- Shipping Type
- Discount Applied
- Promo Code Used
- Previous Purchases
- Payment Method
- Frequency of Purchases

---

# 🐍 Python & Pandas Analysis

Python and Pandas were used for:

- Loading the dataset
- Understanding the dataset structure
- Checking data types
- Identifying missing values
- Checking duplicate records
- Performing basic statistical analysis
- Cleaning and preparing the dataset for SQL analysis

The cleaned dataset was then imported into MySQL for further business analysis.

---

# 🗄️ SQL Analysis

MySQL was used to perform business-oriented analysis on customer shopping behavior.

The analysis covered topics such as:

- Total number of purchases
- Average purchase amount
- Total revenue
- Revenue by product category
- Highest-revenue products
- Revenue by season
- Revenue by age group
- Customer spending segmentation
- Discount vs. non-discount revenue
- Customer purchasing behavior
- Subscription behavior
- Purchase frequency
- Ranking and comparative analysis

### SQL concepts used

- SELECT
- WHERE
- CASE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- JOIN
- Subqueries
- CTEs
- Window Functions
- Conditional Logic

---

# 📊 Power BI Dashboard

The Power BI dashboard provides an interactive overview of customer shopping behavior and business performance.

### Key KPIs

- **Total Revenue:** $233K
- **Total Purchases:** 3,900
- **Average Purchase:** $59.76
- **Average Rating:** 3.75

### Dashboard Analysis

The dashboard includes:

- Revenue by Product Category
- Revenue by Season
- Revenue by Age Group
- Top 10 Products by Revenue
- Customer Spending Segments
- Revenue by Discount Status

---

## 🔍 Key Business Insights

### 💰 Overall Performance

The dataset contains **3,900 purchase transactions** generating approximately **$233K in total revenue**.

### 👕 Product Category

**Clothing** generated the highest revenue among the product categories.

### 🍂 Seasonal Performance

**Fall** recorded the highest revenue among the analyzed seasons.

### 👥 Age Group

The **Young Adult** segment generated the highest revenue among the analyzed age groups.

### 🛍️ Product Performance

**Blouse** was identified as the highest-revenue product among the Top 10 products.

### 💳 Spending Segments

Customers were classified into:

- Low Spenders
- Medium Spenders
- High Spenders

High Spenders represented the largest share of purchase transactions.

### 🏷️ Discount Analysis

Non-discounted purchases generated higher total revenue than discounted purchases in this dataset.

---

# 📁 Project Structure

```text
customer-shopping-behavior-analysis/
│
├── README.md
│
├── python/
│   └── customer_shopping_analysis.ipynb
│
├── sql/
│   └── customer_shopping_analysis.sql
│
├── powerbi/
│   └── customer_shopping_dashboard.pbix
│
└── images/
    └── customer-shopping-dashboard.png
