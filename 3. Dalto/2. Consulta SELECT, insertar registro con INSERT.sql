USE usuarios;

SELECT * FROM users;
/*Insertar un campo*/
INSERT INTO users (nombre, apellido, edad)
VALUES ('Dayvis', 'Atao', 19);

SELECT * FROM users;

ALTER TABLE users CHANGE COLUMN nombre name TEXT;
ALTER TABLE users CHANGE COLUMN apellido lastname TEXT, CHANGE COLUMN edad age INTEGER;