mysql -u root -p < nome (tab autocomplete)
mysql -u root -p
use nome;

outra forma

source nome;

Consulta em database

SELECT * FROM CLIENTES;


	-- // LISTA DIFERENTE 
	{
	SELECT * 
	FROM Clientes
	WHERE estado <> 'MG';
}

	-- // MAIOR OU IGUAL 
	{ 
SELECT *
	FROM VEICULOS
	WHERE PRECO >= '10000.00';
}

	-- // TODOS QUE COMEÇAM COM O MESMO CARACTERE 
	{
SELECT * 
	FROM CLIENTES
	WHERE nomecliente LIKE 'j%';

	% = CARACTERE CORINGA, PARA TODOS OS CARACTERES
}

	-- // TODOS QUE TERMINAM COM O MESMO CARACTERE 
	{
SELECT * 
	FROM CLIENTES
	WHERE nomecliente LIKE '%s';

	% = CARACTERE CORINGA, PARA TODOS OS CARACTERES
}

	-- // QUALQUER COISA ANTES E DEPOIS DE UMA LETRA/PALAVRA 
	{
SELECT * 
	FROM CLIENTES
	WHERE nomecliente LIKE '%do%';
}

	-- // PARA QUALQUER EM UMA UNICA QUANTIDADE 
	{

	SELECT * 
	FROM CLIENTES
	WHERE nomecliente LIKE '_o%'
	}

	-- // PARA QUALQUER EM UMA DUAS QUANTIDADES 
	{
SELECT * 
	FROM CLIENTES
	WHERE nomecliente LIKE '__o%'
	}

	-- // CONSULTA A MAIS DE UMA TABELA
SELECT 	VENDAS.IDVENDA, 
		VENDAS.DATAVENDA,
		CLIENTES.nomecliente
			FROM VENDAS INNER JOIN CLIENTES
					/*JUNÇÃO COM A TABELA */
				ON VENDAS.IDCLIENTE = CLIENTES.IDCLIENTE;
				/* MOSTRA QUAL É IGUAL */ 

	-- // CONSULTA A MAIS DE UMA TABELA COM ORDENAÇÃO
SELECT 	VENDAS.IDVENDA, 
		VENDAS.DATAVENDA,
		CLIENTES.nomecliente
			FROM VENDAS INNER JOIN CLIENTES
					/*JUNÇÃO COM A TABELA */
				ON VENDAS.IDCLIENTE = CLIENTES.IDCLIENTE
				/* MOSTRA QUAL É IGUAL */ 
				ORDER BY VENDAS.IDVENDA;
				/* ORDENA */

	-- // ALTERANDO DE FORMA VISUAL (CRIANDO UM ALIAS)
	{
	SELECT v.IDVEICULO AS Codigo,
		v.fabricante 
		FROM VEICULOS AS v;
	/* DEVO USAR O ALIAS ANTES DE SUA ALTERAÇÃO */

	} 

	