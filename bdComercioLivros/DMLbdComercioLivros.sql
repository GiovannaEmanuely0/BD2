INSERT INTO tbAutor (nomeAutor) VALUES 
('Suzanne Collins'),
('Veronica Roth'),
('John Green'),
('Cassandra Clare'),
('Jenny Han'),
('Victoria Aveyard');

INSERT INTO tbAutor (nomeAutor) VALUES 
('Machado de Assis')

INSERT INTO tbEditora (nomeEditora) VALUES
('Intrínseca'),
('Rocco'),
('Seguinte'),
('Galera Record'),
('Editora Novo Conceito');

INSERT INTO tbEditora (nomeEditora) VALUES
('Arqueiro')

INSERT INTO tbEditora (nomeEditora) VALUES
('Cia das Letras')

INSERT INTO tbLivro (nomeLivro, isbnLivro, numPaginas, IdAutor, IdEditora) VALUES
('Jogos Vorazes', '9780439023481', 374, 1, 2),
('Em Chamas', '9780439023498', 391, 1, 2),
('Convergente', '9780062024060', 544, 2, 3),
('A Culpa é das Estrelas', '9780142424179', 313, 3, 1),
('Cidade dos Ossos', '9781442409524', 485, 4, 4),
('Cidade das Cinzas', '9781442409548', 453, 4, 4),
('P.S.: Ainda Amo Você', '9781442426736', 337, 5, 5),
('A Rainha Vermelha','9788565765695',424,6,3);
INSERT INTO tbLivro (nomeLivro, isbnLivro, numPaginas, IdAutor) VALUES
('Para Todos os Garotos que Já Amei', '9781442426705', 355, 5),
('Cidades de Papel', '9780142414934', 305, 3)
INSERT INTO tbLivro (nomeLivro, isbnLivro, numPaginas,idEditora) VALUES
('Insurgente', '9780062024046', 525, 3)

select * from tbLivro
