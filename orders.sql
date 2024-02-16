USE CUSTOMER;

CREATE TABLE Orders(OrderID INT,CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,EmployeeID INT,OrderDate DATE,ShipperID INT);

INSERT INTO Orders(OrderID, EmployeeID, OrderDate, ShipperID)  
VALUES 
('10248', '5', '1996-07-04', '3'), 
('10249', '6', '1996-07-05', '1'), 
('10250', '4', '1996-07-08', '2'), 
('10251', '3', '1996-07-08', '1'), 
('10252', '4', '1996-07-09', '2'), 
('10253', '3', '1996-07-10', '2'),  
('10254', '5', '1996-07-11', '2'), 
('10255', '9', '1996-07-12', '3'), 
('10256', '3', '1996-07-15', '2');

SELECT * FROM Orders;