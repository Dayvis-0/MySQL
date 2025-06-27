/*Un caracter comodin se utiliza para sustituir uno o mas caracteres en una cadena. Los caracteres 
comodin se utiliza con el operador. EL operador se utiliza en un clausula para buscar un patron especifico en una columna
LIKE, WHERE*/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a_%_%';

-- Encuentra cualquier valor que comience con a y termine con o
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%s';

SELECT * FROM Customers;

SELECT * FROM Customers
WHERE City LIKE 'ber%';

SELECT * FROM Customers
WHERE City LIKE '%es%';

SELECT * FROM Customers
WHERE City LIKE '_ondon';

SELECT * FROM Customers
WHERE City LIKE 'L_n_on';
