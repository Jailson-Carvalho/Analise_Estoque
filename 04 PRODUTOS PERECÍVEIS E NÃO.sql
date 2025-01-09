USE [ESTOQUE]

SELECT 
    [Nome do Produto],
    CASE 
        WHEN [Tipo de Produto] = 'Perec�vel' THEN [Tipo de Produto]
        ELSE ' '
    END AS Produto_Perecivel,
    CASE 
        WHEN [Tipo de Produto] = 'N�o Perec�vel' THEN [Tipo de Produto]
        ELSE ' '
    END AS Produto_Nao_Perecivel
FROM 
    [dbo].['Controle de Estoque$']
