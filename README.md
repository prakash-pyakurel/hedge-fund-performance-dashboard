# Hedge Fund Portfolio Performance Dashboard

📅 Built using **Azure Data Factory, Azure SQL, REST API, and Power BI** — May 2025

---

## 📌 Overview

This project demonstrates an end-to-end data pipeline that ingests, transforms, and visualizes hedge fund portfolio data using Azure and Power BI. It simulates real-world data analysis of fund performance, volatility, strategy allocation, and portfolio returns.

---

## 🧰 Tools & Services Used

- Azure Data Factory (pipelines, dataflows)
- Azure Blob Storage
- Azure SQL Database
- REST API (sample JSON ingestion)
- CSV & JSON source files (from Kaggle & dummy API)
- Power BI
- T-SQL

---

## 🔄 ETL Process Flow

1. **Data Ingestion**
   - CSV & JSON files uploaded to Azure Blob Storage
   - REST API called via ADF Web activity

2. **Data Factory Transformations**
   - Merge data from 3 sources
   - Clean, cast types, rename fields
   - Generate derived columns like MonthYear and Return%
   - Label fraud flags using JSON mappings

3. **Sink to Azure SQL**
   - Cleaned data written to final `HedgeFundAnalytics` table

4. **Power BI**
   - Connected to Azure SQL
   - Built dashboards with KPIs, donut charts, tables, and volatility analysis

---

## 🧪 Sample Data Fields

- `fund_id`, `ticker`, `strategy`, `manager`
- `aum`, `quantity`, `purchase_price`, `current_price`
- `NAV`, `return_pct`, `volatility`
- `inception_date`, `status`, `asset_class`, `date`
- JSON mapping file used to label churn/fraud (optional advanced logic)

---

## 📊 Power BI Dashboard Highlights

- 📌 KPIs: AUM, Investment, Value, Gain/Loss, Return%
- 📉 Avg Return % by Strategy
- 🍩 Current Value by Manager (Donut)
- 📈 AUM Trend over MonthYear
- 🔥 Top 5 Most Volatile Funds
- 🧭 Gauge for Portfolio Volatility (with color-coded zones)
- 📋 Detailed Table View with totals

---

## 🖼 Azure & Dashboard Screenshots

### 🔷 Azure Screenshots
![ADF Pipeline](screenshots/adf_pipeline_success.png)  
![Dataflow Join](screenshots/join_transform.png)  
![REST API](screenshots/rest_api_source.png)

### 📊 Power BI Dashboard
![Dashboard](screenshots/dashboard_full.png)

---

## 🗄 SQL Table Schema

SQL schema is provided to recreate the `HedgeFundAnalytics` table:

🔗 [create_hedgefund_table.sql](sql/create_hedgefund_table.sql)

---

## 🏗 ARM Template (Optional)

You can deploy the ADF pipeline using the included ARM template:

📄 [adf_arm_template.json](adf/adf_arm_template.json)

To import:
1. Go to ADF Studio → Manage → ARM Templates
2. Click **Import ARM template**
3. Upload the JSON file

---

## 🔐 Notes

- No sensitive or client data is shared
- Data was created for personal learning and demonstration
- Project designed to simulate real-world pipeline challenges

---

## 📬 Contact

Made by [Prakash Pyakurel](https://www.linkedin.com/in/prakash-pyakurel/)  
📧 prakashpyakurel@outlook.com


