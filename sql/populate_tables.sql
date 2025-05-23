-- Populate DimProduct
INSERT INTO DimProduct (ProductID, ProductName)
SELECT DISTINCT ProductID, CONCAT('Product_', ProductID)
FROM StagingSales
WHERE ProductID NOT IN (SELECT ProductID FROM DimProduct);

-- Populate DimCustomer
INSERT INTO DimCustomer (CustomerID, Region)
SELECT DISTINCT CustomerID,
       CASE
           WHEN CustomerID % 3 = 0 THEN 'East'
           WHEN CustomerID % 3 = 1 THEN 'West'
           ELSE 'Central'
       END AS Region
FROM StagingSales
WHERE CustomerID NOT IN (SELECT CustomerID FROM DimCustomer);

-- Populate FactSales
INSERT INTO FactSales (OrderID, CustomerID, ProductID, Quantity, Price, Timestamp)
SELECT DISTINCT OrderID, CustomerID, ProductID, Quantity, Price, Timestamp
FROM StagingSales
WHERE OrderID NOT IN (SELECT OrderID FROM FactSales);