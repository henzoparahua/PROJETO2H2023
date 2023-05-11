DROP DATABASE IF EXISTS Escola;
CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;

CREATE TABLE Alunos(
	IDAluno INT NOT NULL AUTO_INCREMENT,
	/* AUTO INCREMENT Já é preenchida */
	NomeAluno VARCHAR(30) NOT NULL,
	Endereco VARCHAR(50) NOT NULL,
	Email VARCHAR(40) NULL,
	PRIMARY KEY (IDAluno)
);

INSERT INTO Alunos
VALUES
(null,'Astrogildo','Rua XIII','eu@ele.com'),
(null,'Berisvaldo','Av, 3','tu@nos.com'),
(null,'Gumercindo','Rua Azul',null),
(null,'Pafuncia','Rua Azul','go@go.edu'),
(null,'Tiburcio','Av. Brasil',null),
(null,'Robervaldo','Av. Peru','el@cabron');

DESC Alunos;
SELECT * FROM Alunos;

/* APAGANDO UM REGRISTRO */
/* SENSATO PASSAR A CHAVE PRIMARIA */
/* MAS É POSSIVEL PASSAR COLUNAS NORMAIS */

DELETE FROM Alunos
WHERE IDAluno = '6';

DELETE FROM Alunos
WHERE Endereco = 'Rua Azul';

/* É POSSIVEL USAR OPERADORES RELACIONAIS */
DELETE FROM Alunos
WHERE IDAluno < '3';

/* É POSSIVEL APAGAR UMA SEQUENCIA */
DELETE FROM Alunos
WHERE IDAluno BETWEEN '2' AND '5';

INSERT INTO Alunos
VALUES
(null,'Astrogildo','Rua XIII','eu@ele.com'),
(null,'Berisvaldo','Av, 3','tu@nos.com'),
(null,'Gumercindo','Rua Azul',null),
(null,'Pafuncia','Rua Azul','go@go.edu'),
(null,'Tiburcio','Av. Brasil',null),
(null,'Robervaldo','Av. Peru','el@cabron');

/* APAGANDO TODOS OS DADOS DA TABELA */
DELETE FROM Alunos;

INSERT INTO Alunos
VALUES
(null,'Astrogildo','Rua XIII','eu@ele.com'),
(null,'Berisvaldo','Av, 3','tu@nos.com'),
(null,'Gumercindo','Rua Azul',null),
(null,'Pafuncia','Rua Azul','go@go.edu'),
(null,'Tiburcio','Av. Brasil',null),
(null,'Robervaldo','Av. Peru','el@cabron');

/* ATUALIZANDO DADOS DA TABELA */
UPDATE Alunos
SET Email = 'guma@bol.com'
WHERE IDAluno = '15';

/* ATUALIZANDO MAIS DE UM REGISTRO POR VEZ */
UPDATE Alunos 
SET NomeAluno = 'Valdo', Endereco = 'X'
WHERE IDAluno = 18;

ALTER TABLE Alunos
    ADD COLUMN Status INT NOT NULL DEFAULT 1;

    UPDATE Alunos
    SET Status = 0
    WHERE IDAluno = 16;