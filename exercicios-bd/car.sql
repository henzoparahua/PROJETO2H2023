/*Henrique Silva Barbosa RM:22687  
  Henzo Possebon Ayres   RM:22706*/

CREATE DATABASE locacaocarro;

USE locacaocarro;

CREATE TABLE cliente(
	Cliente_cod INT NOT NULL,
	Cliente_nome VARCHAR(30) NOT NULL,
	Cliente_email VARCHAR(40) NOT NULL,
	Cliente_cpf VARCHAR(15) NOT NULL,
	Cliente_endereco VARCHAR(30) NOT NULL,
	Cliente_numero 	VARCHAR(15) NOT NULL,
	Cliente_complemento VARCHAR(50) NULL,
	Cliente_cidade VARCHAR(25) NOT NULL,
	Cliente_estado VARCHAR(25) NOT NULL,
	Dt_cadastro DATE NOT NULL,
	CONSTRAINT PK_Clientes PRIMARY KEY (Cliente_cod)
	);


CREATE TABLE modelo(
	Modelo_cod INT NOT NULL,
	Modelo_desc VARCHAR(60) NOT NULL,
	CONSTRAINT PK_Modelo PRIMARY KEY (Modelo_cod)
);

CREATE TABLE marca(
	Marca_cod INT NOT NULL,
	Marca_desc VARCHAR(60) NOT NULL,
	CONSTRAINT PK_Marca PRIMARY KEY (Marca_cod)
);

CREATE TABLE automovel(
	Auto_cod INT NOT NULL,
	Marca_cod INT NOT NULL,
	Modelo_cod INT NOT NULL,
	Auto_nome VARCHAR(30) NOT NULL,
	CONSTRAINT PK_automovel PRIMARY KEY (Auto_cod),
	CONSTRAINT FK_Automovel_Marca FOREIGN KEY (Marca_cod)
		REFERENCES Marca(Marca_cod),
	CONSTRAINT FK_Automovel_Modelo FOREIGN KEY (Modelo_cod)
		REFERENCES Modelo(Modelo_cod)
);

CREATE TABLE locacao(
	Locacao_cod INT NOT NULL,
	Auto_cod INT NOT NULL,
	Cliente_cod INT NOT NULL,
	Locacao_km INT NOT NULL,
	Dt_cadastro DATE NOT NULL,
	CONSTRAINT PK_Locacao PRIMARY KEY (Locacao_cod),
	CONSTRAINT FK_Locacao_Automovel FOREIGN KEY (Auto_cod)
		REFERENCES Automovel(Auto_cod),
	CONSTRAINT FK_Locacao_Cliente FOREIGN KEY (Cliente_cod) 
		REFERENCES Cliente(Cliente_cod)
);
