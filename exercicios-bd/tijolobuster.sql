/* Henzo Possebon Ayres 22706
Henrique Silva Barbosa 22687*/

DROP DATABASE IF EXISTS Tijolobuster;
CREATE DATABASE IF NOT EXISTS Tijolobuster;
USE Tijolobuster;

CREATE TABLE Clientes(
IDCliente INT NOT NULL PRIMARY KEY,
NomeCliente VARCHAR(30) NOT NULL,
Endereco VARCHAR(60) NOT NULL,
Telefone VARCHAR(15) NOT NULL
);


CREATE TABLE Alugueis(
CodAluguel INT NOT NULL PRIMARY KEY,
DataAluguel DATE NOT NULL,
DataDevolucao DATE NOT NULL,
IDCliente INT NOT NULL,
CONSTRAINT FK_Alugueis_Clientes FOREIGN KEY(IDCliente)
	REFERENCES Clientes(IDCliente) 
);

CREATE TABLE Filmes(
IDFilme INT NOT NULL PRIMARY KEY,
Titulo VARCHAR(30) NOT NULL,
Genero VARCHAR(30) NOT NULL,
Idioma VARCHAR(20) NOT NULL,
Preco DECIMAL(5,2) NOT NULL 
);

CREATE TABLE ItensAlugados(
CodAluguel INT NOT NULL,
IDFilme INT NOT NULL,
QtdeEstoque INT NOT NULL,
CONSTRAINT PK_CodAluguel_IDFilme PRIMARY KEY(CodAluguel,IDFilme),
CONSTRAINT FK_ItensAlugados_Alugueis FOREIGN KEY(CodAluguel)
	REFERENCES Alugueis(CodAluguel),
CONSTRAINT FK_ItensAlugados_Filmes FOREIGN KEY(IDFilme)
	REFERENCES Filmes(IDFilme) 
);

ALTER TABLE Clientes
ADD COLUMN Estado VARCHAR(30) NOT NULL;

ALTER TABLE ItensAlugados
DROP COLUMN QtdeEstoque;

INSERT INTO Clientes
values

(1, 'Alberto Pasqualini', 'Rua do Ouvidor', '3838-4000', 'SP'),
(2, 'Emma Goldman', 'Rua José Bonifacio', '2244-1000', 'SP'),
(3, 'Getulio Vargas', 'Rua Gotemburgo', '3738-8008', 'RJ'),
(4, 'John Locke', 'Rua São Sebastião', '5670-6070', 'MG'),
(5, 'Nicolau Maquiavel', 'Rua Francisco Eugênio', '3700-8000', 'RJ');

INSERT INTO Filmes
values
(1, 'Sherlock Holmes', 'Ação e Aventura', 'Inglês', '9.85'),
(2, 'Paneta 51', 'Infantil', 'Português', '4.95'),
(3, 'Zumbilândia', 'Comédia', 'Inglês', '4.95'),
(4, 'Bastardos Inglórios', 'Ação e Aventura', 'Inglês', '7.50'),
(5, 'Alvin e os Esquilos 2', 'Infantil', 'Português', '4.95');

INSERT INTO Alugueis
values

(1, 16/08/2021, 18/08/2021, 2),
(2, 16/08/2021, 18/08/2021, 4),
(3, 17/08/2021, 19/08/2021, 1),
(4, 19/08/2021, 21/08/2021, 3),
(5, 19/08/2021, 21/08/2021, 5);

INSERT INTO ItensAlugados 
values

(1, 2),
(1, 4),
(2, 3),
(3, 1),
(3, 2),
(3, 5),
(4, 4),
(5, 3),
(5, 1);

SELECT * from Filmes ORDER BY Preco DESC;

SELECT NomeCliente, Telefone  from Clientes ORDER BY Estado ASC;

SELECT * from ItensAlugados ORDER BY IDFilme ASC;