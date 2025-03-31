CREATE DATABASE bdUniversidade
GO
USE bdUniversidade

---1-
CREATE TABLE tbCampo(
	idCampo INT PRIMARY KEY,
	nomeCampo VARCHAR(100),
	descCampo VARCHAR(50)
)
----2--
CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY,
	nomeCurso VARCHAR (30) NOT NULL,
	descCurso VARCHAR (50),
	idCampo INT FOREIGN KEY REFERENCES tbCampo(idCampo)
)
---3--
CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY,
	nomeProfessor VARCHAR(100) NOT NULL,
	cpfProfessor CHAR(11) NOT NULL,
	dataNascProfessor SMALLDATETIME NOT NULL,
	lograProfessor VARCHAR(100),
	numLograProfessor VARCHAR(5),
	ufProfessor CHAR(2),
	cidadeProfessor VARCHAR(50),
	bairroProfessor VARCHAR(50),
	compleProfessor VARCHAR(10),
	cepProfessor CHAR(8)
)
---4--
CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY,
	nomeTurma VARCHAR(15) NOT NULL,
	serieTurma VARCHAR(5) NOT NULL,
	dataInicioTurma SMALLDATETIME NOT NULL,
	dataTerminoTurma SMALLDATETIME NOT NULL
)
---5--
CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY,
	nomeAluno VARCHAR(100) NOT NULL,
	dataNascAluno SMALLDATETIME NOT NULL,
	raAluno CHAR(10) NOT NULL,
	cpfAluno CHAR(11) NOT NULL,
	lograAluno VARCHAR(100),
	numLograAluno VARCHAR(5),
	ufAluno CHAR(2),
	cidadeAluno VARCHAR(50),
	bairroAluno VARCHAR(50),
	compleAluno VARCHAR(10),
	cepAluno CHAR(8),
	idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
--6--
CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY,
	nomeDisciplina VARCHAR(75),
	descDisciplina VARCHAR(200),
	tipoDisciplina VARCHAR(15),
	turnoDisciplina VARCHAR(20)
)
--7--
CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY,
	idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma),
	idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
)
--8--
CREATE TABLE tbDiscCurso(
	idDiscCurso INT PRIMARY KEY,
	idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina),
	idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
)
--9--
CREATE TABLE tbProfDisc(
	idProfDisc INT PRIMARY KEY,
	idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina),
	idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
)
--10--
CREATE TABLE tbFoneAluno(
	idFoneAluno INT PRIMARY KEY,
	descFoneAluno VARCHAR(13),
	idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
)
--11--
CREATE TABLE tbFoneProf(
	idFoneProf INT PRIMARY KEY,
	descFoneProf VARCHAR(13),
	idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
)