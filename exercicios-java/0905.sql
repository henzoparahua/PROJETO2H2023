DROP DATABASE IF EXISTS TeleMensagens;
CREATE DATABASE IF NOT EXISTS TeleMensagens;
USE TeleMensagens;

CREATE TABLE Cliente(
	IDCliente INT NOT NULL PRIMARY KEY,
	Telefone BIGINT NULL,
	Celular BIGINT NULL,
	NomeCliente VARCHAR (30) NOT NULL,
	CPFCliente BIGINT NOT NULL,
	Pago BOOLEAN NOT NULL,
	NomeRemetente VARCHAR (30) NOT NULL,
	CelularRemetente BIGINT NULL,
	CelularRemetente2 BIGINT NULL,
	TelefoneRemetente BIGINT NULL,

);

CREATE TABLE Mensagem(
	IDMensagem INT NOT NULL PRIMARY KEY,
	TipoMensagem VARCHAR(30) NOT NULL,
	Descrição VARCHAR(50) NOT NULL,
	Mensagem VARCHAR(200) NOT NULL,
);

CREATE TABLE envio(
	IDEnvio INT NOT NULL PRIMARY KEY, 
	IDMensagem INT NOT NULL,
	IDCliente INT NOT NULL,
	IDRemetente INT NOT NULL,
	CONSTRAINT FK_Envio_Cliente FOREIGN KEY(IDCliente)
	REFERENCES Cliente(IDCliente),
	CONSTRAINT FK_Envio_Remetente FOREIGN KEY(IDRemetente)
	REFERENCES Remetente(IDRemetente),
	CONSTRAINT FK_Envio_mensagem FOREIGN KEY(IDMensagem)
	REFERENCES Mensagem(IDMensagem)
);
