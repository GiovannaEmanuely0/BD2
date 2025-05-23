---DQL
--a)O total de livros que começam com a letra P
SELECT COUNT(idLivro) FROM tbLivro
WHERE nomeLivro LIKE 'P%'
--b)O maior número de páginas entre todos os livros
SELECT MAX(numPaginaLivro) FROM tbLivro
--c) O menor número de páginas entre todos os livros
SELECT MIN(numPaginaLivro) FROM tbLivro
--d)A média de páginas entre todos os livros
SELECT AVG(numPaginaLivro) FROM tbLivro
--e)A soma do número de páginas dos livros de editora código 01
SELECT SUM(numPaginaLivro) FROM tbLivro
WHERE idAutor = 1
--f)A soma dos números de páginas dos livros que começam com a letra A
SELECT SUM(numPaginaLivro) FROM tbLivro
WHERE nomeLivro LIKE 'A%'
--g)A média dos números de páginas dos livros que sejam do autor código 03
SELECT AVG(numPaginaLivro) FROM tbLivro
WHERE idAutor = 3
--h)A quantidade de livros da editora de código 04
SELECT COUNT(idLivro) FROM tbLivro
WHERE idEditora = 4
--i) A média do número de páginas dos livros que tenham a palavra “estrela” em seu nome
SELECT AVG(numPaginaLivro) FROM tbLivro
WHERE nomeLivro LIKE '%estrela%'
--j)A quantidade de livros que tenham a palavra “poema” em seu nome
SELECT COUNT(idLivro) FROM tbLivro
WHERE nomeLivro LIKE '%poema%'
--k)A quantidade de livros agrupado pelo nome do gênero
SELECT COUNT(idLivro) 'Quantidade de Livros', nomeGenero 'G�nero' FROM tbLivro
	INNER JOIN tbGenero ON tbLivro.idGenero = tbGenero.idGenero
		GROUP BY nomeGenero
--l) A soma das páginas agrupada pelo nome do autor
SELECT SUM(numPaginaLivro) 'Soma das p�ginas', nomeAutor 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
		GROUP BY nomeAutor
--m)A média de páginas agrupada pelo nome do autor em ordem alfabética (de A a Z)
SELECT AVG(numPaginaLivro), nomeAutor FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.idAutor = tbAutor.idAutor
			GROUP BY nomeAutor
				ORDER BY nomeAutor
--n) A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (de Z a A)
SELECT COUNT(idLivro), nomeEditora FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.idEditora = tbEditora.idEditora
			GROUP BY nomeEditora
				ORDER BY nomeEditora DESC
--o)A soma de páginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra “C”
SELECT SUM(numPaginaLivro) 'Soma das p�ginas dos livros', nomeAutor 'Autor' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.idAutor = tbAutor.idAutor
			WHERE nomeAutor LIKE 'C%'
			GROUP BY nomeAutor
--p)A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja “Machado de Assis” ou “Cora Coralina” ou “Graciliano Ramos” ou “Clarice Lispector”
SELECT COUNT(idLivro) 'Quantidade Livro', nomeAutor 'Autor' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.idAutor = tbAutor.idAutor
			WHERE nomeAutor IN ('Machado de Assis','Clarice Lispector','Graciliano Ramos','Cora Coralina')
			GROUP BY nomeAutor
--q)  A soma das páginas dos livros agrupadas pelo nome da editora cujo número de páginas esteja entre 200 e 500 (inclusive)
SELECT SUM(numPaginaLivro) 'Soma das p�ginas dos livros', nomeEditora 'Editora' FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.idEditora = tbEditora.idEditora
		WHERE numPaginaLivro >= 200 AND numPaginaLivro <= 500
			GROUP BY nomeEditora
--r)O nome dos livros ao lado do nome das editoras e do nome dos autores
SELECT nomeLivro 'Livro', nomeEditora 'Editora', nomeAutor 'Autor' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.idEditora = tbEditora.idEditora
	INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
		ORDER BY nomeLivro
--s)O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for “Cia das Letras”
SELECT nomeLivro 'Livro', nomeAutor 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
	WHERE idEditora = 1
--t)O nome dos livros ao lado dos nomes dos autores, somente dos livros que não forem do autor “Érico Veríssimo”
SELECT nomeLivro 'Livro', nomeAutor 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
	WHERE nomeAutor NOT LIKE 'Erico Verissimo'
	ORDER BY nomeLivro