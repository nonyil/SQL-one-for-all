SELECT
    ARTISTS.name AS artista,
    ALBUM.name AS album
FROM
    artists AS ARTISTS
    JOIN album AS ALBUM ON ALBUM.artist_id = ARTISTS.id
WHERE
    ARTISTS.name = "Walter Phoenix";