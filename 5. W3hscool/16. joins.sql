/*La clausula JOIN se utiliza para combinar filas de dos o mas tablas, segun una columna entre ellos 
*/

SELECT * FROM Orders;
SELECT * FROM Customers;

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT * FROM Employees;