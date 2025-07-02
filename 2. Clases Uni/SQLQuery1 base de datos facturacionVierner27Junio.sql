-- Crear la base de datos Facturacion
CREATE DATABASE FacturacionDB;
USE FacturacionDB;

-- Crear las tablas de la base de datos 
-- Tabla clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    DNI VARCHAR(8),
    Direccion VARCHAR(200),
    Telefono VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabla vendedores
CREATE TABLE Vendedores (
    VendedorID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    DNI VARCHAR(8),
    Telefono VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabla categoria de productos
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(200)
);

-- Tabla productos
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(200),
    Precio DECIMAL(10,2),
    Stock INT,
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

-- Tabla Facturas
CREATE TABLE Facturas (
    FacturaID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    VendedorID INT,
    Fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (VendedorID) REFERENCES Vendedores(VendedorID)
);

-- Tabla detalle de Factura
CREATE TABLE DetalleFacturas (
    DetalleID INT PRIMARY KEY AUTO_INCREMENT,
    FacturaID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10,2),
    Subtotal DECIMAL(10,2) AS (Cantidad * PrecioUnitario) STORED,
    FOREIGN KEY (FacturaID) REFERENCES Facturas(FacturaID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

-- INSERTAR DATOS A LAS TABLAS
-- Insertar datos en la tabla clientes
INSERT INTO Clientes (Nombre, DNI, Direccion, Telefono, Email)
VALUES 
('Juan Pérez', '12345678', 'Av. Perú 123', '987654321', 'juan@gmail.com'),
('Ana Gómez', '87654321', 'Jr. Lima 456', '912345678', 'ana@gmail.com');
INSERT INTO Clientes (Nombre, DNI, Telefono, Email)
VALUES
('Dayvis Atao', '12345678', '912345678', 'dayvis@hotmail.com');

DELETE 
FROM Vendedores 
WHERE Nombre = 'Dayvis Atao';

-- Insertar datos en la tabla vendedores
INSERT INTO Vendedores (Nombre, DNI, Telefono, Email)
VALUES 
('Carlos Sánchez', '54632158', '998877665', 'carlos@empresa.com'),
('María Torres', '98745632', '987112233', 'maria@empresa.com');


-- Insertar datos en el tabla categorias
INSERT INTO Categorias (Nombre, Descripcion)
VALUES 
('Tecnología', 'Productos electrónicos'),
('Hogar', 'Productos para el hogar');

-- Insertar datos en la tabla productos
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, CategoriaID)
VALUES 
('Laptop Lenovo', 'Core i5, 8GB RAM', 2500.00, 10, 1),
('Televisor LG', '50 pulgadas 4K', 1800.00, 5, 1),
('Licuadora Oster', '600W', 250.00, 20, 2);

-- Insertar datos en la tabla Facturas 
INSERT INTO Facturas (ClienteID, VendedorID, Fecha, Total)
VALUES 
(1, 1, CURRENT_TIMESTAMP, 0),
(2, 2, CURRENT_TIMESTAMP, 0);

-- Insertar datos en la tabla detalle factura
INSERT INTO DetalleFacturas (FacturaID, ProductoID, Cantidad, PrecioUnitario)
VALUES 
(1, 1, 1, 2500.00),
(1, 3, 2, 250.00),
(2, 2, 1, 1800.00);

-- Actualizar la tabla Facturas considerando que la columna total no tiene valores 
SELECT * FROM Facturas;

-- Factura 1 
UPDATE Facturas
SET Total = (
    SELECT SUM(Cantidad * PrecioUnitario) 
    FROM DetalleFacturas 
    WHERE FacturaID = 1
)
WHERE FacturaID = 1;

-- Factura 2
UPDATE Facturas
SET Total = (
    SELECT SUM(Cantidad * PrecioUnitario) 
    FROM DetalleFacturas 
    WHERE FacturaID = 2
)
WHERE FacturaID = 2;

-- Ejemplo de consulta de las compras realizadas
SELECT 
    F.FacturaID,
    F.Fecha,
    C.Nombre AS Cliente,
    V.Nombre AS Vendedor,
    P.Nombre AS Producto,
    D.Cantidad,
    D.PrecioUnitario,
    D.Subtotal,
    F.Total
FROM Facturas F
INNER JOIN Clientes C ON F.ClienteID = C.ClienteID
INNER JOIN Vendedores V ON F.VendedorID = V.VendedorID
INNER JOIN DetalleFacturas D ON F.FacturaID = D.FacturaID
INNER JOIN Productos P ON D.ProductoID = P.ProductoID
ORDER BY F.FacturaID;