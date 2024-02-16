USE customer;

CREATE TABLE Products(ProductID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
					ProductName varchar(255),
					SupplierID int,
					CategoryID int,
					Unit varchar(255),
					Price varchar(255));

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price) 
		VALUES ('Chais','1','1','10 boxes x 20 bags','18'),
('Chang','1','1','24 - 12 oz bottles','19'),
('Aniseed Syrup','1','2','12 - 550 ml bottles','10'),
('Chef Antons Cajun Seasoning','2','2','48 - 6 oz jars','22'),
('Chef Antons Gumbo Mix','2','2','36 boxes','21.35');

SELECT * FROM Products;

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price) 
		VALUES ('Grandmas Boysenberry Spread','3','2','12 - 8 oz jars','25' ),
		('Uncle Bobs Organic Dried Pears','3','7','12 - 1 lb pkgs.','30'),
		('Northwoods Cranberry Sauce','3','2','12 - 12 oz jars','40'),
		('Mishi Kobe Niku','4','6','18 - 500 g pkgs.','97'),
		('Ikura','4','8','12 - 200 ml jars','31');
        
ALTER TABLE Products MODIFY COLUMN Price float;