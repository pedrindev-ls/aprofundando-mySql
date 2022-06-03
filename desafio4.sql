SELECT 
    u.user_name AS usuario,
    CASE
		WHEN SUM(CASE
			WHEN history_date LIKE '2021%' THEN 1
			ELSE NULL
		END) > 0 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
	END AS condicao_usuario
FROM
    users AS u
        LEFT JOIN
    play_history AS ph ON u.user_id = ph.user_history_id
GROUP BY usuario
ORDER BY usuario;