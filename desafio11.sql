SELECT 
    m.music_name AS nome_musica,
    CASE
		WHEN m.music_name LIKE '%Streets%' THEN REPLACE(m.music_name, 'Streets', 'Code Review')
        WHEN m.music_name LIKE '%Her Own%' THEN REPLACE(m.music_name, 'Her Own', 'Trybe')
        WHEN m.music_name LIKE '%Inner Fire%' THEN REPLACE(m.music_name, 'Inner Fire', 'Project')
        WHEN m.music_name LIKE '%Silly%' THEN REPLACE(m.music_name, 'Silly', 'Nice')
        WHEN m.music_name LIKE '%Circus%' THEN REPLACE(m.music_name, 'Circus', 'Pull Request')
        ELSE m.music_name
	END AS novo_nome
FROM
    musics AS m
WHERE
    m.music_name = 'Dance With Her Own'
        OR m.music_name = 'Let\'s Be Silly'
        OR m.music_name = 'Magic Circus'
        OR m.music_name = 'Troubles Of My Inner Fire'
        OR m.music_name = 'Without My Streets'
ORDER BY m.music_name;