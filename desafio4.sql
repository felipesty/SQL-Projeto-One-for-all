SELECT 
DISTINCT(t1.nome_usuario) AS usuario,
IF(MAX(YEAR(t2.data_reproducao))='2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
	FROM SpotifyClone.usuarios AS t1
	INNER JOIN SpotifyClone.historico AS t2
	ON t1.id_usuario = t2.id_usuario
    GROUP BY (t1.nome_usuario)
    ORDER BY (t1.nome_usuario);
  