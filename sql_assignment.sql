-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

SELECT * FROM albums WHERE artist_id = '51';
-- 51 is the artist_id for 'Queen' which i found by doing SELECT artist_id FROM artists WHERE name='Queen'

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT COUNT(*) FROM media_types WHERE name='Protected MPEG-4 video file';

-- 3) Find the least expensive track that has the genre "Electronica/Dance".

SELECT name, min(unit_price) AS price FROM tracks WHERE genre_id='15' GROUP BY name;
-- 15 is the genre_id for 'Electronica/Dance' which i found by doing SELECT genre_id FROM genres WHERE name='Electronica/Dance'

-- 4) Find the all the artists whose names start with A.

SELECT * FROM artists WHERE name LIKE 'A%';

-- 5) Find all the tracks that belong to playlist 1.

SELECT id, name FROM tracks where id IN (SELECT track_id FROM playlists_tracks WHERE playlist_id='1');
