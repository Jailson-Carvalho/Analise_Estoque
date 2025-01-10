Título do projeto
Primeira análise dos dados do Estoque para futuro aprimoramento


Link para os Dashboards da análise: https://app.powerbi.com/view?r=eyJrIjoiN2I3NjM1NzgtYTFmNi00MWZjLWJjM2QtMTIwNjdkMjNmZWVmIiwidCI6ImE5MDMzMzViLWJhOTAtNDRiZS04ZjM2LTcwMWJiNjk3ZTQ1YSJ9

Objetivo: Identificar os prazos de validade de todos os produtos no estoque para evitar desperdício. Ter um panorama geral das vendas nos anos de 2023 e 2024. 
Contexto: A análise foi realizada com base em dados fictícios de uma empresa do setor alimentício especializada na produção de laticínios. A principal motivação dessa investigação foi compreender melhor a dinâmica de validade dos produtos em estoque e prevenir desperdícios decorrentes de vencimentos. Além disso, a análise visou oferecer um panorama detalhado das vendas realizadas nos anos de 2023 e 2024, permitindo à empresa identificar padrões de consumo, sazonalidades e oportunidades de otimização de sua cadeia de suprimentos.
Dados utilizados:
•	Fontes: Bluesoft ERP
•	Tipo de dados: Código do Produto, Nome do Produto, Categoria, Quantidade em Estoque, Unidade de Medida, Custo Unitário (R$), Valor Total em Estoque (R$), Estoque Mínimo, Estoque Máximo, Data de Validade, Localização no Estoque, Fornecedor, Data da Última Entrada, Data da Última Saída, Tipo de Produto.
Metodologia:
•	Ferramentas: 
o	SQL: Para consultas e extração de dados do banco de dados.
o	Power BI: Para criação de dashboards interativos e visualizações.
•	Técnicas: 
o	Análise exploratória de dados (EDA) para entender os produtos que tiveram mais saída no período.
o	Modelagem preditiva: Previsão de Demanda, Risco de Vencimento de Produtos, Identificação de Produtos Lentos, Reposição de Estoque.
Análise Estoque_Vencimentos: 
•	O valor total de prejuízo é 13,48 mil, indicando uma gestão ineficiente de lotes e controle de validade.
•	O valor total no estoque é 2,20 bilhões, refletindo a importância de otimizar o estoque para evitar desperdícios.
•	50% dos lotes estão ativos e 50% estão vencidos.
•	Apenas 10,2% são não perecíveis, enquanto 89,8% são perecíveis, sugerindo maior atenção aos produtos perecíveis.
•	Na tabela matriz temos em alguns lotes que estão acima da quantidade máxima tolerada. Talvez as vendas não estão suprindo o potencial de produção.

Insights Estoque_Vencimentos:
1.	Gestão Ineficiente de Produtos Perecíveis:
Representando 89,2% do total, os produtos perecíveis estão diretamente ligados aos lotes vencidos e ao prejuízo de 13,48 mil. É necessário:
o	Rotação de Estoque (FIFO) para produtos perecíveis.
o	Monitoramento mais próximo das datas de validade.
2.	Alto Valor de Estoque:
Com 2,20 bilhões em estoque, o capital parado é significativo. Avaliar a possibilidade de reduzir estoques máximos para produtos de baixa demanda.
3.	Distribuição Equilibrada de Lotes (Ativos x Vencidos):
A divisão de 50% para lotes vencidos reflete um gargalo na cadeia de distribuição ou na projeção de vendas. É essencial:
o	Revisar as políticas de reposição.
o	Implementar um sistema de alerta para vencimento.
o	Aprimorar as vendar para que haja um escoamento do estoque.
4.	Produtos com Prazo de Validade Longo:
Alguns produtos possuem mais de 300 dias até vencer. Ajustar as estratégias de reposição para equilibrar o estoque e evitar excessos.

Ações Recomendadas:
1.	Melhorar o Controle de Lotes:
o	Usar alertas automáticos para lotes próximos do vencimento.
2.	Reduzir Estoque Máximo para Produtos com Baixa Rotatividade:
o	Revisar previsões de demanda.
o	Realocar o orçamento para itens com maior giro.
3.	Treinamento de Equipes:
o	Capacitar funcionários para seguir práticas de controle de validade.
o	Criar campanha de promoções para vender produtos ainda em estoque que estão próximo da data de validade.

Análise Saída
1.	Período de Análise:
o	A análise cobre as saídas de estoque entre 01/01/2023 e 31/12/2024.
o	Há variação significativa nas saídas diárias, evidenciada pelas flutuações ao longo do gráfico de linha.
2.	Quantidade de Saída do Estoque por Ano, Mês e Dia:
o	O comportamento das saídas apresenta picos em intervalos regulares.
o	Períodos de maior saída aparentam ser nos meses de julho e dezembro, possivelmente associados a sazonalidades, como festividades e clima.
3.	Saída por Nome de Produto:
o	Produtos com maior saída:
	Doce de Leite é o líder em volume, ultrapassando 25 mil unidades.
	Iogurte e Leite em Pó também têm altos índices de saída, acima de 20 mil unidades.
o	Produtos com menor saída:
	Manteiga e Sorvete apresentam as menores quantidades, indicando menor demanda ou disponibilidade no estoque.
Insights Saída
1.	Sazonalidade no Consumo:
o	O padrão de picos pode estar relacionado a datas festivas, férias ou promoções. Estratégias de marketing podem ser alinhadas com esses períodos para maximizar vendas.
2.	Produtos de Alta Rotatividade:
o	Doce de Leite, Iogurte e Leite em Pó são os itens mais populares. Manter estoques adequados desses produtos é essencial para atender à demanda e evitar rupturas.
3.	Produtos de Baixa Rotatividade:
o	Manteiga e Sorvete têm menor saída, podendo indicar:
	Necessidade de ajustes de preço ou promoção.
	Reavaliação do estoque mínimo e máximo desses produtos.
4.	Planejamento Logístico:
o	Flutuações diárias nas saídas sugerem necessidade de monitoramento constante para garantir que a reposição de estoques acompanhe a demanda.
5.	Possíveis Desperdícios:
o	Produtos de baixa saída estão em risco de vencer no estoque, especialmente se forem perecíveis, exigindo maior atenção.
Ações Recomendadas
1.	Promoções Sazonais:
o	Oferecer descontos em períodos de baixa demanda para alavancar as vendas de produtos de menor saída.
2.	Análise de Validade:
o	Priorizar a venda de produtos com datas de validade mais próximas para evitar perdas.
3.	Revisão de Estoques:
o	Ajustar o estoque máximo de produtos com baixa rotatividade.
o	Reavaliar a política de compras/produção para evitar excesso.
4.	Marketing Direcionado:
o	Criar campanhas específicas para os produtos de alta demanda nos períodos de pico identificados.

Resumo conclusivo:
A análise revelou prejuízo de R$ 13,48 mil devido a lotes vencidos e um estoque total avaliado em R$ 2,20 bilhões, dos quais 89,2% são perecíveis. Para otimizar o estoque, recomenda-se adotar rotatividade FIFO (Primeiro que Entra, Primeiro que saí), implementar alertas automáticos, ajustar previsões de demanda e promover vendas de produtos próximos ao vencimento. Essas ações visam prevenir desperdícios e melhorar a eficiência da cadeia de suprimentos, equilibrando estoque e demanda.
