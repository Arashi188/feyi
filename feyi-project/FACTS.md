# FACTS.md — Project & Portfolio Verification Reference

This document records all verified facts, exact quantitative values, source files, and dataset limitations for Adebayo Omofeyi's Data Analyst Portfolio.

---

## 1. Candidate & Contact Information

| Item | Value | Source / Verification Method |
|---|---|---|
| **Full Name** | Adebayo Omofeyi | Confirmed from LinkedIn URL: `https://www.linkedin.com/in/adebayo-omofeyi-767283310` |
| **Role** | Data Analyst | Provided by candidate |
| **Location** | Lagos, Nigeria | Provided by candidate |
| **Opportunities** | Data analyst roles, internships, and freelance projects | Provided by candidate |
| **Email** | `ofeadebayo928@gmail.com` | Verified contact |
| **Phone Numbers** | `08143198332`, `08128316442` | Formatted as `tel:+2348143198332` and `tel:+2348128316442` |
| **GitHub** | `https://github.com/0fey001` | Account confirmed |
| **Target Repository** | `0fey001.github.io` | GitHub Pages repository |

---

## 2. Project Verification Matrix

### Project 1: Business Financial Performance Dashboard (Excel)
- **Source File:** `Business_Financial.xlsx` (6.3 MB)
- **Dataset Nature:** Practice dataset (Nigerian business context, currency in Nigerian Naira, ₦).
- **Structure Verified:**
  - **11 Linked Data Tables:** `Date`, `Categories`, `Regions`, `Departments`, `Products`, `Customers`, `Employees`, `Sales`, `Expenses`, `Budget`, `Targets`.
  - **2 Dashboard Sheets:** `Dashboard`, `Dashboard(2)` + 1 calculation sheet (`Pivot tb`).
  - **PivotTables & Charts:** 24 Pivot cache definitions / tables and 36 chart XML parts, powering 12 core PivotTables and 12 dashboard charts.
- **Data & Metrics Verified:**
  - **Sales Records:** Exactly 8,000 order rows (header on row 1, rows 2 to 8,001).
  - **Date Range:** Order date serials 44927 to 46387, corresponding exactly to **January 1, 2023 through December 31, 2026**.
  - **Total Net Sales:** **₦9,633,069,906.76** (approx. ₦9.63 billion).
  - **Regional Sales Breakdown (Net Sales in NGN):**
    - Lagos (Top): **₦1,684,498,380.65** (~₦1.68bn)
    - South East: **₦1,645,100,916.01** (~₦1.65bn)
    - North: **₦1,612,266,679.33** (~₦1.61bn)
    - South South: **₦1,607,675,431.81** (~₦1.61bn)
    - North Central: **₦1,589,855,678.67** (~₦1.59bn)
    - South West (Lowest): **₦1,493,672,820.29** (~₦1.49bn, trailing Lagos by ~11.3%)
  - **Sales Channels Breakdown (Net Sales in NGN):**
    - Online (Top): **₦2,505,250,073.25** (~₦2.51bn)
    - Distributor: **₦2,435,609,150.42** (~₦2.44bn)
    - Direct: **₦2,370,497,052.90** (~₦2.37bn)
    - Retail (Lowest): **₦2,321,713,630.19** (~₦2.32bn)
  - **Product Categories Breakdown (Net Sales in NGN):**
    - Office Supplies (Top): **₦1,799,111,479.13** (~₦1.80bn)
    - Industrial Equipment: **₦1,779,221,152.39** (~₦1.78bn)
    - Electronics: **₦1,626,359,776.49** (~₦1.63bn)
    - Home & Living: **₦1,550,583,572.04** (~₦1.55bn)
    - Packaging: **₦1,504,713,645.81** (~₦1.50bn)
    - Beverages (Lowest): **₦1,373,080,280.90** (~₦1.37bn)
  - **Expenses Table:** Exactly 1,800 expense records.
  - **Total Expenses:** **₦2,773,806,094.07** (~₦2.77 billion).
  - **Customers:** Exactly 600 unique customer records.

