-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
#select all albums from albums table where artists id is (51)queen from name queen on artists table
SELECT title FROM albums WHERE artist_id='51'    ;

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
select count(name) from tracks where media_type_id='3'


-- 3) Find the least expensive track that has the genre "Electronica/Dance".

SELECT MIN(unit_price) FROM tracks WHERE genre_id='15';

-- 4) Find the all the artists whose names start with A.
SELECT name FROM artists WHERE name LIKE 'A%'


-- 5) Find all the tracks that belong to playlist 1.
SELECT * FROM playlists_tracks WHERE track_id='1';
