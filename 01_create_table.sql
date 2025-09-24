-- Create table structure (load CSV via UI or bq load)
CREATE TABLE IF NOT EXISTS `logistics-thesis.logistic.purchase` (
  PO_ID STRING,
  SupplierID STRING,
  OrderDate DATE,
  ExpectedDeliveryDate DATE,
  Status STRING,
  TotalCost FLOAT64
)
PARTITION BY OrderDate
OPTIONS(description='Purchase orders demo table');
