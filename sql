/*SELECT FirstName,LastName,MiddleName FROM SalesLT.Customer WHERE FirstName LIKE ('%in%');

SELECT FirstName,LastName,MiddleName,TotalDue FROM SalesLT.Customer INNER JOIN SalesLT.SalesOrderHeader
    on (Customer.CustomerID = SalesOrderHeader.CustomerID);


SELECT FirstName,SalesLT.SalesOrderHeader.CustomerID, FirstName,TotalDue
FROM SalesLT.Customer INNER JOIN SalesLT.SalesOrderHeader
    ON (SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID)
WHERE TotalDue > 40
  AND FirstName LIKE N'k%'
GO


SELECT sc.FirstName, sh.CustomerID, sh.TotalDue
FROM SalesLT.Customer AS sc 
INNER JOIN SalesLT.SalesOrderHeader AS sh
    ON (sh.CustomerID = sc.customerID)
WHERE TotalDue > $10
    AND FirstName LIKE '%h%';

Subconsulta --- Se usa cuando hay una relacion de uno a varios en el id y se hace una nueva 
columna con los valores deseados

SELECT Ord.SalesOrderID, Ord.OrderDate, Ord.TaxAmt,
    (SELECT MAX(OrdDet.LineTotal)
     FROM SalesLT.SalesOrderDetail AS OrdDet
     WHERE Ord.SalesOrderID = OrdDet.SalesOrderID) AS MaxLineTotal
FROM SalesLT.SalesOrderHeader AS Ord;   

Las sig queries se usa para tomar el mismo valos del atributo selecionado ene el where

SELECT Prd1.[Name]
FROM SalesLT.Product AS Prd1
     JOIN SalesLT.Product AS Prd2
       ON (Prd1.ListPrice = Prd2.ListPrice)
WHERE Prd2.[Name] = 'ML Road Frame - Red, 44';


SELECT [Name], Color, ListPrice
FROM SalesLT.Product
WHERE ListPrice =
    (SELECT ListPrice
     FROM SalesLT.Product
     WHERE [Name] = 'Road-150 Red, 62' );

hace match entre los valores del customerid y listprice 

SELECT [Name], Color, ListPrice, ProductID
FROM SalesLT.Product
WHERE ListPrice IN
    (SELECT CustomerID
     FROM SalesLT.Customer
     WHERE CustomerID BETWEEN 1 AND 700);

SELECT StateProvince, AddressID
FROM SalesLT.Address
WHERE AddressID IN
    (SELECT AddressID
     FROM SalesLT.Address
     WHERE StateProvince = 'Washington');

es la misma consulta anterior

     SELECT StateProvince, AddressID
FROM SalesLT.Address
WHERE  StateProvince = 'Washington';

se une la misma tabla

SELECT e1.StateProvince, e1.AddressID
FROM SalesLT.Address AS e1
WHERE e1.AddressID IN
    (SELECT e2.AddressID
     FROM SalesLT.Address AS e2
     WHERE e2.StateProvince = 'Texas');

SELECT City, StateProvince, SUM(AddressID) AS Totalids
FROM SalesLT.Address
GROUP BY City, StateProvince;

agrupa sales order y un subconjunto de agrupacion con cantidad de ordenes

SELECT SalesOrderID, OrderQty, SUM(UnitPrice) AS total
FROM SalesLT.SalesOrderDetail
GROUP BY SalesOrderID, OrderQty;

valores < que productcategoryid = 25 en cuanto al minimo de esa categoria de lisprice

SELECT [Name], ListPrice, ProductCategoryID
FROM SalesLT.Product
WHERE ListPrice <
    (SELECT MIN (ListPrice)
     FROM SalesLT.Product
     GROUP BY ProductCategoryID
     HAVING ProductCategoryID = 25);
*/


