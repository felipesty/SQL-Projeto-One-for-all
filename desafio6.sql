SELECT 
MIN(t1.preco_plano) AS faturamento_minimo, 
MAX(t1.preco_plano) AS faturamento_maximo,
ROUND(AVG(t1.preco_plano),2) AS faturamento_medio,
SUM(t1.preco_plano) AS faturamento_total
	FROM SpotifyClone.planos AS t1
	INNER JOIN SpotifyClone.usuarios AS t2
	ON t1.id_plano = t2.id_plano;
