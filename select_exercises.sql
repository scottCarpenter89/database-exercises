USE scott;
/*Albums made by Pink Floyd*/
SELECT name FROM albums WHERE artist = 'Pink Floyd';
/*Year that Sgt. Pepper's Lonely Hearts Band album released*/
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Band';
/*Genre of the album Nevermind*/
SELECT genre FROM albums WHERE name = 'Nevermind';
/*All albums produced in the 1990's*/
SELECT * FROM albums WHERE release_date BETWEEN 1989 AND 2000;
/*All albums that sold less than 20 million copies*/
SELECT * FROM albums WHERE sales < 20;
/*All albums with the Rock genre*/
SELECT * FROM albums WHERE genre = 'Rock';