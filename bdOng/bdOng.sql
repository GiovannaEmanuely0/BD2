CREATE DATABASE bdOng

GO

USE bdOng

CREATE TABLE tbSexo(
	idSexo INT PRIMARY KEY,
	descSexo VARCHAR(10)
	)

CREATE TABLE tbStatus (
	idStatus INT PRIMARY KEY,
	descStatus VARCHAR(15)
	)
---j¡ rodado---
CREATE TABLE tbCrianca(
	idCrianca INT PRIMARY KEY,
	nomeCrianca VARCHAR(100) NOT NULL,
	dtaNascCrianca SMALLDATETIME NOT NULL,
	cpfCrianca CHAR(11) NOT NULL,
	idSexo INT FOREIGN KEY REFERENCES tbSexo(idSexo),
	idStatus INT FOREIGN KEY REFERENCES tbStatus(idStatus)
	)

CREATE TABLE tbPadrinho(
	idPadrinho INT PRIMARY KEY,
	nomePadrinho VARCHAR (100) NOT NULL,
	dtaNascPadrinho SMALLDATETIME NOT NULL,
	cpfPadrinho CHAR (11) NOT NULL,
	logradouroPadrinho VARCHAR (50),
	numLogradouroPadrinho INT,
	complementoPadrinho VARCHAR (10),
	ufPadrinho CHAR (2),
	cidadePadrinho VARCHAR (30),
	bairroPadrinho VARCHAR (20),
	cepPadrinho CHAR (8)
	)

CREATE TABLE tbApadrinhamento(
	idApadrinhamento INT PRIMARY KEY,
	idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca),
	idPadrinho INT FOREIGN KEY REFERENCES tbPadrinho(idPadrinho)
	)

CREATE TABLE tbGenitor(
	idGenitor INT PRIMARY KEY,
	nomeGenitor VARCHAR (100) NOT NULL,
	dtaNascGenitor SMALLDATETIME NOT NULL,
	cpfGenitor CHAR (11)
	)

CREATE TABLE tbFiliacao(
	idFiliacao INT PRIMARY KEY,
	idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca),
	idGenitor INT FOREIGN KEY REFERENCES tbGenitor(idGenitor)
	)
-----J· rodado -----
CREATE TABLE tbDoenca(
	idDoenca INT PRIMARY KEY,
	nomeDoenca VARCHAR(50) NOT NULL,
	cidDoenca VARCHAR(50) NOT NULL
	)
CREATE TABLE tbProntuario(
	idProntuario INT PRIMARY KEY,
	idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca),
	obsProntuario VARCHAR(50)
)
CREATE TABLE tbProntuarioDoenca(
	idProntuarioDoenca INT PRIMARY KEY,
	idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca),
	idProntuario INT FOREIGN KEY REFERENCES tbProntuario (idProntuario),
	dataProntuarioDoenca SMALLDATETIME NOT NULL
)
CREATE TABLE tbObsCrianca(
	idObsCrianca INT PRIMARY KEY,
	idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca),
	descObsCrianca VARCHAR(100),
	dtaObsCrianca SMALLDATETIME
)
