DROP DATABASE IF EXISTS Fazenda;
CREATE DATABASE IF NOT EXISTS Fazenda;
USE Fazenda;


CREATE TABLE Animais(
	id_ani INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	num_idade INT NOT NULL
);

CREATE TABLE AnimaisGP(
	id_gp INT NOT NULL,
	id_ani INT NOT NULL,
	CONSTRAINT PK_AnimaisGP PRIMARY KEY(id_gp,id_ani),
	CONSTRAINT FK_AnimaisGP_Animais FOREIGN KEY(id_ani)
		REFERENCES Animais(id_ani));

CREATE TABLE Piquetes(
	ID_Pique INT NOT NULL,
	id_gp INT NOT NULL,
	CONSTRAINT PK_Piquetes PRIMARY KEY(ID_Pique,id_gp),
	CONSTRAINT FK_Piquetes_AnimaisGP FOREIGN KEY(id_gp)
		REFERENCES AnimaisGP(id_gp)
);

CREATE TABLE VacREQ(
	id_vac INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_gp INT NOT NULL,
	vac_nome VARCHAR(30) NOT NULL,
	vac_data date NOT NULL,
	vac_obs VARCHAR(255) NULL,
	CONSTRAINT FK_VacREQ_AnimaisGP FOREIGN KEY(id_gp)
		REFERENCES AnimaisGP(id_gp)
);

CREATE TABLE Vistoria(
	ID_VIS INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_gp INT NOT NULL,
	Anotacoes VARCHAR(255) NOT NULL,
	CONSTRAINT FK_Vistoria_AnimaisGP FOREIGN KEY(id_gp)
		REFERENCES AnimaisGP(id_gp)
);

CREATE TABLE PesoAni(
	ID_VIS INT NOT NULL,
	id_ani INT NOT NULL,
	peso decimal(5,2) NOT NULL,
	CONSTRAINT PK_PesoAni PRIMARY KEY(ID_VIS,id_ani),
	CONSTRAINT FK_PesoAni_Animais FOREIGN KEY(id_ani)
		REFERENCES Animais(id_ani)
);

CREATE TABLE Abate(
	ID_abate INT NOT NULL,
	id_ani INT NOT NULL,
	peso decimal(5,2) NOT NULL,
	CONSTRAINT PK_Abate PRIMARY KEY(ID_abate,id_ani),
	CONSTRAINT FK_Abate_Animais FOREIGN KEY(id_ani)
		REFERENCES Animais(id_ani)
);

CREATE TABLE pesoFrig(
	ID_abate INT NOT NULL,
	id_ani INT NOT NULL,
	peso decimal(5,2) NOT NULL,
	CONSTRAINT PK_pesoFrig PRIMARY KEY(ID_abate,id_ani),
	CONSTRAINT FK_pesoFrig_Animais FOREIGN KEY(id_ani)
		REFERENCES Animais(id_ani)
);