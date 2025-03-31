CREATE DATABASE bdEstoque
GO
USE bdEstoque
----Relacionais: Venda, Itens venda e produto
CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1),
	nomeCliente VARCHAR(200),
	cpfCliente CHAR(11),
	emailCliente VARCHAR(300),
	sexoCliente VARCHAR (10),
	dtNascCliente SMALLDATETIME,
)
CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY (1,1),
	nomeFabricante VARCHAR(200),
)
CREATE TABLE tbFornecedor(
	idFornecedor INT PRIMARY KEY IDENTITY (1,1),
	nomeFornecedor VARCHAR(200),
	contatoFornecedor VARCHAR(200),
)
CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY (1,1),
	dtVenda SMALLDATETIME,
	valorTotalVenda DECIMAL (10,2),
	idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente),
)
CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1),
	descProduto VARCHAR(100),
	valorProduto DECIMAL (10,2),
	quantProduto INT,
	idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante),
	idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(idFornecedor),
)
CREATE TABLE tbItensVenda(
	idItensVenda INT PRIMARY KEY IDENTITY (1,1),
	quantItensVenda INT,
	subTotalItensVenda DECIMAL (10,2),
	idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda),
	idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto),
)
--DROP TABLE tbItensVenda
