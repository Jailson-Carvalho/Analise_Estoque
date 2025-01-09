USE [ESTOQUE]

SELECT 
	[Nome do Produto],
	COUNT(DISTINCT [Nome do Produto]) AS Produtos
FROM [dbo].['Controle de Estoque$']
GROUP BY [Nome do Produto]