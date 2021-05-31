CREATE DATABASE restaurante;

USE restaurante;


CREATE TABLE usuarios
(
	idUsuario INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(150) NOT NULL,
	apellido VARCHAR(150) NOT NULL,
	edad INT NOT NULL,
	sexo VARCHAR(12),
	telefono INT NOT NULL,
	usuario VARCHAR(12) NOT NULL,
	contra VARCHAR(10000000) NOT NULL,
	tipo VARCHAR(20) NOT NULL,
	PRIMARY KEY (idUsuario)
);

CREATE TABLE productos 
(
	idproducto INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(150) NOT NULL,
	costo VARCHAR (20),
	PRIMARY KEY (idproducto)
);

CREATE TABLE clientes
(
	idCliente INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(150) NOT NULL,
	PRIMARY KEY (idCliente)
);

CREATE TABLE CodFactura
(
	idFactura INT NOT NULL AUTO_INCREMENT,
	fecha INT,
	idCliente INT NOT NULL ,
	idproducto INT NOT NULL,
	idUsuario INT NOT NULL,
	total VARCHAR(50),
	PRIMARY KEY (idFactura),
	FOREIGN KEY (idCliente) REFERENCES clientes (idCliente),
	FOREIGN KEY (idproducto) REFERENCES productos (idproducto),
	FOREIGN KEY (idUsuario) REFERENCES usuarios (idUsuario)
	
);

SELECT * FROM usuarios
SELECT * FROM productos
SELECT * FROM clientes
SELECT * FROM CodFactura
