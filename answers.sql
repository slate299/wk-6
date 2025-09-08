-- ========================================
-- Question 1 🧑‍💼
-- Get employee details with their office codes
-- INNER JOIN: only employees that have a matching office
-- ========================================

SELECT e.firstName, 
       e.lastName, 
       e.email, 
       e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- ========================================
-- Question 2 🛍️
-- Get product details and their product line info
-- LEFT JOIN: show all products, even if they don’t have a product line
-- ========================================

SELECT p.productName, 
       p.productVendor, 
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- ========================================
-- Question 3 📦
-- Retrieve first 10 orders with customer info
-- RIGHT JOIN: include all orders, even if customer is missing
-- ========================================

SELECT o.orderDate, 
       o.shippedDate, 
       o.status, 
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
