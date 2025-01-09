USE estoque

SELECT 
    DISTINCT [Nome do Produto],
    [C�digo do Lote] AS 'C�digo do Lote'
FROM 
    ['Controle de Estoque$']
WHERE 
    DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0

