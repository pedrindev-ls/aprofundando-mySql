SELECT 
    singer_name AS artista,
    album_name AS album
FROM
    singers AS s
        INNER JOIN
    albuns AS a ON singer_id = album_singer_id
WHERE singer_name = 'Walter Phoenix'
GROUP BY album_name , singer_name;