USE [ESTOQUE]

SELECT 
	[C�digo do Lote],
    SUM([Custo Unit�rio (R$)]) AS PREJU�ZO_COM_ESTOQUE
FROM 
    ['Controle de Estoque$']
WHERE 
    DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0

GROUP BY [C�digo do Lote]