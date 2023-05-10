DROP DATABASE IF EXISTS TeleMensagens;
CREATE DATABASE IF NOT EXISTS TeleMensagens;
USE TeleMensagens;

CREATE TABLE Cliente(
	IDCliente INT NOT NULL PRIMARY KEY,
	Telefone BIGINT NULL,
	Celular BIGINT NULL,
	NomeCliente VARCHAR (30) NOT NULL,
	CPFCliente BIGINT NOT NULL,
	Pago BOOLEAN NOT NULL
);
CREATE TABLE Remetente(
	IDRemetente INT NOT NULL PRIMARY KEY,
	Telefone BIGINT NULL,
	Celular BIGINT NULL,
	Celular2 BIGINT NULL,
	NomeRemetente VARCHAR (30) NOT NULL
);

CREATE TABLE Mensagem(
	IDMensagem INT NOT NULL PRIMARY KEY,
	IDCliente INT NOT NULL,
	IDRemetente INT NOT NULL,
	TipoMensagem VARCHAR(30) NOT NULL,
	Mensagem VARCHAR(200) NOT NULL,
	OBS VARCHAR(100) NULL,
	CONSTRAINT FK_Mensagem_Cliente FOREIGN KEY(IDCliente)
	REFERENCES Cliente(IDCliente),
	CONSTRAINT FK_Mensagem_Remetente FOREIGN KEY(IDRemetente)
	REFERENCES Remetente(IDRemetente)
);