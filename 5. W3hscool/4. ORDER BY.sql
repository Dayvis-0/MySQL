/*La palabra clave se utiliza para ordenar el conjunto de resultados en ascendente o descendente
Sintaxis de ORDER BY
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;*/

SELECT * FROM Customers ORDER BY Country; /*Por defecto ASC*/
SELECT * FROM Customers ORDER BY Country DESC;

SELECT * FROM Customers ORDER BY Country, CustomerName;
SELECT * FROM Customers ORDER BY Country, CustomerName DESC;

/* Jerarquia 				Orden asc 		Orden desc
NULL						primero			cuarto
NUMEROS						segundo			tercero
CARACTARES ESPECIALES		tercero			segundo
LETRAS						cuarto			primero*/