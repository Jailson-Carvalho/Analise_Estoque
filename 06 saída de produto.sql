USE [ESTOQUE]

SELECT 
    [Código do Lote],
    [Nome do Produto],
    [Quantidade em Estoque],
    [Data da Última Saída]
FROM 
    [dbo].['Controle de Estoque$']
WHERE 
    [Data da Última Saída] IS NOT NULL
ORDER BY 
    [Data da Última Saída] DESC;
