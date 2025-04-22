# 🚖 OLA Ride Data Analysis using SQL, Power BI & Excel

This project is a comprehensive ride data analysis based on real-world-style data from OLA. It uses **Excel** as the raw data source, **SQL** for preprocessing and querying, and **Power BI** for building dynamic and insightful visualizations.

---

## 🎯 Objective

To explore ride booking data from OLA and extract meaningful insights that can help:

- Understand ride patterns across cities
- Optimize driver allocation and customer service
- Analyze revenue by category and time
- Improve operational decision-making

---

## 🧰 Tools & Technologies

- **Microsoft Excel** — Raw data source (`Bookings-20000-Rows.xlsx`)
- **SQL** — Data cleaning, joins, aggregations, and querying
- **Power BI** — Dashboarding and interactive visualizations
- **DAX / Power Query** — Used within Power BI for modeling and transformations

---

## 📁 Project Files

| File Name                  | Description                                                |
|---------------------------|------------------------------------------------------------|
| `Bookings-20000-Rows.xlsx`| Raw ride booking dataset used for analysis                 |
| `sql qyeries.sql`         | SQL scripts for transforming and analyzing the dataset     |
| `OLA.pbix`                | Power BI dashboard with visuals based on SQL-transformed data |
| `README.md`               | Documentation for the project                              |

---

## 🔍 Dataset Overview

The dataset contains ~20,000 rows of ride bookings including fields such as:

- Booking ID
- Date & Time
- City
- Cab Category
- Fare Amount
- Driver ID
- Customer ID
- Status (Completed, Cancelled, etc.)

---

## 📈 Dashboard Highlights

Power BI dashboard includes:

- 📍 **Ride Volume by City and Category**
- 🕒 **Time-based Trends (Hourly, Daily, Monthly)**
- 💸 **Revenue Analysis**
- 👨‍✈️ **Driver Performance Metrics**
- 📊 **Cancellations vs Completed Trips**
- 🗺️ **Geo-spatial heatmaps (if applicable)**

<img width="585" alt="I-1" src="https://github.com/user-attachments/assets/ea014697-ba4c-409b-9dd2-b4b6fb624c77" />
<img width="585" alt="I-2" src="https://github.com/user-attachments/assets/8b8a41ee-4b15-422a-81ec-40e8341e918e" />
<img width="575" alt="I-3" src="https://github.com/user-attachments/assets/7f3dec50-5845-4ae4-884c-eb03c4589d20" />
<img width="586" alt="I-4" src="https://github.com/user-attachments/assets/6471ffb4-67dc-4d82-9564-a5397a4fd717" />
<img width="581" alt="I-5" src="https://github.com/user-attachments/assets/ac86c4e6-8956-47f8-a5c1-b3cb452bb2da" />





---

## 🧮 Sample SQL Query

```sql
-- Total revenue by city
Create view  Avg_Cust_Ratings as
Select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating 
from bookings
group by Vehicle_Type;
Select * from Avg_Cust_Ratings;

