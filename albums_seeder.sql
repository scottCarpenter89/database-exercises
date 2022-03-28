USE scott;

INSERT INTO `albums` ('artist', 'album_name', 'release_date', 'sales', 'genres')
VALUES ('Michael Jackson', 'Thriller', '1982', '49.2', 'Pop, post-disco, funk, rock')

INSERT INTO `albums` ('artist', 'album_name', 'release_date', 'sales', 'genres')
VALUES ('AC/DC', 'Back In Black', '1980', '29.5', 'hard rock')

INSERT INTO `albums` (`artist`, `album_name`, `release_date`, `sales`, `genres`)
VALUES ('Whitney Houston', 'The Bodygaurd', '1992', '32.4', 'R&B, soul, pop, soundtrack');

INSERT INTO `albums` (`artist`, `album_name`, `release_date`, `sales`, `genres`)
VALUES ('Meat Loaf', 'Bat Out of Hell', '1977', '21.7', 'Hard rock, glam rock, progressive rock    ');

INSERT INTO `albums` (`artist`, `album_name`, `release_date`, `sales`, `genres`)
VALUES ('Eagles', 'Their Greatest Hits (1971–1975)', '1976', '41.2', 'Country rock, soft rock, folk rock');

INSERT INTO `albums` (`artist`, `album_name`, `release_date`, `sales`, `genres`)
VALUES ('Pink Floyd', 'The Dark Side of the Moon', '1973', '24.4', 'Progressive rock');

TRUNCATE albums;

INSERT INTO `albums` (`artist`, `album_name`, `release_date`, `sales`, `genres`)
VALUES ('Michael Jackson', 'Thriller', '1982', '49.2', 'Pop, post-disco, funk, rock'),
       ('AC/DC', 'Back In Black', '1980', '29.5', 'hard rock'),
       ('Whitney Houston', 'The Bodygaurd', '1992', '32.4', 'R&B, soul, pop, soundtrack'),
       ('Meat Loaf', 'Bat Out of Hell', '1977', '21.7', 'Hard rock, glam rock, progressive rock    '),
       ('Eagles', 'Their Greatest Hits (1971–1975)', '1976', '41.2', 'Country rock, soft rock, folk rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', '1973', '24.4', 'Progressive rock');

SELECT * FROM albums;