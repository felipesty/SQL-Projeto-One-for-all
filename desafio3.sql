SELECT t1.nome_usuario, COUNT(t2.id_musica), ROUND(SUM((t3.duracao_segundos)/60),2)
	FROM SpotifyClone.usuarios AS t1
	INNER JOIN SpotifyClone.historico AS t2
	ON t1.id_usuario = t2.id_usuario
    INNER JOIN SpotifyClone.musicas AS t3
    ON t2.id_musica = t3.id_musica
    GROUP BY t1.nome_usuario
    ORDER BY t1.nome_usuario;