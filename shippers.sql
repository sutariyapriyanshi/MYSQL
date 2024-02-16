USE Customer;

CREATE TABLE Shippers(ShipperID INT,ShipperName VARCHAR(255),Phone BIGINT);

-- Changing the datatype of column
ALTER TABLE Shippers MODIFY COLUMN Phone VARCHAR(255);

INSERT INTO Shippers(ShipperID,ShipperName,Phone) 
		VALUES ('1','Speedy Express','(503) 555-9831'),
		('2','United Package','(503) 555-3199'),
		('3','Federal Shipping','(503) 555-9931'); 

SELECT * FROM Shippers;