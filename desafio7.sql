SELECT 
    singer_name AS artista,
    album_name AS album,
    COUNT(singer_id_followed) AS seguidores
FROM
    singers AS s
        INNER JOIN
    albuns AS a ON singer_id = album_singer_id
        INNER JOIN
    singers_following AS sf ON singer_id = singer_id_followed
GROUP BY album_name , singer_name
ORDER BY seguidores DESC, artista, album;