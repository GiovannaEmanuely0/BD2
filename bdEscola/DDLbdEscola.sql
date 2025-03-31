CREATE DATABASE bdEscola
GO
USE bdEscola

---Não relacionais Aluno e Curso
CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(1,1),
	nomeAluno VARCHAR(200),
	dataNascAluno SMALLDATETIME,
	rgAluno CHAR(11),
	naturalidadeAluno CHAR(2),
)
CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY(1,1),
	nomeCurso VARCHAR(50),
	cargaHorariaCurso INT,
	valorCurso FLOAT,
)
CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY(1,1),
	nomeTurma VARCHAR(5),
	idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso),
	horarioTurma DATETIME,
)
CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY(1,1),
	dataMatricula SMALLDATETIME,
	idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno),
	idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma),
)