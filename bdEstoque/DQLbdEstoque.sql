---dql bd estoque

---(a)descri��es dos produtos ao lados dos fabricantes
SELECT descProduto 'Descri��o do produto', nomeFabricante 'Fabricante' FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
---(b)descri��o dos produtos ao lado dos fornecedores
SELECT descProduto 'Descri��o do produto', nomeFornecedor 'Fornecedor' FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
---(c)Listar soma das quantidades dos produtos agrupados pelo nome do fabricante
SELECT SUM(quantProduto) 'Quantidade total produtos', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante
---(d)Listar o total das vendas ao lado do nome do cliente
SELECT valorTotalVenda 'Total', nomeCliente 'Cliente' FROM tbVenda
	INNER JOIN tbCliente
		ON tbVenda.idCliente = tbCliente.idCliente
			--GROUP BY nomeCliente
				--	ORDER BY nomeCliente
---(e)m�dia dos pre�os dos produtos agrupados pelo nome do fabricante
SELECT AVG(valorProduto) 'M�dia dos produtos', nomeFabricante 'Nome do Fabricante' FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante
---(f)listar todas as somas das vendas agrupadas pelo nome do cliente em ordem alfab�tica
SELECT SUM(valorTotalVenda) 'Total', nomeCliente 'Cliente' FROM tbVenda
	INNER JOIN tbCliente
		ON tbVenda.idCliente = tbCliente.idCliente
			GROUP BY nomeCliente
					ORDER BY nomeCliente
---(g)listar a soma dos pre�os dos produtos agrupados pelo nome do fabricante
SELECT SUM(valorProduto) 'Soma do valor do produto', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante
---(h)listar a  m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor
SELECT AVG(valorProduto) 'M�dia dos valores dos produtos', nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		 ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
			GROUP BY nomeFornecedor
---(i)listar a soma das vendas agrupadas pelo nome do produto
SELECT SUM(valorTotalVenda) 'Valor Total', descProduto 'Descri��o do Produto' FROM tbVenda
	INNER JOIN tbItensVenda ON tbVenda.idVenda = tbItensVenda.idVenda
		INNER JOIN tbProduto ON tbItensVenda.idProduto = tbProduto.idProduto
			GROUP BY descProduto
---(j)Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
SELECT DISTINCT SUM(valorTotalVenda), nomeCliente FROM tbVenda
	INNER JOIN tbCliente
		ON tbVenda.idCliente = tbCliente.idCliente
			WHERE MONTH(dtVenda) = 02 AND YEAR(dtVenda) = 2014
				GROUP BY nomeCliente