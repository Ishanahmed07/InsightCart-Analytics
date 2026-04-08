# 🛒 InsightCart Analytics — Retail Sales Intelligence Engine

## 📌 Project Overview

**InsightCart Analytics** is an end-to-end data analytics project designed to analyse retail transaction data and generate actionable business insights.

The project simulates a real-world retail environment where raw transactional data is processed, stored, analysed, and visualised to support data-driven decision-making.

It demonstrates the complete data lifecycle — from data cleaning and transformation to SQL-based analysis and interactive dashboard development.

---

## 🧠 Business Context

The dataset represents an online retail store operating across multiple countries, with transactions involving thousands of customers and products.

The objective is to:

* Understand **sales performance trends**
* Identify **high-value customers**
* Analyse **top-performing products**
* Evaluate **geographical revenue distribution**

---

## 🧰 Tech Stack

* **Python** (Pandas, NumPy) — Data cleaning & feature engineering
* **PostgreSQL** — Data storage & querying
* **SQL** — Data analysis & aggregation
* **Power BI** — Interactive dashboard & visualisation

---

## 🗂️ Dataset

The dataset was taken from Kaggle (available at: https://www.kaggle.com/datasets/tunguz/online-retail) that includes transactional retail data with:

* Customer IDs
* Product descriptions
* Quantity purchased
* Unit price
* Invoice date
* Country

### 🔧 Feature Engineering:

* Created **Revenue = Quantity × Unit Price**
* Extracted **Month & Year** from transaction date

---

## ⚙️ Project Workflow

### 1️⃣ Data Cleaning & Transformation (Python)

* Removed missing and invalid records
* Handled negative quantities and anomalies
* Converted data types
* Engineered new features (Revenue, Month, Year)

---

### 2️⃣ Database Design (PostgreSQL)

* Imported cleaned dataset into PostgreSQL
* Structured table for efficient querying and aggregation

---

### 3️⃣ Data Analysis (SQL)

Performed analytical queries to extract key insights:

* Total revenue and order volume
* Monthly sales trends
* Top customers by revenue
* Best-selling products
* Revenue by country

### 📌 Example SQL Query

```sql
-- Monthly Revenue Trend
SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Revenue) AS revenue
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;
```

---

### 4️⃣ Data Visualisation (Power BI)

Developed an interactive dashboard with:

* KPI metrics (Total Revenue, Orders, Customers)
* Time-series analysis (monthly trends)
* Top products by revenue
* Customer-level revenue contribution
* Geographic revenue distribution (map view)
* Interactive filters (Year, Country)

---

## 📊 Dashboard Highlights

* **Total Revenue:** £8.91M

* **Total Orders:** 397K+

* **Total Customers:** 4,339

* Strong **seasonal trends**, with revenue peaking in **Q4 (Nov–Dec)**

* Significant revenue contribution from **high-value customers**

* A small group of products drives a large share of total sales

* Majority of sales concentrated in **European markets**

---

## 📸 Dashboard Preview

![f](https://github.com/user-attachments/assets/e579d621-1fd6-42bb-9fd7-bb79d7242164)


---

## 📈 Key Insights

* Top **20% of customers contribute a large proportion of total revenue**, indicating strong customer concentration
* Sales show clear **seasonality**, with the highest revenue observed during holiday periods
* Certain products consistently outperform others, contributing significantly to overall revenue
* Geographic analysis reveals **Europe as the dominant revenue-generating region**

---

## ▶️ How to Run the Project

1. Clone the repository
2. Run the Python data cleaning script
3. Load the cleaned dataset into PostgreSQL
4. Execute SQL queries for analysis
5. Open the Power BI `.pbix` file to explore the dashboard

---

## 🚀 Conclusion

This project demonstrates strong capabilities in:

* Data cleaning and preprocessing
* SQL-based analytical thinking
* Data modelling and querying
* Business insight generation
* Dashboard design and storytelling

It reflects the ability to transform raw data into meaningful insights that support strategic decision-making.

---

## 📎 Future Improvements

* Implement **time-series forecasting** (ARIMA / Prophet)
* Apply **customer segmentation (RFM analysis / clustering)**
* Build a **real-time data pipeline**
* Deploy dashboard using **Power BI Service / Cloud**

