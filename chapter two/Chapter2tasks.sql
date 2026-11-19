-- 2.17
-- SELECT SKU, SKU_Description
-- from INVENTORY

-- 2.18
-- SELECT SKU_Description,SKU
-- FROM INVENTORY

-- 2.19
-- SELECT WarehouseID
-- FROM INVENTORY

-- 2.20
-- SELECT DISTINCT WarehouseID
-- FROM INVENTORY

-- 2.21
-- SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
-- FROM INVENTORY

-- 2.22
-- SELECT *
-- FROM INVENTORY

-- 2.23
-- SELECT QuantityOnHand
-- FROM INVENTORY
-- WHERE QuantityOnHand > 0


-- 2.24
-- SELECT SKU, SKU_Description
-- FROM INVENTORY
-- WHERE QuantityOnHand = 0

-- 2.25
-- SELECT SKU, SKU_Description,WarehouseID
-- FROM INVENTORY
-- WHERE QuantityOnHand = 0


-- 2.26
-- SELECT SKU, SKU_Description,WarehouseID
-- FROM INVENTORY
-- WHERE QuantityOnHand > 0
-- ORDER BY WarehouseID DESC, SKU ASC

-- 2.27
-- SELECT SKU, SKU_Description, WarehouseID
-- FROM INVENTORY
-- WHERE QuantityOnHand = 0 & QuantityOnOrder > 0

-- 2.28
-- SELECT SKU, SKU_Description, WarehouseID
-- FROM INVENTORY
-- WHERE QuantityOnHand = 0 & QuantityOnOrder > 0
-- ORDER BY WarehouseID DESC, SKU ASC

-- 2.29
-- SELECT SKU, SKU_Description, WarehouseID,QuantityOnHand
-- FROM INVENTORY
-- WHERE QuantityOnHand >1 & QuantityOnHand < 10

-- 2.30
-- SELECT SKU, SKU_Description, WarehouseID,QuantityOnHand
-- FROM INVENTORY
-- WHERE QuantityOnHand BETWEEN 1 AND 9

-- 2.31
-- SELECT DISTINCT SKU, SKU_Description
-- FROM INVENTORY
-- WHERE SKU_Description LIKE 'Half-Dome%'

-- 2.32
-- SELECT DISTINCT SKU, SKU_Description
-- FROM INVENTORY
-- WHERE SKU_Description LIKE '%Climb%'

-- 2.33
-- SELECT DISTINCT SKU, SKU_Description
-- FROM INVENTORY
-- WHERE SKU_Description LIKE '__d%'

-- 2.34
-- SELECT COUNT(*) AS NumbersOfRow,
-- COUNT({QuantityOnHand  NOT NULL}),
-- SUM(QuantityOnHand) AS QuantityOnHandSum,
-- AVG(QuantityOnHand) AS QuantityOnHandAVG,
-- MIN(QuantityOnHand) AS QuantityOnHandMin,
-- MAX(QuantityOnHand) AS QuantityOnHandMAX

-- FROM INVENTORY

-- 2.35
-- COUNT is use to count the number row in the table or use to count the number of rows in the table where column is not null
-- SUM is use to calculate the sum of all the values of a numeric columns only

-- 2.36
-- SELECT WarehouseID,SUM(QuantityOnHand) AS TotalItemsOnHand
-- FROM INVENTORY
-- GROUP BY WarehouseID
-- ORDER BY TotalItemsOnHand DESC


-- 2.37
-- SELECT WarehouseID,SUM(QuantityOnHand) AS TotalItemsOnHandLT3
-- FROM INVENTORY
-- WHERE QuantityOnHand < 3
-- GROUP BY WarehouseID
-- ORDER BY TotalItemsOnHandLT3 DESC

-- 2.38
-- SELECT WarehouseID,SUM(QuantityOnHand) AS TotalItemsOnHandLT3
-- FROM INVENTORY
-- WHERE QuantityOnHand < 3
-- GROUP BY WarehouseID
-- HAVING COUNT(SKU) < 2
-- ORDER BY TotalItemsOnHandLT3 DESC
 

