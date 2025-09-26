CREATE TABLE Usuarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    FechaNacimiento DATE,
    Activo BOOLEAN DEFAULT TRUE
);

INSERT INTO Usuarios (Nombre, Email, FechaNacimiento)
VALUES ('Lionel Messi', 'lionel.messi@ejemplo.com', '1987-06-24');

INSERT INTO Usuarios (Nombre, Email)
VALUES ('Cristiano Ronaldo', 'cristiano.ronaldo@ejemplo.com');

INSERT INTO Usuarios (Nombre)
VALUES ('Neymar Yunior')

SELECT * FROM Usuarios;

SELECT Nombre, Email FROM Usuarios;

SELECT * FROM Usuarios WHERE ID = 1;

SELECT * FROM Usuarios WHERE Nombre LIKE 'Lionel%';

UPDATE Usuarios
SET Email = 'cristiano.ronaldo@ejemplo.com', Activo = FALSE
WHERE ID = 2;

DELETE FROM Usuarios
WHERE ID = 1;

DROP TABLE Usuarios;