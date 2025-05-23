---Inserts
-- Inserindo dados na tabela Autor
INSERT INTO tbAutor (nomeAutor) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('Carlos Drummond de Andrade'),
('Guimarães Rosa'),
('Cecília Meireles'),
('Jorge Amado'),
('Graciliano Ramos'),
('Erico Verissimo'),
('Monteiro Lobato'),
('Paulo Coelho');

-- Inserindo dados na tabela Editora
INSERT INTO tbEditora (nomeEditora) VALUES
('Companhia das Letras'),
('Rocco'),
('Record');

-- Inserindo dados na tabela Genero
INSERT INTO tbGenero (nomeGenero) VALUES
('Romance'),
('Poesia'),
('Conto'),
('Ficção Científica'),
('Drama');

-- Inserindo dados na tabela Livro
INSERT INTO tbLivro (nomeLivro, numPaginaLivro, IdAutor, IdEditora, IdGenero) VALUES
('Dom Casmurro', 320, 1, 1, 1),---
('A Hora da Estrela', 96, 2, 1, 1),
('Alguma Poesia', 180, 3, 1, 2),
('Grande Sertão: Veredas', 608, 4, 1, 1),
('Viagem', 120, 5, 2, 2),
('Capitães da Areia', 288, 6, 3, 1),
('Vidas Secas', 160, 7, 3, 1),
('O Tempo e o Vento', 1480, 8, 1, 1),
('Reinações de Narizinho', 192, 9, 2, 3),
('O Alquimista', 208, 10, 3, 1),
('Memórias Póstumas de Brás Cubas', 256, 1, 1, 1),---
('Felicidade Clandestina', 144, 2, 1, 3),
('Sentimento do Mundo', 88, 3, 1, 2),
('Sargento Getúlio', 112, 7, 3, 1),
('O Cortiço', 200, 6, 3, 1);

DELETE tbLivro
WHERE idLivro >= 16