SELECT 
    m.music_name AS nome,
    COUNT(ph.music_history_id) AS reproducoes
FROM
    play_history AS ph
        INNER JOIN
    musics AS m ON ph.music_history_id = music_id
		INNER JOIN
	users AS u ON u.user_id = ph.user_history_id
WHERE u.user_plan_id = 4 OR u.user_plan_id = 2
GROUP BY m.music_name;