SELECT * FROM Customer;


SELECT product_name, category 
FROM Product 
WHERE Price BETWEEN 5000 AND 10000;


SELECT * 
FROM Product 
ORDER BY Price DESC;


SELECT 
  Product_id, 
  COUNT(*) AS num_orders, 
  AVG(total_amount) AS avg_amount, 
  MAX(total_amount) AS max_amount, 
  MIN(total_amount) AS min_amount
FROM Orders 
GROUP BY Product_id;


SELECT Customer_id 
FROM Orders 
GROUP BY Customer_id 
HAVING COUNT(*) > 2;


SELECT 
  MONTH(OrderDate) AS month, 
  COUNT(*) AS num_orders
FROM Orders 
WHERE YEAR(OrderDate) = 2020 
GROUP BY MONTH(OrderDate);


SELECT 
  p.product_name, 
  c.customer_Name, 
  o.OrderDate
FROM Orders o 
JOIN Customer c ON o.Customer_id = c.Customer_id 
JOIN Product p ON o.Product_id = p.Product_id;


SELECT * 
FROM Orders 
WHERE OrderDate BETWEEN DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH) AND CURRENT_DATE;


SELECT Customer_id 
FROM Customer 
WHERE Customer_id NOT IN (SELECT Customer_id FROM Orders);

