INSERT INTO tbFabricante(nomeFabriacante)
VALUES 
	('Malwee'),
	('Marisol'),
	('Cia da Malha')
INSERT INTO tbCliente(nomeCliente,idadeCliente)
VALUES 
	('Roberto','34'),
	('Ítalo','23'),
	('Ana Lúcia','20'),
	('Susana','27'),
	('Flavio','31')
INSERT INTO tbVendedor(nomeVendedor)

VALUES 
	('João Santana'),
	('Raquel Torres')
INSERT INTO tbFuncionario(nomeFuncionario,idadeFuncionario,dtNascFuncionario,salarioFuncionario)
VALUES 
	('Alana dos Santos','37','10/02/1988','1200'),
	('Rogério Bastos','24','24/09/2001','980'),
	('Joana Lima','34','05/12/1990','1500')
INSERT INTO tbProduto(nomeProduto,precoProduto,dtEntradaProduto,idFuncionario,idFabricante)
VALUES 
	('Fones de ouvido Bluetooth','90.99','28/02/2025',3,1),
	('Smart TV','2500','26/02/2025',1,1),
	('HeadSet sem fio','120','30/01/2025',2,1),
	('Nintendo Swich','2100','25/01/2025',3,2), ---2
	('Notebook','3500','30/01/2025',1,2), ---2
	('Playstation 5','4990','15/02/2025',2,2), ---2
	('Monitor 4k','2090','30/01/2025',3,3),
	('Teclado mecânico','130','20/01/2025',1,3),
	('Smartwatch','110','15/02/2025',2,3)
INSERT INTO tbVenda(dtVenda,idCliente,idVendedor,totalVendas)
VALUES 
	('28/02/2025',1,1,'210.99'),
	('27/02/2025',2,1,'4600'), --2
	('19/02/2025',3,2,'240'),
	('20/02/2025',4,2,'3610'), 
	('20/02/2025',5,2,'7080')
INSERT INTO tbItensVenda(quatItensVenda,subTotalItens,idVenda,idProduto)
VALUES 
	(1,'90.99',1,1),
	(1,'120',1,3),
	(1,'2500',2,2), 
	(1,'2100',2,4),
	(1,'130',3,8), --
	(1,'110',3,9), --
	(1,'3500',4,5),
	(1,'110',4,9),
	(1,'4990',5,6),
	(1,'2090',5,7)

UPDATE tbFabricante
SET nomeFabriacante = 'Turma da Malha'
WHERE idFabricante = 3

UPDATE tbVenda
SET totalVendas = '189.99'
WHERE idCliente = 1

UPDATE tbProduto
SET precoProduto = '2205'
WHERE idProduto = 4

UPDATE tbProduto
SET precoProduto = '3675'
WHERE idProduto = 5

UPDATE tbProduto
SET precoProduto = '5239.50'
WHERE idProduto = 6

DELETE tbItensVenda
WHERE idItensVendas = 4

DELETE tbItensVenda
WHERE idVenda = 3

--Remover o fabricante de cod 1
UPDATE tbProduto
SET idFabricante = 2
WHERE idFabricante = 1

DELETE tbFabricante
WHERE idFabricante = 1

SELECT * FROM tbFabricante

---Termina aqui


