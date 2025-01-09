USE [ESTOQUE]

SELECT 
	[Código do Lote],
    SUM([Custo Unitário (R$)]) AS PREJUÍZO_COM_ESTOQUE
FROM 
    ['Controle de Estoque$']
WHERE 
    DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0

GROUP BY [Código do Lote]