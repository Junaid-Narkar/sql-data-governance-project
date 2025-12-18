# sql-data-governance-project
SQL Server Data Governance &amp; Quality Analysis project

# SQL Data Governance & Quality Analysis

## 📌 Project Overview

This project simulates a real-world **Data Governance & Data Quality Analyst** role using **SQL Server**. It focuses on managing user access, validating data quality, governing dataset lifecycle, and identifying operational risks through structured SQL queries.

## 🗂️ Database Scope

The project uses multiple related tables including:

* Users and roles
* Datasets and sensitivity types
* User-to-dataset access mapping
* Data import quality logs
* Dataset usage tracking

## 🔍 Key Tasks Performed

* Identified **inactive users** with existing dataset access
* Detected **admin access to confidential datasets**
* Calculated data import **error rates** and flagged datasets exceeding a 5% threshold
* Identified **recently commissioned datasets**
* Recommended **decommissioning** for active datasets unused for over one year
* Produced a **stakeholder summary report** showing dataset exposure levels

## 🛠️ Skills & Concepts Demonstrated

* SQL JOINs (INNER, LEFT)
* Aggregations (`COUNT`, `SUM`)
* Date functions (`GETDATE`, `DATEADD`)
* Data quality validation
* Access control and risk analysis

## ✅ Outcome

This project demonstrates how SQL is used beyond querying—supporting **data governance, security, compliance, and business decision-making** in real organizational environments.
