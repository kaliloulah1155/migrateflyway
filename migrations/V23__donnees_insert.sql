INSERT INTO actors (first_name, last_name) VALUES
('Leonardo', 'DiCaprio'),
('Brad', 'Pitt'),
('Scarlett', 'Johansson'),
('Tom', 'Hanks'),
('Natalie', 'Portman'),
('Denzel', 'Washington'),
('Meryl', 'Streep'),
('Johnny', 'Depp'),
('Angelina', 'Jolie'),
('Robert', 'Downey Jr.'),
('Morgan', 'Freeman'),
('Emma', 'Stone'),
('Chris', 'Hemsworth'),
('Ryan', 'Gosling'),
('Anne', 'Hathaway'),
('Matt', 'Damon'),
('Jennifer', 'Lawrence'),
('Christian', 'Bale'),
('Keanu', 'Reeves'),
('Samuel', 'Jackson');


INSERT INTO directors (first_name, last_name) VALUES
('Christopher', 'Nolan'),
('Steven', 'Spielberg'),
('Martin', 'Scorsese'),
('Quentin', 'Tarantino'),
('James', 'Cameron'),
('Ridley', 'Scott'),
('Denis', 'Villeneuve'),
('David', 'Fincher'),
('Sofia', 'Coppola'),
('Clint', 'Eastwood');


INSERT INTO films (director_id, title, year, rating, language) VALUES
(1, 'Inception', 2010, 8.8, 'English'),
(2, 'Jurassic Park', 1993, 8.1, 'English'),
(3, 'The Irishman', 2019, 7.8, 'English'),
(4, 'Pulp Fiction', 1994, 8.9, 'English'),
(5, 'Avatar', 2009, 7.8, 'English'),
(6, 'Gladiator', 2000, 8.5, 'English'),
(7, 'Dune', 2021, 8.1, 'English'),
(8, 'Fight Club', 1999, 8.8, 'English'),
(9, 'Lost in Translation', 2003, 7.7, 'English'),
(10, 'Unforgiven', 1992, 8.2, 'English'),
(1, 'Interstellar', 2014, 8.6, 'English'),
(2, 'Schindlers List', 1993, 8.9, 'English'),
(3, 'The Departed', 2006, 8.5, 'English'),
(4, 'Django Unchained', 2012, 8.4, 'English'),
(5, 'Titanic', 1997, 7.9, 'English'),
(6, 'The Martian', 2015, 8.0, 'English'),
(7, 'Blade Runner 2049', 2017, 8.0, 'English'),
(8, 'Gone Girl', 2014, 8.1, 'English'),
(9, 'The Bling Ring', 2013, 5.6, 'English'),
(10, 'Million Dollar Baby', 2004, 8.1, 'English');

INSERT INTO technical_specs (film_id, runtime, camera, sound) VALUES
(1, '02:28:00', 'ARRI ALEXA', 'Dolby Digital'),
(2, '02:07:00', 'Panavision', 'DTS'),
(3, '03:29:00', 'RED Helium 8K', 'Dolby Atmos'),
(4, '02:34:00', 'ARRIFLEX', 'Dolby Digital'),
(5, '02:42:00', 'Fusion 3D', 'DTS'),
(6, '02:35:00', 'ARRI ALEXA', 'Dolby Digital'),
(7, '02:35:00', 'ARRI ALEXA LF', 'Dolby Atmos'),
(8, '02:19:00', 'ARRIFLEX', 'Dolby Digital'),
(9, '01:42:00', 'Panavision', 'DTS'),
(10, '02:10:00', 'Panavision', 'Dolby Digital');


INSERT INTO roles (film_id, actor_id, character) VALUES
(1, 1, 'Dom Cobb'),
(2, 2, 'Dr. Ian Malcolm'),
(3, 3, 'Frank Sheeran'),
(4, 4, 'Vincent Vega'),
(5, 5, 'Jake Sully'),
(6, 6, 'Maximus'),
(7, 7, 'Paul Atreides'),
(8, 8, 'The Narrator'),
(9, 9, 'Charlotte'),
(10, 10, 'William Munny'),
(11, 1, 'Cooper'),
(12, 11, 'Oskar Schindler'),
(13, 12, 'Billy Costigan'),
(14, 13, 'Dr. King Schultz'),
(15, 14, 'Jack Dawson'),
(16, 15, 'Mark Watney'),
(17, 16, 'K'),
(18, 17, 'Amy Dunne'),
(19, 18, 'Nicki'),
(20, 19, 'Maggie Fitzgerald');

INSERT INTO competitions (name, year) VALUES
('Academy Awards', 2020),
('Golden Globes', 2020),
('Cannes Film Festival', 2019),
('Venice Film Festival', 2019),
('BAFTA Awards', 2020),
('Sundance Film Festival', 2021),
('Berlin Film Festival', 2020),
('Toronto Film Festival', 2020),
('Critics Choice Awards', 2020),
('Emmy Awards', 2021);

