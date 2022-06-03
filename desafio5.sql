SELECT 
    m.music_name AS cancao, COUNT(*) AS reproducoes
FROM
    play_history AS ph
        INNER JOIN
    musics AS m ON m.music_id = ph.music_history_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;