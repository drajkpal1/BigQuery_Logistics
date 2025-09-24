-- Basic validation
SELECT COUNT(*) AS row_count,
       COUNT(DISTINCT SupplierID) AS distinct_suppliers,
       MIN(OrderDate) AS min_order_date,
       MAX(OrderDate) AS max_order_date
FROM `logistics-thesis.logistic.purchase`;

SELECT column_name, data_type
FROM `logistics-thesis`.logistic.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'purchase'
ORDER BY ordinal_position;

SELECT
  FORMAT_DATE('%Y-%m', OrderDate) AS month,
  COUNT(*) AS orders,
  ROUND(SUM(TotalCost), 2) AS total_spend,
  ROUND(AVG(DATE_DIFF(ExpectedDeliveryDate, OrderDate, DAY)), 2) AS avg_lead_days
FROM `logistics-thesis.logistic.purchase`
GROUP BY month
ORDER BY month;
