-- Monthly KPIs
CREATE OR REPLACE VIEW `logistics-thesis.logistic.v_po_monthly` AS
SELECT
  FORMAT_DATE('%Y-%m', OrderDate) AS month,
  COUNT(*) AS orders,
  ROUND(SUM(TotalCost), 2) AS total_spend,
  ROUND(AVG(DATE_DIFF(ExpectedDeliveryDate, OrderDate, DAY)), 2) AS avg_lead_days,
  ROUND(100 * AVG(CASE WHEN LOWER(Status) = 'cancelled' THEN 1 ELSE 0 END), 2) AS cancel_rate_pct
FROM `logistics-thesis.logistic.purchase`
GROUP BY month;

-- Supplier KPIs
CREATE OR REPLACE VIEW `logistics-thesis.logistic.v_supplier_kpis` AS
SELECT
  SupplierID,
  COUNT(*) AS orders,
  ROUND(SUM(TotalCost), 2) AS total_spend,
  ROUND(AVG(DATE_DIFF(ExpectedDeliveryDate, OrderDate, DAY)), 2) AS avg_lead_days,
  ROUND(100 * AVG(CASE WHEN LOWER(Status) = 'cancelled' THEN 1 ELSE 0 END), 2) AS cancel_rate_pct
FROM `logistics-thesis.logistic.purchase`
GROUP BY SupplierID;
