SELECT
    ARTISTS.name AS artista,
    ALBUM.name AS album,
    COUNT(FAVORITE_ARTIST.user_id) AS seguidores
FROM
    artists AS ARTISTS
    JOIN album AS ALBUM ON ALBUM.artist_id = ARTISTS.id
    JOIN user_favorite_artist AS FAVORITE_ARTIST ON FAVORITE_ARTIST.artist_id = ARTISTS.id
GROUP BY
    album,
    artista
ORDER BY
    seguidores DESC,
    artista,
    album;
    