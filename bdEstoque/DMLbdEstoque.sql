INSERT INTO tbCliente(nomeCliente,cpfCliente,emailCliente,sexoCliente,dtNascCliente)
VALUES 
		('Armando José Santana','12345678900','armandojsantana@outlook.com','m','21/02/1961'),
		('Sheila Carvalho Leal','45678909823','scarvalho@ig.com.br','f','13/09/1978'),
		('Carlos Henrique Souza','76598278299','chenrique@ig.com.br','m','08/09/1981'),
		('Maria Aparecida Souza','87365309899','mapdasouza@outlook.com','f','07/07/1962'),
		('Adriana Nogueira Silva','76354309388','drica1977@ig.com.br','f','09/04/1977'),
		('Paulo Henrique Silva','87390123111','phsilva80@hotmail.com','m','02/02/1987')

INSERT INTO tbFabricante(nomeFabricante)
VALUES
	('Unilever')
	, ('P&G')
	, ('Bunge')

INSERT INTO tbFornecedor (nomeFornecedor,contatoFornecedor)
VALUES 
	('Atacadão','Carlos Santos'),
	('Assai','Maria Stella'),
	('Roldão','Paulo César')

INSERT INTO tbVenda(dtVenda,valorTotalVenda,idCliente) -- Cliente
VALUES
	('01/02/2014',4500.00,1), --Armando 
	('03/02/2014',3400.00,1), --Armando
	('10/02/2014',1200.00,2), --Sheila --3
	('15/02/2014',2700.00,3), --Carlos
	('17/03/2014',560.00,3), --Carlos
	('09/04/2014',1200.00,4), --Maria 
	('07/05/2014',3500.00,5), --Adriana
	('07/05/2014',3400.00,1), --Armando
	('05/05/2014',4000.00,2) --Sheila --9

INSERT INTO tbProduto(descProduto,valorProduto,quantProduto,idFabricante,idFornecedor)
VALUES 
	('Amaciante Downy',5.76,1500,2,1), -- P&G --Atacadão
	('Amaciante Confort',5.45,2300,1,1), --Unilever --Atacadão
	('Sabão em Pó OMO', 5.99,1280,1,2), --Unilever --Assai
	('Margarina Qually', 4.76,2500,3,1), --Bunge --Atacadão
	('Salsicha Hot Dog Sadia', 6.78,2900,3,2), --Bunge --Assai
	('Mortadela Perdigão',2.50,1200,3,3), --Bunge--Roldão
	('Hamburguer Sadia', 9.89,1600,3,1), --Bunge --Atacadão
	('Fralda Pampers',36.00,340,2,3), --P&G --Roldão
	('Xampu Seda',5.89,800,1,2), --Unilever --Assai
	('Condicionador Seda',6.50,700,1,3) --Unilever --Roldão

INSERT INTO tbItensVenda(quantItensVenda,subTotalItensVenda,idVenda,idProduto)
VALUES 
	(200,1500.00,1,1),
	(300,3000.00,1,2),
	(120,1400.00,2,4),
	(200,1000.00,2,2),
	(130,1000.00,2,3),
	(200,2100.00,3,5), --Salsicha
	(120,1000.00,4,4),
	(450,700.00,4,5), --Salsicha
	(200,560.00,5,5), --Salsicha
	(200,600.00,6,7),
	(300,600.00,6,6),
	(300,2500.00,8,1),
	(200,1000.00,8,2),
	(250,1700.00,9,6),
	(200,1700.00,9,5), ---Salsicha
	(1000,4000.00,9,4)

SELECT * FROM bdEstoque.dbo.tbItensVenda

UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE sexoCliente LIKE 'f'

UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE sexoCliente LIKE 'm'

UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira da Silva Campos'
WHERE idCliente = 5

UPDATE tbCliente
SET emailCliente = 'asantana@ig.com.br'
WHERE idCliente = 1

UPDATE tbProduto
SET quantProduto = quantProduto-30
WHERE idFornecedor = 1

DELETE tbItensVenda
WHERE idProduto = 5

UPDATE tbProduto
SET valorProduto = valorProduto * 1.1
WHERE idFabricante = 1

UPDATE tbProduto 
SET valorProduto = valorProduto - (valorProduto * 0.07)
WHERE idFabricante = 2

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - (valorTotalVenda * 0.05)
WHERE MONTH(dtVenda) = 02

UPDATE tbProduto
SET quantProduto = quantProduto - (quantProduto*0.1)
WHERE idFabricante = 1

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto*0.05)
WHERE descProduto LIKE 'Amaciante%'

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto*0.1)
WHERE descProduto LIKE '%Sadia%'

UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto*0.1)
WHERE descProduto LIKE '%Seda%'

---Deletando a Sheila
DELETE tbItensVenda
WHERE idVenda IN (3,9)

DELETE tbVenda
WHERE idCliente = 2

DELETE tbCliente
WHERE idCliente = 2
---Já rodado áté aqui---
SELECT * FROM bdEstoque.dbo.tbItensVenda