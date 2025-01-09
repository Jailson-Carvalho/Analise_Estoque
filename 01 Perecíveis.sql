-- 5.	Percentual de Produtos Perec�veis no Estoque: (Quantidade de produtos perec�veis / Quantidade total de produtos) * 100.

-- Supondo que exista uma coluna 'Perecivel' na tabela 'Produtos'
-- onde o valor '1' indica que o produto � perec�vel e '0' indica que n�o �.
USE ESTOQUE
SELECT 
    CAST(COUNT(CASE WHEN [Tipo de Produto] = 'Perec�vel' THEN 1 END) AS FLOAT) /
    CAST(COUNT(*) AS FLOAT) * 100 AS Percentual_Produtos_Pereciveis
FROM [dbo].['Controle de Estoque$']