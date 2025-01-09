USE ESTOQUE

SELECT 
    CAST(COUNT(CASE WHEN [Tipo de Produto] = 'Não Perecível' THEN 1 END) AS FLOAT) / 
    CAST(COUNT(*) AS FLOAT) * 100 AS Percentual_Produtos_Pereciveis
FROM 
    [dbo].['Controle de Estoque$']