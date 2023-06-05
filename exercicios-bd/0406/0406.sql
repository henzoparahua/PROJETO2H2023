/* HENRIQUE BARBOSA E HENZO POSSEBON */

DROP DATABASE IF EXISTS Pizzaria;
CREATE DATABASE IF NOT EXISTS Pizzaria;
USE Pizzaria;

CREATE TABLE Clientes (

 IDCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(60) NOT NULL,
 Telefone VARCHAR(30) NOT NULL,
 Endereco VARCHAR(90) NOT NULL
);

CREATE TABLE Pizzas (

CODPizza INT NOT NULL AUTO_INCREMENT,
Sabor VARCHAR(30) NOT NULL,
Tamanho VARCHAR(30) NOT NULL,
Preco decimal (5,2) NOT NULL,
Ingredientes VARCHAR(30) NOT NULL,

CONSTRAINT PK_CODPizza PRIMARY KEY(CODPizza)
);

CREATE TABLE Bebidas (

CODBebida INT NOT NULL AUTO_INCREMENT,
Marca VARCHAR(30) NOT NULL,
Tamanho VARCHAR(30) NOT NULL,
Sabor VARCHAR(30) NOT NULL,
Preco decimal(5,2) NOT NULL,

CONSTRAINT PK_CODBebida PRIMARY KEY (CODBebida)
);


CREATE TABLE Pedidos (
IDRequest INT NOT NULL AUTO_INCREMENT,
IDPedido INT NOT NULL,
Data date NOT NULL,
CODBebida INT,
CODPizza INT NOT NULL,
IDCliente INT NOT NULL,

CONSTRAINT PK_IDPedido PRIMARY KEY(IDRequest),
CONSTRAINT FK_Pedidos_IDClientes FOREIGN KEY (IDCliente)
    REFERENCES Clientes(IDCliente),

CONSTRAINT FK_Pedidos_CODPizzas FOREIGN KEY(CODPizza)
    REFERENCES Pizzas(CODPizza),

CONSTRAINT FK_Pedidos_CODBebidas FOREIGN KEY(CODBebida)
	REFERENCES Bebidas(CODBebida)
);



/* Cadastrando Clientes 
*/

INSERT INTO Clientes
VALUES
    (null, 'Gesisvaldo', '11 923840123', 'Av. Santo Antonio de Vieira'),
    (null, 'Dalva', '32 948394953', 'Rua Manuel Assis'),
    (null, 'Vieira Andrade', '21 948557943', 'Morro São Bento'),
    (null, 'Valdo de Oliveira', '22 948349454', 'Rua de Arthur Ararssis'),
    (null, 'Carlinhos', '11 948593845', 'Rua Cavalos Decimos');

INSERT INTO Pizzas
VALUES
    (null, 'Queijo', 'Brotinho', '16.50', 'Muçarela'),
    (null, 'Queijo', 'Familia', '24.50', 'Muçarela'),
    (null, 'Calabresa', 'Brotinho', '16.50', 'Calabresa'),
    (null, 'Calabresa', 'Familia', '25.50', 'Calabresa'),
    (null, 'Marguerita', 'Brotinho', '26.50', 'Chocolate'),
    (null, 'Le Fishe Au Chocolat', 'Italian Family', '116.50', 'Le Fise, El Chocolaut'),
    (null, 'Portuguesa', 'Brotinho', '36.50', 'Coisas');

INSERT INTO Bebidas
VALUES
    (null, 'Coca Cola', '500', 'Original', '8,50'),
    (null, 'Del Vale', '1000', 'Uva', '12,50'),
    (null, 'Guaravita', '1500', 'Original', '7,50'),
    (null, 'Coca Cola', '500', 'Zero', '2,50');


/* REALIZANDO PEDIDOS */
/* REQUEST/PEDIDO/DATA/BEBIDA/PIZZA/CLIENTE*/

INSERT INTO Pedidos
VALUES
    (null, 1, '06/02/2023', null , '6', '2'),
    (null, 1, '06/02/2023','2', '3', '2'),
    (null, 1, '06/02/2023', null , '1', '2'),

    (null, 2, '05/28/2023', null , '7', '1'),
    (null, 2, '05/28/2023','1', '3', '1'),

    (null, 3, '04/22/2023', null , '6', '3'),
    (null, 3, '04/22/2023', null , '6', '3'),
    (null, 3, '04/22/2023', null , '6', '3'),

    (null, 4, '03/12/2023', null , '5', '5'),
    (null, 4, '03/12/2023', null , '4', '5'),

    (null, 5, '06/02/2023','3', '2', '4'),
    (null, 5, '06/02/2023', null , '1', '4');
