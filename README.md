# 🚀 Azure Sales ETL Project

This project demonstrates a complete end-to-end ETL pipeline using **Azure Data Factory**, **Azure SQL Database**, **Azure DevOps (YAML Pipelines)**, and **GitHub** — designed for a real-world sales data ingestion and processing scenario.

---

## 🧠 Project Overview

The pipeline simulates ingesting sales data from a `.csv` file, transforming and staging it in Azure SQL, and automating the deployment using Azure DevOps.

### ☁️ Azure Services Used
- **Azure Data Factory (ADF)**: For orchestrating data ingestion
- **Azure SQL Database**: For staging and storing structured data
- **Azure Blob Storage**: For raw `.csv` source files
- **Azure DevOps Pipelines**: For CI/CD automation (YAML-based)

---

## 📁 Repository Structure

```bash
azure-sales-etl/
│
├── adf/
│   └── pipeline.json              # ADF pipeline definition (LoadSalesToStaging)
│
├── data/
│   └── sales_data.csv            # Sample source dataset
│
├── scripts/
│   └── deploy_sql.ps1            # PowerShell deployment script
│
├── sql/
│   ├── create_sales_tables.sql   # Table creation for staging
│   └── populate_tables.sql       # Inserts demo data
│
├── azure-pipelines.yml           # CI/CD pipeline for ADF + SQL deployment
└── README.md                     # This file
