SELECT 
	REGIAO  			AS REGIAO, 
	ANO 				AS ANO,
	SUM(LUCRO_TOTAL)    AS LUCRO,
	SUM(QUANTIDADE)     AS QTD,
	SUM(TOTAL_ITEM)     AS TOTAL,
	SUM(CUSTO_TOTAL)    AS CUSTO
FROM DIM_CLIENTE 			AS DIM_CLIENTE
INNER JOIN FATO 			AS FATO
ON IDSK = FATO.IDCLIENTE
INNER JOIN DIM_TEMPO 		AS DIM_TEMPO
ON IDCLIENTE.IDSK = IDTEMPO
GROUP BY REGIAO, ANO
ORDER BY 1, 2