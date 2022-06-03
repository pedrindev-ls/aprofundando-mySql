SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    users AS u
        INNER JOIN
    play_history AS ph ON u.user_id = ph.user_history_id
WHERE
    user_name = 'Bill'
GROUP BY user_name;