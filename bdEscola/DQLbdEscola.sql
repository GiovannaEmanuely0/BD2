SELECT nomeAluno,rgAluno,dataNascAluno FROM tbAluno
WHERE naturalidadeAluno = 'SP'

SELECT nomeAluno,rgAluno FROM tbAluno
WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso FROM tbCurso
WHERE cargaHorariaCurso > 2000

SELECT nomeAluno,rgAluno FROM tbAluno
WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno, dataNascAluno FROM tbAluno
WHERE DATEPART (MONTH, dataNascAluno) = 03

SELECT idAluno, dataMatricula FROM tbMatricula
WHERE DATEPART (MONTH, dataMatricula) = 05

SELECT idAluno FROM tbMatricula
WHERE idTurma = 1 OR idTurma = 2

SELECT idAluno FROM tbMatricula
WHERE idTurma = 3

SELECT * FROM tbAluno

SELECT * FROM tbTurma
--Já rodado--