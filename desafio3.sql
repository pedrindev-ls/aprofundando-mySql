SELECT 
    u.user_name AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
    ROUND(SUM((m.music_duration) / 60), 2) AS total_minutos
FROM
    users AS u
        INNER JOIN
    play_history AS ph ON u.user_id = ph.user_history_id
        INNER JOIN
    musics AS m ON m.music_id = ph.music_history_id
GROUP BY user_name;