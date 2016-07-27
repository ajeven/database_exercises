USE codeup_test_db;
TRUNCATE albums;
INSERT INTO albums  VALUES
					(1, 'Micheal Jackson', 'Thriller', '1982-11-30', 65, 'pop rock r&b'),
					(2, 'Pink Floyd', 'Dark Side of The Moon', '1980-03-01', 45, 'prog rock'),
					(3, 'The Beatles', 'Sgt Peppers', '1967-06-01', 32, 'rock'),
					(4, 'Nirvana', 'Nevermind', '1991-09-24', 30, 'grunge rock');
SELECT * FROM albums; 