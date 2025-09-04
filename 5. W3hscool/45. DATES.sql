/*Tipos de datos de fecha de MySQL
MySQl viene con los siguientes tipos de datos para almacenar una fecha o un valor de fecha/hora en la base de datos
- DATE - formato: AAAA-MM-DD
- DATETIME - formato: AAAA-MM-DD HH:MI:SS
- TIMESTAMP - formato: AAAA-MM-DD HH:MI:SS
- YEAR - formato: AAAA o YY

NOTA: El tipo de dato de fecha se establece para una columna cuando crea una nueva tabla en su base de datos*/

SELECT * FROM Orders;
SELECT * FROM Orders WHERE OrderDate = '1996-07-04';

-- NOTA: Se puede comparar facilmente dos fechas si no hay ningun componente de tiempo involucrado