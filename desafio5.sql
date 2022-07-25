SELECT 
t1.nome_musica AS cancao, COUNT(t2.data_reproducao) AS reproducoes
	FROM SpotifyClone.musicas AS t1
	INNER JOIN SpotifyClone.historico AS t2
	ON t1.id_musica = t2.id_musica
	GROUP BY t1.nome_musica
    ORDER BY reproducoes desc, cancao
    LIMIT 2;