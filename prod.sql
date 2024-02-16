USE Customer;
CREATE TABLE Prod(P_Id int,
					ProductName varchar(255),
					UnitPrice float,
					UnitsInStock int,
					UnitsOnOrder int);

INSERT INTO Prod (P_Id, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder) 
		VALUES('1','Jarlsberg','10.45','16','15'),
('2','Mascarpone','32.56','23',NULL),	 
('3','Gorgonzola','15.67','9','20'),
('4','Jar','10.5','20',NULL);

SELECT * FROM Prod;