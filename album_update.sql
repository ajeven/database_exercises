USE codeup_test_db;
SELECT album_name as "Album" FROM albums;

SELECT album_name as "Albums released before 1980" FROM albums WHERE release_date < '1980';

SELECT album_name as "Albums by Micheal Jackson" FROM albums WHERE artist = 'Micheal Jackson';

SELECT sales * 10 as "Sales times 10" FROM albums WHERE sales;

UPDATE albums
SET release_date = '1800-1-1'
WHERE release_date < '1980';

SELECT album_name, release_date as "Changed to the 1800s" FROM albums where release_date = '1800-1-1';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson';

SELECT artist as "Changed Mikey to Peter" FROM albums WHERE artist = 'Peter Jackson';