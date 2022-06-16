SELECT
    SONG.name AS nome,
    COUNT(USER_HISTORY.song_id) AS reproducoes
FROM
    user_history AS USER_HISTORY
    JOIN song AS SONG ON USER_HISTORY.song_id = SONG.id
    JOIN user AS `USER` ON `USER`.id = USER_HISTORY.user_id
WHERE
    `USER`.plan_id IN(1, 2) 
GROUP BY
    nome;