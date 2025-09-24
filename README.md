# Logistics BI – BigQuery Mini‑Project

**Project ID:** `logistics-thesis`  
**Dataset:** `logistic` (location: `europe-west3`)  
**Table:** `purchase` (partitioned by `OrderDate`)  
**Views:** `v_po_monthly`, `v_supplier_kpis`  
**Dashboard:** Looker Studio report connected to both views

## Repo layout
```
.
├── sql/
│   ├── 00_create_dataset.sql
│   ├── 01_create_table.sql
│   ├── 02_views.sql
│   ├── 90_validation_queries.sql
│   └── 99_teardown.sql
├── docs/
│   └── dashboard_notes.md
├── .gitignore
└── README.md
```

## Quick start (bq CLI)
```bash
# Set default project
gcloud config set project logistics-thesis

# Create dataset (adjust if you already have it)
bq --location=europe-west3 mk --dataset logistics-thesis:logistic

# Execute SQL files
bq query --location=europe-west3 --use_legacy_sql=false < sql/01_create_table.sql
bq query --location=europe-west3 --use_legacy_sql=false < sql/02_views.sql

# Run validation
bq query --location=europe-west3 --use_legacy_sql=false < sql/90_validation_queries.sql
```