---

### Project 2: Messy Sales Data to Power BI Dashboard
- **Source Files:**
  - `Power_BI_Messy_Sales_Dataset.xlsx` (94 KB raw dataset)
  - `clean messy data class1.pbix.zip` (466 KB final report)
  - `intermediate.pbix.zip` (300 KB practice checkpoint)
- **Dataset Nature:** Practice dataset designed to test data cleaning and Power Query transformation.
- **Audit Findings Verified:**
  - **Total Rows:** Exactly 1,015 data rows (1,016 rows including header).
  - **Total Columns:** Exactly 16 fields (`Order_ID`, `Order_Date`, `Region`, `Customer_Type`, `Salesperson`, `Category`, `Product`, `Quantity`, `Unit_Price`, `Discount`, `Sales_Amount`, `Cost_Amount`, `Payment_Method`, `Order_Status`, `Customer_Gender`, `Customer_Age`).
  - **Duplicate Rows:** Exactly 14 duplicate rows.
  - **Missing Values (Blanks) per Column:**
    - `Customer_Gender`: 209 blanks
    - `Payment_Method`: 181 blanks
    - `Region`: 25 blanks
    - `Salesperson`: 21 blanks
    - `Product`: 20 blanks
    - `Unit_Price`: 6 blanks
    - `Order_Date`: 5 blanks
  - **Quantity Anomalies:** Exactly 5 records with Quantity <= 0.
  - **Discount Extremes:** Minimum discount is -10.00%, Maximum discount is 120.00% (both logically invalid).
  - **Date Anomalies:** Exactly 3 order dates set in the future (> December 31, 2025).
  - **Inconsistent Categorical Text Values:**
    - `Payment_Method` has 7 distinct spellings across 5 logical methods (`Bank Transfer`: 112, `POS`: 132, `Credit`: 129, `Transfer`: 110, `Cash`: 113, `cash`: 125, `pos`: 113).
    - `Order_Status` has 4 distinct variations for 3 logical statuses (`Completed`: 484, `Cancelled`: 172, `Pending`: 173, `completed`: 186).
- **Power BI Report Structure:**
  - 2 pages.
  - 20 visuals (cards, monthly bar charts, donut charts, pie charts, matrix/product tables).
  - 8 core DAX measures: `Total Sales`, `Total Profit`, `Profit Margin`, `Total Orders`, `Total Quantity`, `Average Sales`, `MoM Growth %`, `YTD Sales`.

---

### Project 3: Smart Household Chore Optimizer (SQL and Python)
- **Source Files:** `Household chore.sql` (2.8 KB), `smart_household_optimizer.ipynb` (220 KB), `smart_household_optimizer_sanitized.ipynb`
- **Database Schema & Data:**
  - MySQL database `household_chores_db` with two relational tables: `tasks` and `task_history`.
  - Exactly 8 chores:
    1. Sweep and mop (`cleaning`, 7x/wk, 30 min/task = 210 min/wk)
    2. Clean bathroom (`cleaning`, 2x/wk, 25 min/task = 50 min/wk)
    3. Wash dishes (`cleaning`, 7x/wk, 10 min/task = 70 min/wk)
    4. Laundry (`cleaning`, 2x/wk, 80 min/task = 160 min/wk)
    5. Buy water (`water`, 2x/wk, 20 min/task = 40 min/wk)
    6. Cook meals (`cooking`, 2x/wk, 30 min/task = 60 min/wk)
    7. Grocery shopping (`shopping`, 1x/wk, 20 min/task = 20 min/wk)
    8. Organize room (`cleaning`, 3x/wk, 25 min/task = 75 min/wk)
