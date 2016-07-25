USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
	id int unsigned NOT NULL AUTO_INCREMENT,
	artist VARCHAR(50) NOT NULL,
	album_name VARCHAR(50) NOT NULL,
	release_date DATE NOT NULL,
	sales FLOAT NOT NULL,
	genre VARCHAR(20) NOT NULL,
	PRIMARY KEY (id)

);