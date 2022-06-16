SELECT
    COUNT(HISTORY.song_id) AS quantidade_musicas_no_historico
FROM
    user AS `USER`
    JOIN user_history AS HISTORY ON HISTORY.user_id = `USER`.id
    WHERE `USER`.name = "Bill";