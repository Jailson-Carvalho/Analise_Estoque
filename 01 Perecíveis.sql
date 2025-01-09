-- 5.	Percentual de Produtos Perecíveis no Estoque: (Quantidade de produtos perecíveis / Quantidade total de produtos) * 100.

-- Supondo que exista uma coluna 'Perecivel' na tabela 'Produtos'
-- onde o valor '1' indica que o produto é perecível e '0' indica que não é.
USE ESTOQUE
SELECT 
    CAST(COUNT(CASE WHEN [Tipo de Produto] = 'Perecível' THEN 1 END) AS FLOAT) /
    CAST(COUNT(*) AS FLOAT) * 100 AS Percentual_Produtos_Pereciveis
FROM [dbo].['Controle de Estoque$']