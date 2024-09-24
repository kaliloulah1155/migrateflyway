CREATE TABLE IF NOT EXISTS film (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    release_year INTEGER,
    language_id INTEGER NOT NULL,
    original_language_id INTEGER,
    rental_duration INTEGER NOT NULL,
    rental_rate NUMERIC(4, 2) NOT NULL,
    length INTEGER,
    replacement_cost NUMERIC(5, 2) NOT NULL,
    rating VARCHAR(5),
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    special_features TEXT[],
    fulltext TSVECTOR
);


INSERT INTO film (
    film_id, title, description, release_year, language_id, original_language_id, 
    rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext
) VALUES 
(
    1, 
    'ACADEMY DINOSAUR', 
    'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies', 
    2006, 
    1, 
    NULL, 
    6, 
    0.99, 
    86, 
    20.99, 
    'PG', 
    '2006-02-15 05:03:42', 
    ARRAY['Deleted Scenes', 'Behind the Scenes'], 
    to_tsvector('english', 'academi battl canadian dinosaur drama epic feminist mad must rocki scientist teacher')
),
(
    2, 
    'ACE GOLDFINGER', 
    'A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China', 
    2006, 
    1, 
    NULL, 
    3, 
    4.99, 
    48, 
    12.99, 
    'G', 
    '2006-02-15 05:03:42', 
    ARRAY['Trailers', 'Deleted Scenes'], 
    to_tsvector('english', 'ace administr ancient astound car china databas epistl explor find goldfing must')
);
