CREATE DATABASE bdLivrariaBrasileira
GO
USE bdlivrariaBrasileira

CREATE TABLE tbGenero(
	idGenero INT PRIMARY KEY IDENTITY(1,1),
	nomeGenero VARCHAR(50),
)
CREATE TABLE tbEditora(
	idEditora INT PRIMARY KEY IDENTITY(1,1),
	nomeEditora VARCHAR(50),
)
CREATE TABLE tbAutor(
	idAutor INT PRIMARY KEY IDENTITY(1,1),
	nomeAutor VARCHAR(50),
)
CREATE TABLE tbLivro(
	idLivro INT PRIMARY KEY IDENTITY(1,1),
	nomeLivro VARCHAR(60),
	numPaginaLivro INT,
	idGenero INT FOREIGN KEY REFERENCES tbGenero(idGenero),
	idAutor INT FOREIGN KEY REFERENCES tbAutor(idAutor),
	idEditora INT FOREIGN KEY REFERENCES tbEditora(idEditora),
)