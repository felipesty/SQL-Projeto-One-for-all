SELECT 
t1.nome_artista AS artista, 
t2.nome_album AS album,
COUNT(t3.id_artista) AS seguidores
	FROM SpotifyClone.artistas AS t1
	INNER JOIN SpotifyClone.albuns AS t2
    ON t1.id_artista = t2.id_artista
    INNER JOIN SpotifyClone.seguindo AS t3
	ON t2.id_artista = t3.id_artista
GROUP BY t1.nome_artista, t2.nome_album
ORDER BY seguidores desc, artista;