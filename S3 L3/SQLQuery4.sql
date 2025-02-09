﻿-- 1) Numero totale degli ordini
SELECT COUNT(*) AS TotalOrders
FROM Orders;
-- 2) Numero totale di clienti
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
-- 3) Numero totale di clienti che abitano a Londra
SELECT COUNT(*) AS CustomersInLondon
FROM Customers
WHERE City = 'London';
-- 4)  La media aritmetica del costo del trasporto di tutti gli ordini effettuati
SELECT AVG(Freight) AS AverageFreightCost
FROM Orders;
-- 5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
SELECT AVG(Freight) AS AverageFreightCostForBOTTM
FROM Orders
WHERE CustomerID = 'BOTTM';
-- 6) Totale delle spese di trasporto effettuate raggruppate per id cliente
SELECT CustomerID, SUM(Freight) AS TotalFreight
FROM Orders
GROUP BY CustomerID;
-- 7) Numero totale di clienti raggruppati per città di appartenenza
SELECT City, COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY City;
-- 8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalOrderValue
FROM [Order Details]
GROUP BY OrderID;
-- 9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
SELECT SUM(UnitPrice * Quantity) AS TotalValueForOrder10248
FROM [Order Details]
WHERE OrderID = 10248;
-- 10) Numero di prodotti censiti per ogni categoria
SELECT CategoryID, COUNT(*) AS NumberOfProducts
FROM Products
GROUP BY CategoryID;
-- 11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ShipCountry;
-- 12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, AVG(Freight) AS AverageFreight
FROM Orders
GROUP BY ShipCountry;
