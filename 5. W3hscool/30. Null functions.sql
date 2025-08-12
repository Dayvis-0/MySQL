/*El MYSQL IFNULL(). La funcion te permite devolver un valor alternativo si una expresion es NULL.
IFNULL(expr1, expr2)
Si expr1 no es NULL, IFNULL() devuelve expr1; de lo contrario regresa expr2*/
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES
('Café Andino', 1, NULL, 'Caja 12', 10.50),
('Té Verde', 1, 2, 'Bolsa 20', 5.75),
('Chocolate Cusqueño', 2, NULL, 'Barra 100g', 7.20);

-- El siguiente ejemplo devuelve 0 si el valor es NULL:
SELECT 
	ProductName, 
	Price * (IFNULL(CategoryID, 0) + 5) AS Resultado 
FROM Products
ORDER BY Resultado DESC; 

SELECT * FROM Products;

/*Devuelve el primer valor no-NULL en la lista, o NULL si no hay no-NULL valores
COALESCE(value, ...)
O podemos usa la funcion, asi: COALESCE()*/
SELECT 
	ProductName,
	Price * (COALESCE(CategoryID, SupplierID, 0) + 5) AS Resultado
FROM Products;





