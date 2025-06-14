CREATE DATABASE Pedidos;

DROP DATABASE pedidos;	

CREATE TABLE Clientes (
	ClienteID INT,
	Nombre VARCHAR(50),
	Apellido VARCHAR(50),
	Email VARCHAR(20),
	Cidudad VARCHAR(50),
	FechaRegistro DATE
);
 
CREATE TABLE Productos (
	ProductoID INT,
	NombreProducto VARCHAR(50),
	Categoria VARCHAR(20),
	Precio NUMERIC(8, 2),
	Stock int
);

CREATE TABLE Pedidos (
	PedidoID int,
	ClienteID int,
	ProductoID int,
	Cantidad int,
	FechaPedido DATE
);

ALTER TABLE Clientes MODIFY Email VARCHAR(50);

INSERT INTO Clientes (ClienteID, Nombre, Apellido, Email, Ciudad, FechaRegistro) 
VALUES 
(1, 'Juan', 'Peréz', 'juan.perez@gmail.com', 'Madrid', '2023-01-15'),
(2, 'Ana', 'Gómez', 'ana.gomez@gmail.com', 'Barcelona', '2023-02-20'),
(3, 'Carlos', 'López', 'carlos.lopez@gmail.com', 'Madrid', '2023-03-10'),
(4, 'Maria', 'Garcia', 'maria.garcia@gmail.com', 'Sevilla', '2023-04-01'),
(5, 'Pedro', 'Sánchez', 'pedro.sanchez@gmail.com', 'Valencia', '2023-05-05'),
(6, 'Laura', 'Diaz', 'laura.diaz@gmail.com', 'Madrid', '2023-05-15');

INSERT INTO Productos (ProductoID, NombreProducto, Categoria, Precio, Stock) 
VALUES 
(101, 'Laptop X', 'Electrónica', 1200.00, 50),
(102, 'Teclado Mec', 'Electrónica', 75.50, 120),
(103, 'Silla Ofic.', 'Mobiliario', 250.00, 30),
(104, 'Monitor 27"', 'Electrónica', 350.00, 70),
(105, 'Escritorio E', 'Mobiliario', 400.00, 20),
(106, 'Ratón Gaming', 'Electrónica', 45.00, 150);

INSERT INTO Pedidos (PedidoID, ClienteID, ProductoID, Cantidad, FechaPedido) 
VALUES 
(1, 1, 101, 1, '2023-06-01'),
(2, 2, 102, 2, '2023-06-02'),
(3, 1, 104, 1, '2023-06-03'),
(4, 3, 103, 1, '2023-06-04'),
(5, 4, 106, 3, '2023-06-05'),
(6, 2, 101, 1, '2023-06-05');

ALTER TABLE Clientes CHANGE Cidudad Ciudad VARCHAR(50);

SHOW TABLES;
SELECT * FROM Clientes;
SELECT * FROM Productos;
SELECT * FROM Pedidos;
SELECT Nombre,Apellido FROM Clientes;
SELECT ClienteID, Nombre FROM Clientes WHERE Ciudad = 'Madrid';
SELECT ClienteID, Nombre FROM Clientes WHERE Ciudad = 'Madrid' AND Apellido = 'Lopez';
SELECT * FROM Clientes WHERE Nombre LIKE 'A%';








