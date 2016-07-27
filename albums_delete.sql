USE codeup_test_db;

DELETE FROM albums  WHERE release_date < '1991';

DELETE FROM albums  WHERE genre = 'disco';
SELECT "No such item in database" as "Albums with the genre disco:";

DELETE FROM albums  WHERE artist = 'Micheal Jackson';