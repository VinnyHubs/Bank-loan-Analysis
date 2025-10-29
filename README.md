🏦 Bank Loan Analysis – End-to-End Data Analytics Project
📊 Overview

The Bank Loan Analysis Project provides a comprehensive view of bank loan data to help financial institutions understand customer behavior, track loan performance, and reduce default risk.
It combines SQL, Python, Power BI, and Excel to deliver data-driven insights through an interactive dashboard.

🧩 Problem Statement

Banks often struggle to analyze large volumes of loan data efficiently to identify:

How many loans are performing well or defaulting (Good vs Bad Loans).

Trends in funded amounts, loan purposes, and customer demographics.

Key metrics (KPIs) such as total funded amount, interest rates, and DTI ratios.

How different factors (state, term, purpose, or employment length) affect loan repayment.

This project aims to analyze and visualize loan data end-to-end, enabling decision-makers to:
✅ Track loan performance over time
✅ Identify risk patterns
✅ Improve lending strategies

🧭 Approach
🔹 Step 1: Data Collection

Source: bank_loan_data imported into SQL Server.

The dataset contains information such as loan ID, issue date, amount, purpose, term, interest rate, DTI, loan status, and customer details.

🔹 Step 2: Data Cleaning & Preprocessing

Removed missing or inconsistent data.

Converted date columns and standardized numeric fields.

Verified data integrity for further analysis using SQL and Python.

🔹 Step 3: Data Analysis (SQL)

Created SQL queries to calculate:

Total Loan Applications

Total Funded & Received Amounts

Good Loan vs Bad Loan Percentages

Average Interest Rate & DTI

Loan Distribution by Purpose, State, Term, and Employment Length

🔹 Step 4: Exploratory Data Analysis (Python)

Used pandas, matplotlib, and seaborn to explore data trends.

Analyzed relationships between loan amount, interest rate, term, and loan status.

Identified key patterns contributing to defaults.

🔹 Step 5: Visualization & Dashboarding
📈 Power BI Dashboard (bank loan dashboard.pbix)

Built interactive KPIs and visualizations:

Good vs Bad Loan Performance

Total Funded & Received Amounts

Monthly Loan Trends

Purpose-wise and State-wise Analysis

Interest Rate and DTI Comparisons

Included slicers for Month, Loan Status, and Grade for easy filtering.

📗 Excel Dashboard (Bank loan analysis excel dashboard.xlsx)

Created pivot-based dashboard with metrics and slicers.

Lightweight version for summary reporting.

🔹 Step 6: Insights & Reporting

Delivered actionable insights through Power BI visuals.

Highlighted areas of high default risk and loan performance opportunities.

⚙️ Tech Stack
Tool / Language	Purpose
SQL Server	Data extraction, KPI calculation, and aggregation
Python (pandas, matplotlib, seaborn)	Data cleaning and exploratory analysis
Power BI	Interactive dashboard creation
Excel	Data summary and lightweight dashboard
GitHub	Project version control and portfolio showcase
📈 Key Insights

📌 Good Loans: ~85% of total issued loans (Fully Paid or Current).
📌 Bad Loans: ~15%, requiring better credit policy management.
📌 Top Loan Purposes: Debt Consolidation & Credit Card.
📌 High-Volume States: California (CA), New York (NY), and Texas (TX).
📌 DTI & Interest Rate: Major contributors to loan default risk.

🗂️ Project Files
File Name	Description
bank_loan.sql	SQL scripts for KPI and data analysis
Bank Loan Analysis.ipynb	Python notebook for cleaning and EDA
bank loan dashboard.pbix	Power BI interactive dashboard
Bank loan analysis excel dashboard.xlsx	Excel pivot dashboard for quick analysis
🎯 Learning Outcomes

Built a complete analytics solution from raw data to business insights.

Enhanced SQL querying, Python EDA, and Power BI storytelling skills.

Learned how to design data-driven dashboards and track KPIs.

Understood loan risk metrics such as DTI, Interest Rate, and Default Ratio.
