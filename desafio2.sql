SELECT 
    COUNT(DISTINCT (m.music_id)) AS cancoes,
    COUNT(DISTINCT (s.singer_id)) AS artistas,
    COUNT(DISTINCT (a.album_id)) AS albuns
FROM
    musics AS m
        INNER JOIN
    albuns AS a ON music_singer_id = a.album_singer_id
        INNER JOIN
    singers AS s ON a.album_singer_id = s.singer_id;