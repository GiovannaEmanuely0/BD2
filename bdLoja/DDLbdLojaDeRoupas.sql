CREATE DATABASE bdLojaDeRoupas
GO
USE bdLojaDeRoupas

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1),
	nomeCliente VARCHAR(200) NOT NULL,
	idadeCliente INT NOT NULL
)
---Já rodado
CREATE TABLE tbVendedor(
	idVendedor INT PRIMARY KEY IDENTITY (1,1),
	nomeVendedor VARCHAR(200) NOT NULL
)
CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY (1,1),
	nomeFabriacante VARCHAR(200) NOT NULL
)
CREATE TABLE tbFuncionario(
	idFuncionario INT PRIMARY KEY IDENTITY (1,1),
	nomeFuncionario VARCHAR(200) NOT NULL,
	idadeFuncionario INT NOT NULL,
	dtNascFuncionario SMALLDATETIME NOT NULL,
	salarioFuncionario FLOAT(5)
)
CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1),
	nomeProduto VARCHAR(50) NOT NULL,
	precoProduto FLOAT(5) NOT NULL,
	dtEntradaProduto SMALLDATETIME NOT NULL,
	idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario),
	idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
)
----já rodado-----
CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY (1,1),
	dtVenda SMALLDATETIME NOT NULL,
	idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente),
	idVendedor INT FOREIGN KEY REFERENCES tbVendedor(idVendedor),
	totalVendas FLOAT(6) NOT NULL
)
CREATE TABLE tbItensVenda(
	idItensVendas INT PRIMARY KEY IDENTITY(1,1),
	quatItensVenda INT NOT NULL,
	subTotalItens FLOAT(6) NOT NULL,
	idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda),
	idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
)
