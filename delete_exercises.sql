USE scott;

/*Deletes any albums released after 1991*/
DELETE FROM albums WHERE release_date > 1991;
/*Deletes any albums with the genre disco*/
DELETE FROM albums WHERE genre = 'disco';
/*Deletes any albums by Whitney Houston*/
DELETE FROM albums WHERE artist = 'Whitney Houston';
