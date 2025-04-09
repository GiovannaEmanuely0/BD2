CREATE DATABASE bdTransito 
GO

USE bdTransito

CREATE TABLE tbMotorista (
	idMotorista INT PRIMARY KEY IDENTITY (1,1),
	nomeMotorista VARCHAR (150),
	dataNascMotorista SMALLDATETIME,
	cpfMotorista CHAR (15),
	cnhMotorista CHAR(15),
	pontuacaoAcumulada INT,
)

CREATE TABLE tbVeiculo (
	idVeiculo INT PRIMARY KEY IDENTITY (1,1),
	modeloVeiculo VARCHAR (30),
	placaVeiculo CHAR (10),
	renavam CHAR(15),
	anoVeiculo SMALLDATETIME,
	idMotorista INT FOREIGN KEY REFERENCES tbMotorista (idMotorista),
)

CREATE TABLE tbMultas (
	idMultas INT PRIMARY KEY IDENTITY (1,1),
	dataMulta DATE,
	horaMulta TIME,
	pontosMulta INT,
	idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo (idVeiculo),
)
