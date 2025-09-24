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





