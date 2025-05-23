--- a) Criar uma consulta em que seja poss�vel identificar todo autores pelo nome, inclusive 
---aqueles autores que ainda n�o tiveram livros cadastrados;

SELECT nomeAutor 'Autor', nomeLivro 'Livro' FROM tbAutor
LEFT JOIN tbLivro ON tbLivro.idAutor = tbAutor.idAutor

---b) Criar uma consulta em que seja poss�vel identificar todas as editoras pelo nome, inclusive 
---aquelas que ainda n�o publicaram livros

SELECT nomeEditora 'Editora', nomeLivro 'Livro' FROM tbEditora
LEFT JOIN tbLivro ON tbLivro.idEditora = tbEditora.idEditora

---c) Criar uma consulta em que seja poss�vel identificar todos os livros pelo nome, inclusive 
---aqueles que n�o tem autor cadastrado

SELECT nomeLivro 'Livro', nomeAutor 'Autor' FROM tbLivro
LEFT JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor

---d) Criar uma consulta em que seja poss�vel mostrar todos os livros pelo nome, inclusive 
---aqueles que ainda n�o foram publicados por nenhuma editoraSELECT nomeEditora 'Editora', nomeLivro 'Livro' FROM tbEditora
RIGHT JOIN tbLivro ON tbLivro.idEditora = tbEditora.idEditora---e) Criar uma consulta que exiba todos os nomes de livros ao lado dos nomes das editoras, 
---inclusive as editoras que ainda n�o fizeram nenhuma publica��o e aqueles livros publicados 
---ainda n�o possuem nenhuma editora relacionadaSELECT nomeLivro 'Livro', nomeEditora 'Editora' FROM tbLivro
FULL JOIN tbEditora ON tbLivro.idEditora = tbEditora.idEditora---f) A Cia das Letras quer publicar TODOS os livros cadastrados. Criar uma consulta que 
---apresenta o nome do livro ao lado do nome da editora Cia das LetrasSELECT nomeLivro 'Livro', nomeEditora 'Editora' FROM tbLivroCROSS JOIN tbEditoraWHERE nomeEditora LIKE 'Cia%'---g) Caso todas as editoras queiram publicar todos os livros, criar uma consulta para relacionar 
---todas as editoras com todos os livros

SELECT nomeLivro 'Livro', nomeEditora 'Editora' FROM tbLivroCROSS JOIN tbEditora

--h) Criar uma consulta que apresente apenas os livros que n�o tem autor cadastrado

SELECT nomeLivro 'Livro', nomeAutor 'Autor' FROM tbLivro
LEFT JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor 
WHERE ISNULL(tbLivro.idAutor, '') = ''

--i) Criar uma consulta que apresente os nomes das editoras que ainda n�o tem um livro 
--publicado

SELECT nomeEditora 'Editora', nomeLivro 'Livro' FROM tbEditora
LEFT JOIN tbLivro ON tbLivro.idEditora = tbEditora.idEditora
WHERE ISNULL(tbLivro.idEditora, '') = ''

--j) Criar uma consulta que apresente apenas os nomes dos autores que ainda n�o escreveram 
--nenhum livroSELECT nomeAutor 'Autor', nomeLivro 'Livro' FROM tbAutor
LEFT JOIN tbLivro ON tbLivro.idAutor = tbAutor.idAutor 
WHERE ISNULL(tbLivro.idAutor, '') = ''

