DROP DATABASE IF EXISTS RM22687;
CREATE DATABASE IF NOT EXISTS RM22687;
USE RM22687;

CREATE TABLE Clientes(
	IDCliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NomeCliente VARCHAR(60) NOT NULL,
	CPFCliente VARCHAR(14) NOT NULL
);

CREATE TABLE Pedidos(
	CodigoPedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	DataPedido date NOT NULL,
	IDCliente INT NOT NULL,
	CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (IDCliente)
		REFERENCES Clientes (IDCliente)
);

CREATE TABLE Produtos(
	IDProduto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NomeProduto VARCHAR(60) NOT NULL,
	PrecoUnitario decimal(5,2) NOT NULL
);

CREATE TABLE ItensPedidos(
	CodigoPedido INT NOT NULL,
	IDProduto INT NOT NULL,
	QtdeVendida INT NOT NULL,
	CONSTRAINT PK_ItensPedidos PRIMARY KEY (CodigoPedido, IDProduto),
	CONSTRAINT FK_Itenspedidos_Pedidos FOREIGN KEY (CodigoPedido)
		REFERENCES Pedidos (CodigoPedido),
	CONSTRAINT FK_Itenspedidos_Produtos FOREIGN KEY (IDProduto)
		REFERENCES Produtos (IDProduto)
);

INSERT INTO Clientes 
VALUES
(null, 'Bruno Cruz', '32132453412'),
(null, 'Joline Santiago', '28438913859'),
(null, 'Valdomiro Santa Cuz', '54321243543'),
(null, 'Alan Henrique Drumond', '65324324556'),
(null, 'Henzo Parahua Possebon', '45376845654');

INSERT INTO Produtos 
VALUES
(null, 'Monitor Multilaser', '984.50'),
(null, 'Mouse Gamer', '49.94'),
(null, 'Placa NVIDIA RTX', '4745.90'),
(null, 'Gabinete ThinkCentre', '406.60'),
(null, 'Impressora HP', '500.99');

INSERT INTO Pedidos 
VALUES
(null, '2023/06/12', '1'),
(null, '2022/03/10', '2'),
(null, '2021/04/15', '3'),
(null, '2020/10/20', '4'),
(null, '2019/12/22', '5');

INSERT INTO ItensPedidos 
VALUES
(1, '1', '1'),
(1, '5', '1'),
(2, '4', '2'),
(2, '2', '1'),
(3, '1', '1'),
(3, '5', '1'),
(3, '4', '1'),
(4, '2', '1'),
(4, '3', '2'),
(5, '3', '1'),
(5, '5', '1');

SELECT * FROM CLIENTES
WHERE NomeCliente LIKE 'b%';

SELECT * FROM Produtos
WHERE PrecoUnitario BETWEEN '10.00' AND '50.00';

SELECT Pedidos.CodigoPedido, Pedidos.DataPedido, Clientes.NomeCliente  FROM Pedidos INNER JOIN CLIENTES 
ON Pedidos.IDCLIENTE = CLIENTES.IDCLIENTE;