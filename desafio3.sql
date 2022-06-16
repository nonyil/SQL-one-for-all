SELECT
    USER.name as usuario,
    COUNT(SONG.id) AS qtde_musicas_ouvidas,
    ROUND(SUM(SONG.duration / 60), 2) AS total_minutos
FROM
    user AS USER
    JOIN user_history AS USER_HISTORY ON USER.id = USER_HISTORY.user_id
    JOIN song AS SONG ON USER_HISTORY.song_id = SONG.id
GROUP BY
    usuario
ORDER BY
    usuario;