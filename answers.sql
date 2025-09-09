-- Question 1
CREATE TABLE ProductOrder (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Product VARCHAR(255)
);

INSERT INTO ProductOrder (OrderID, CustomerName, Product)
SELECT OrderID, CustomerName, GROUP_CONCAT(Product SEPARATOR ', ') AS Products
FROM ProductDetail
GROUP BY OrderID;



-- Question 2
CREATE TABLE ProductOrder (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Product VARCHAR(255)
);

INSERT INTO ProductOrder (OrderID, CustomerName, Product)
SELECT OrderID, CustomerName, GROUP_CONCAT(Product SEPARATOR ', ') AS Products
FROM ProductDetail
GROUP BY OrderID;