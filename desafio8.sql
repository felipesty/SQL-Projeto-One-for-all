SELECT 
t1.nome_artista AS artista, 
t2.nome_album AS album
	FROM SpotifyClone.artistas AS t1
	INNER JOIN SpotifyClone.albuns AS t2
    ON t1.id_artista = t2.id_artista
ORDER BY artista desc
LIMIT 2;