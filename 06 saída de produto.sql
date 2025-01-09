USE [ESTOQUE]

SELECT 
    [C�digo do Lote],
    [Nome do Produto],
    [Quantidade em Estoque],
    [Data da �ltima Sa�da]
FROM 
    [dbo].['Controle de Estoque$']
WHERE 
    [Data da �ltima Sa�da] IS NOT NULL
ORDER BY 
    [Data da �ltima Sa�da] DESC;
