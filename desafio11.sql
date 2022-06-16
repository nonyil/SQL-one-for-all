SELECT
    SONG.name AS nome_musica, CASE
        WHEN SONG.name LIKE "%Streets" THEN REPLACE(SONG.name, "Streets", "Code Review")
        WHEN SONG.name LIKE "%Her Own" THEN REPLACE(SONG.name, "Her Own", "Trybe")
        WHEN SONG.name LIKE "%Inner Fire" THEN REPLACE(SONG.name, "Inner Fire", "Project")
        WHEN SONG.name LIKE "%Silly" THEN REPLACE(SONG.name, "Silly", "Nice")
        WHEN SONG.name LIKE "%Circus" THEN REPLACE(SONG.name, "Circus", "Pull Request")
    END AS novo_nome
FROM
    song AS SONG
WHERE
    id IN(4, 15, 3, 6, 18)
ORDER BY
    nome_musica;