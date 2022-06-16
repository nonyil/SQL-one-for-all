SELECT
    SONG.name AS cancao,
    COUNT(SONG.id) AS reproducoes
FROM
    song AS SONG
    JOIN user_history AS USER_HISTORY ON SONG.id = USER_HISTORY.song_id
GROUP BY
    cancao
ORDER BY
    reproducoes DESC,
    cancao ASC
LIMIT
    2;