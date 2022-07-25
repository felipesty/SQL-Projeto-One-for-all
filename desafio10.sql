SELECT 
t1.nome_musica AS nome,
COUNT(t2.id_musica) AS reproducoes
	FROM SpotifyClone.musicas aS t1
	INNER JOIN SpotifyClone.historico AS t2
    INNER JOIN SpotifyClone.usuarios AS t3
on t1.id_musica = t2.id_musica AND t2.id_usuario = t3.id_usuario
WHERE t3.id_plano IN (1,4)
GROUP BY t1.nome_musica
ORDER BY t1.nome_musica;