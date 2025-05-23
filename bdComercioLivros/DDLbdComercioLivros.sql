CREATE DATABASE bdComercioLivros
GO
USE bdComercioLivros

CREATE TABLE tbAutor (
	idAutor INT PRIMARY KEY IDENTITY (1,1),
	nomeAutor VARCHAR (100) NOT NULL
)

CREATE TABLE tbEditora (
	idEditora INT PRIMARY KEY IDENTITY (1,1),
	nomeEditora VARCHAR (100) NOT NULL
)

CREATE TABLE tbLivro (
	idLivro INT PRIMARY KEY IDENTITY (1,1),
	nomeLivro VARCHAR (100) NOT NULL,
	isbnLivro VARCHAR(30),
	numPaginas INT,
	idAutor INT FOREIGN KEY REFERENCES tbAutor (idAutor),
	idEditora INT FOREIGN KEY REFERENCES tbEditora (idEditora)
)
--DROP TABLE tbLivro
