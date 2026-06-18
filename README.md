# Student Success Analytics Platform

## Overview

The Student Success Analytics Platform is an end-to-end data analytics solution built using Databricks, PySpark, SQL, Delta Lake, and Power BI. The platform processes student academic performance data, transforms raw records into analytics-ready datasets, and generates insights to identify at-risk students and support student retention initiatives.

The project follows the Medallion Architecture (Bronze, Silver, and Gold layers) to demonstrate modern data engineering practices for data ingestion, transformation, and analytics.

## Technology Stack

* Databricks
* PySpark
* Spark SQL
* Delta Lake
* Unity Catalog
* Power BI
* GitHub

## Architecture

Raw CSV Data → Bronze Layer → Silver Layer → Gold Layer → Power BI Dashboard

## Dataset

The dataset contains 25,000 student performance records with attributes including:

* Student demographics
* School type
* Parent education level
* Study hours
* Attendance percentage
* Study methods
* Subject scores
* Overall score
* Final grade

## Bronze Layer

The Bronze layer ingests raw student performance data from CSV files and stores it as Delta tables within Unity Catalog.

### Activities

* Raw CSV ingestion
* Schema inference
* Delta table creation
* Data validation

### Output

* student_success.bronze.student_performance

## Silver Layer

The Silver layer performs data quality checks, cleansing, and enrichment.

### Activities

* Data profiling
* Duplicate record removal
* Null value validation
* Attendance band creation
* Performance band creation
* Student risk classification

### New Columns

* attendance_band
* performance_band
* risk_status

### Output

* student_success.silver.student_performance

## Gold Layer

The Gold layer contains business-ready analytics datasets used for reporting and dashboarding.

### Gold Tables

#### at_risk_students

Identifies students requiring academic intervention.

#### grade_summary

Provides performance metrics grouped by final grade.

#### school_analysis

Compares student performance across school types.

#### study_method_analysis

Evaluates the effectiveness of different study methods.

## Power BI Dashboard

The dashboard consists of four reporting pages:

### Executive Overview

* Total Students
* Average Score
* Average Attendance
* At-Risk Students

### Student Performance

* Grade Distribution
* Average Score by School Type
* Top Performing Students

### Risk Analysis

* At-Risk Students by School Type
* Attendance vs Overall Score
* Risk Status Breakdown

### Learning Insights

* Study Method vs Performance
* Parent Education vs Performance
* Internet Access vs Performance
* Study Hours vs Score

## Business Value

This platform helps educational institutions identify students who may be at risk of poor academic performance. By combining attendance and academic performance metrics, the solution supports proactive intervention strategies, improves student retention efforts, and enables data-driven decision-making through interactive dashboards and automated KPI reporting.

## Project Structure

```text
student-success-analytics-platform/

├── data/
├── notebooks/
│   ├── 01_Bronze_Ingestion.ipynb
│   ├── 02_Silver_Transformation.ipynb
│   └── 03_Gold_Analytics.ipynb
│
├── sql/
│   └── kpi_queries.sql
│
├── screenshots/
│
├── architecture/
│   └── architecture_diagram.png
│
├── powerbi/
│
└── README.md
```
