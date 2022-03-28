USE scott;

SELECT name FROM albums;
SELECT name FROM albums WHERE release_date < 1980;
SELECT name FROM albums WHERE artist = 'Michael Jackson';