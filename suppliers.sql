USE Customer;

CREATE TABLE Suppliers (
    SupplierID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SupplierName varchar(255),
    ContactName varchar(255),
    Addresss varchar(255),
    City varchar(255),
    PostalCode varchar(255),
    Country varchar(255),
	Phone VARCHAR(255));

INSERT INTO Suppliers(SupplierName,ContactName,Addresss,City,PostalCode,Country,Phone) 
		VALUES ('Exotic Liquid','Charlotte Cooper','49 Gilbert St.','Londona','EC1 4SD','UK','(171) 555-2222'),
('New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822'),
('Grandma Kellys Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735'),
('Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo','100','Japan','(03) 3555-5011'),
('Cooperativa de Quesos Las Cabras','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo','33007','Spain','(98) 598 76 54'),
('Mayumis','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka','545','Japan','(06) 431-7877'),
('Pavlova Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne','3058','Australia','(03) 444-2343'),
('Specialty Biscuits Ltd.','Peter Wilson','29 Kings Way','Manchester','M14 GSD','UK','(161) 555-4448'),
('PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Göteborg','S-345 67','Sweden','031-987 65 43'),
('Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','São Paulo','5442','Brazil','(11) 555 4640');

SELECT * FROM Suppliers;