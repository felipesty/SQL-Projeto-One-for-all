SELECT 
COUNT(t2.id_usuario) AS quantidade_musicas_no_historico
	FROM SpotifyClone.usuarios aS t1
	INNER JOIN SpotifyClone.historico AS t2
    ON t1.id_usuario = t2.id_usuario
 WHERE t1.nome_usuario = 'Bill';