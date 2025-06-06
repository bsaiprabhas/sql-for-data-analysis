
-- 1. View table schema
PRAGMA table_info(shipping_data);

-- 2. Total Orders by Shipment Mode
SELECT Mode_of_Shipment, COUNT(*) AS total_orders
FROM shipping_data
GROUP BY Mode_of_Shipment
ORDER BY total_orders DESC;

-- 3. Average Product Cost by Warehouse
SELECT Warehouse_block, AVG(Cost_of_the_Product) AS avg_cost
FROM shipping_data
GROUP BY Warehouse_block
ORDER BY avg_cost DESC;

-- 4. Delayed vs. On-Time Deliveries
SELECT 
  CASE 
    WHEN "Reached.on.Time_Y.N" = 1 THEN 'On Time'
    ELSE 'Delayed'
  END AS Delivery_Status,
  COUNT(*) AS Order_Count
FROM shipping_data
GROUP BY Delivery_Status;

-- 5. Delays by Shipment Mode
SELECT Mode_of_Shipment, COUNT(*) AS Delayed_Orders
FROM shipping_data
WHERE "Reached.on.Time_Y.N" = 0
GROUP BY Mode_of_Shipment
ORDER BY Delayed_Orders DESC;

-- 6. Average Discount by Product Importance
SELECT Product_importance, AVG(Discount_offered) AS avg_discount
FROM shipping_data
GROUP BY Product_importance
ORDER BY avg_discount DESC;

-- 7. Subquery: Top 5 Costliest Orders with Delay
SELECT * FROM shipping_data
WHERE "Reached.on.Time_Y.N" = 0
ORDER BY Cost_of_the_Product DESC
LIMIT 5;

-- 8. Create a View for Shipment Summary
CREATE VIEW shipping_summary AS
SELECT 
  Mode_of_Shipment,
  COUNT(*) AS total_orders,
  AVG(Cost_of_the_Product) AS avg_cost,
  AVG(Discount_offered) AS avg_discount,
  SUM(CASE WHEN "Reached.on.Time_Y.N" = 0 THEN 1 ELSE 0 END) AS delayed_orders
FROM shipping_data
GROUP BY Mode_of_Shipment;
