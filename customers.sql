USE Customer;
SHOW TABLES FROM customer;

USE Customer;

CREATE TABLE cust (
    CustomerID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CustomerName varchar(255),
    ContactName varchar(255),
    Addresss varchar(255),
    City varchar(255),
    PostalCode varchar(255),
    Country varchar(255)
);
                    
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constituci n 2222','M xico D.F.','05021','Mexico');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Antonio Moreno Taquer a','Antonio Moreno','Mataderos 2312','M xico D.F.','05023','Mexico');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Berglunds snabbk p','Christina Berglund','Berguvsv gen 8','Lule ','S-958 22','Sweden');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country) 
		VALUES ('Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland');
INSERT INTO Cust (CustomerName,ContactName, Addresss,City, PostalCode,Country)
VALUES('Hekkan Burger','Priyanshi','Gateveien 15','Sandnes','4306','Norway');
INSERT INTO Cust (CustomerName, City, Country)
		VALUES ('Cardinal', 'Stavanger', 'Norway');
INSERT INTO Cust (CustomerName, ContactName, Addresss, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

SELECT * FROM cust;