- **Workload Metrics Verified:**
  - **Total Baseline Weekly Workload:** **685 minutes** (~11.4 hours/week).
  - **Cleaning Category Share:** **565 minutes** out of 685 (~**82.48%**).
  - **Top Chores:** Sweep and mop (210 min/wk), Laundry (160 min/wk).
  - **Batching Optimization Model:**
    - Assumes an estimated **15% batching efficiency gain** on batchable tasks.
    - Potential time saved: **102.75 minutes/week** (~103 min or ~1.7 hours/week).
    - *Explicit limitation:* Stated in notebook cell 32 as a modeling assumption, not an empirical measurement.

---

### Project 4: Hospital Patient and Appointment Database (SQL)
- **Source File:** `Hospital_queries.sql` (1.7 KB)
- **Schema & Implementation Verified:**
  - Database: `hospital_db`.
  - 3 Normalized Relational Tables:
    1. `patients` (Primary Key `patient_id`, fields: `full_name`, `age`, `gender`, `phone`, `consultation_fee`, `medication_fee`, `total_bill`).
    2. `doctors` (Primary Key `doctor_id`, fields: `full_name`, `age`, `specialization`).
    3. `appointments` (Primary Key `appointment_id`, Foreign Keys: `patient_id` referencing `patients(patient_id)`, `doctor_id` referencing `doctors(doctor_id)`, and `appointment_date`).
  - Queries Implemented:
    - Primary key lookups (`WHERE patient_id = 1`).
    - Exact text search (`WHERE full_name = 'John Doe'`).
    - Partial pattern matching (`WHERE full_name LIKE '%John%'`).
    - Three-table `JOIN` linking appointments to patient demographics and doctor specializations in a unified view.

---

### Project 5: Company Sales Dataset Generator (Python)
- **Source File:** `1.GRawData.ipynb` (19.4 KB)
- **Dataset Nature:** **100% Synthetic data generator** using Python `random` module.
- **Script Specifications Verified:**
  - Loop runs `for i in range(1, 501):` generating exactly **500 records**.
  - **10 Fields:** `Employee_ID` (`EMP- 1` to `EMP- 500`), `Employee_Name`, `Department` (5 values: Sales, finance, HR, IT, Procurement), `Region` (4 values: North, South, East, West), `Product` (5 values: Product A to Product E), `Units_Sold` (`random.randint(10, 500)`), `units_price` (`random.randint(100, 1000)`), `Revenue` (`unit * price`), `Target` (`random.randint(100000, 500000)`), `Year` (random choice of 2024, 2025, 2026).
  - Export: Saves to CSV (`company_data2.csv`).
  - *Honesty Note:* Purely synthetic for data cleaning, integrity verification, and pipeline testing. No business performance conclusions are drawn.

---

### Project 6: Personal Data Analyst Portfolio Platform (Web Development & Architecture)
- **Source Files:** `index.html`, `404.html`, `.nojekyll`, `README.md`, `FACTS.md`
- **Architecture:** Zero-framework static web architecture engineered for GitHub Pages (`0fey001.github.io`).
- **Technical Standards:**
  - **Performance:** 100/100 Lighthouse benchmark with sub-0.5s initial payload.
  - **Accessibility:** Full WCAG AA contrast compliance (`#0F766E` on light, `#2DD4BF` on dark), semantic markup, keyboard focus states, and `@media (prefers-reduced-motion)`.
  - **JavaScript Fallback:** Pre-rendered HTML articles with native HTML5 `<details>` disclosures for 100% functionality with JavaScript disabled.
  - **Integrations:** Direct local download links and live GitHub Pages / repository endpoints.

---

## 3. Security & Repository Hygiene
- **Secret Sanitization:** `smart_household_optimizer.ipynb` originally contained hardcoded MySQL credentials (`Omowunmi@1`).
- **Remediation:** Removed the hardcoded string from cell 2 and replaced with `os.getenv('MYSQL_PASSWORD', 'your_password_here')`.
- **Sanitized Version:** Exported as `smart_household_optimizer_sanitized.ipynb`.
- **Full Repo Secret Scan:** Clean scan confirmed 0 instances of secrets in all tracked repository files.
- **Legacy Artifacts Cleaned:** Old legacy files moved to `/old` directory; inaccurate `sales-analysis.html` removed.
