SELECT
    COUNT(DISTINCT(SONG.id)) AS cancoes,
    COUNT(DISTINCT(ARTISTS.id)) AS artistas,
    COUNT(DISTINCT(ALBUM.id)) AS albuns
FROM
    artists AS ARTISTS
    JOIN album AS ALBUM ON ARTISTS.id = ALBUM.artist_id
    JOIN song AS SONG ON ALBUM.id = SONG.album_id;