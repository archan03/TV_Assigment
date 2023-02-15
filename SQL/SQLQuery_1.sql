CREATE DATABASE AS1; 
DROP DATABASE Northwind;
 
CREATE TABLE Products( 
ProductID int NOT NULL PRIMARY KEY,  
ProductName VARCHAR(40) NOT NULL, 
SupplierID int NOT NULL, 
CategoryID int NOT NULL, 
QuantityPerUnit varchar(20) NOT NULL, 
UnitPrice DECIMAL(10,4) NOT NULL, 
UnitsInStock SMALLINT NOT NULL, 
UnitsOnOrder SMALLINT NOT NULL, 
ReorderLevel SMALLINT NOT NULL, 
Discontinued BIT NOT NULL 
) 
 
SELECT * FROM Products 
 
INSERT into Products VALUES (1, 'Chai', '1' , '1', '50 cups' ,'10' ,'35' ,'5', '10' ,'0') 
INSERT into Products VALUES (2, 'Coffee', '1' , '1', '42 cups' ,'15' ,'12' ,'0', '25' ,'0') 
INSERT into Products VALUES (3, 'Green Tea', '1' , '2', '20 Packets' ,'18' ,'15' ,'2', '0' ,'0') 
INSERT into Products VALUES (4, 'Vanilla Icecream', '2' , '2', '30 boxes' ,'20' ,'12' ,'5', '10' ,'0') 
INSERT into Products VALUES (5, 'Candy', '2' , '2', '50 boxes' ,'18' ,'10' ,'0', '35' ,'0') 
INSERT into Products VALUES (6, 'Cone', '2' , '2', '20 boxes' ,'25' ,'17' ,'40', '30' ,'0') 
INSERT into Products VALUES (7, 'white Pasta', '3' , '2', '10 packets' ,'35' ,'8' ,'0', '0' ,'1') 
INSERT into Products VALUES (8, 'Maggie', '3' , '6', '50 packets' ,'19' ,'10' ,'0', '30' ,'0') 
INSERT into Products VALUES (9, 'Wheat Flour', '4' , '9', '10 packets' ,'80' ,'3' ,'6', '5' ,'0') 
INSERT into Products VALUES (10, 'Sugar', '4' , '7', '5 Packets' ,'60' ,'10' ,'0', '10' ,'0') 
INSERT into Products VALUES (11, 'Potato', '5' , '6', '20 kg' ,'18.5' ,'15' ,'10', '5' ,'0') 
INSERT into Products VALUES (12, 'Toffee', '6' , '2', '100 oz' ,'0.5' ,'3' ,'0', '0' ,'1') 
INSERT into Products VALUES (13, 'Syrup', '7' , '5', '12 bottles' ,'39.99' ,'2' ,'0', '10' ,'0') 
INSERT into Products VALUES (14, 'Energy Drink', '7' , '5', '20 bottles' ,'89.99' ,'0' ,'0', '0' ,'0') 
INSERT into Products VALUES (15, 'Soft Drink', '7' , '2', '15 bottles' ,'19.99' ,'19' ,'0', '10' ,'0') 
 