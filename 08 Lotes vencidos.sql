USE estoque

SELECT 
    DISTINCT [Nome do Produto],
    [Código do Lote] AS 'Código do Lote'
FROM 
    ['Controle de Estoque$']
WHERE 
    DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0

