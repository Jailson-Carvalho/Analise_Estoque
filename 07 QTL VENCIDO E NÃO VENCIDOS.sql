USE ESTOQUE

SELECT 
    COUNT(DISTINCT([Código do Lote])) AS Quantidade_Total_Lotes,
    SUM(CASE 
            WHEN DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0 THEN 1 
            ELSE 0 
        END) AS Quantidade_Lotes_Vencidos,
    (COUNT([Código do Lote]) - 
     SUM(CASE 
             WHEN DATEDIFF(DAY, GETDATE(), [Data de Validade]) < 0 THEN 1 
             ELSE 0 
         END)) AS Quantidade_Lotes_Ativos
FROM 
    [dbo].['Controle de Estoque$']
WHERE [Data da Última Saída] BETWEEN '2023-10-01' AND '2024-12-31'