--  2.39
-- The where clause applied before the the group by because it fliter the rows that meet the condition before grouping
-- The having is applied after the the group by because it filter the gropus based on the condition applied after grouping


-- 2.40
-- SELECT SKU,SKU_Description, WarehouseCity, WAREHOUSE.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE WarehouseCity = 'Atlantic' 
-- OR WarehouseCity = 'Bangor'
-- OR WarehouseCity = 'Chicago' 

-- 2.41
-- SELECT SKU,SKU_Description, WarehouseCity, WAREHOUSE.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE WarehouseCity IN (
--     SELECT WarehouseCity
--     FROM WAREHOUSE
--     WHERE WarehouseCity = 'Atlantic' 
-- OR WarehouseCity = 'Bangor'
-- OR WarehouseCity = 'Chicago') 

-- 2.42
-- SELECT SKU,SKU_Description, WarehouseCity, WAREHOUSE.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE WarehouseCity IN (
--     SELECT WarehouseCity
--     FROM WAREHOUSE
--     WHERE WarehouseCity <> 'Atlantic' 
-- AND WarehouseCity <> 'Bangor'
-- AND WarehouseCity <> 'Chicago') 

-- 2.43
-- SELECT SKU,SKU_Description, WarehouseCity, WAREHOUSE.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE WarehouseCity NOT IN (
--     SELECT WarehouseCity
--     FROM WAREHOUSE
--     WHERE WarehouseCity = 'Atlantic' 
-- OR WarehouseCity = 'Bangor'
-- OR WarehouseCity = 'Chicago') 

-- 2.44
-- SELECT CONCAT(SKU_Description,  ' IS LOCATED IN ', WarehouseCity) AS ItemLocation
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID;

-- 2.45
-- SELECT SKU,SKU_Description, WarehouseID
-- FROM INVENTORY
-- WHERE  (
--  SELECT WarehouseID
-- FROM WAREHOUSE
-- WHERE MANAGER = 'LUCILLE SMITH' 
-- )

-- 2.46
-- SELECT SKU,SKU_Description, WAREHOUSE.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND Manager = 'LUCILLE SMITH'
 

-- 2.47
-- SELECT SKU,SKU_Description, WAREHOUSE.WarehouseID
-- FROM INVENTORY
-- JOIN WAREHOUSE
-- ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND Manager = 'LUCILLE SMITH'
 
--  2.48
-- SELECT WarehouseID , AVG (QUANTITYONHAND) AS AVERAGEQUANTITY
-- FROM INVENTORY
-- WHERE WarehouseID IN (
--     SELECT WarehouseID 
--     FROM WAREHOUSE
--     WHERE MANAGER = 'LUCILLE SMITH'
-- )
-- GROUP BY WAREHOUSEID

-- 2.49
-- SELECT INVENTORY.WarehouseID , AVG (QUANTITYONHAND) AS AVERAGEQUANTITY
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND MANAGER = 'LUCILLE SMITH'
-- GROUP BY INVENTORY.WarehouseID

-- 2.50
-- SELECT INVENTORY.WarehouseID , AVG (QUANTITYONHAND) AS AVERAGEQUANTITY
-- FROM INVENTORY
-- JOIN WAREHOUSE
-- ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND MANAGER = 'LUCILLE SMITH'
-- GROUP BY INVENTORY.WarehouseID

-- 2.51
-- SELECT SKU,SKU_Description, WarehouseCity, WAREHOUSE.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND MANAGER ='LUCILLE SMITH'

-- 2.52
-- SELECT WarehouseID, SUM(QuantityOnOrder) AS TotalItemsOnOrder, SUM(QuantityOnHand) AS TotalItemsOnHand
-- FROM INVENTORY
-- GROUP BY WarehouseID,QuantityOnOrder

-- 2.53
-- subquery cannot be use in 2.52 because all required table comes  from single table, subqurey is use to filter or calculate data.

-- 2.54
-- Join combines column from two or more tables into one wider tables matching column
-- subquery is run the inner query first, and pass the result to the outer query to filter or calculate data

-- 2.55
-- SELECT DISTINCT*
-- FROM INVENTORY
-- JOIN WAREHOUSE




