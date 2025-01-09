USE [ESTOQUE]
SELECT 
    [Nome do Produto],
    [Quantidade em Estoque],
    [Estoque Máximo],
    [Código do Lote] AS 'Código do Lote',
    [Data da Última Entrada],
    [Data de Validade],
    CASE 
        WHEN DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0 
        THEN -ABS(DATEDIFF(DAY, GETDATE(), [Data de Validade])) 
        ELSE ABS(DATEDIFF(DAY, GETDATE(), [Data de Validade])) 
    END AS Dias_Restantes
FROM     ['Controle de Estoque$']
WHERE     [Quantidade em Estoque] > [Estoque Máximo]
GROUP BY     [Nome do Produto], [Quantidade em Estoque], [Estoque Máximo], [Código do Lote], [Data da Última Entrada], [Data de Validade]
