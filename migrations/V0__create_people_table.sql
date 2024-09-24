CREATE TABLE api.people (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 0),
    height DECIMAL(5, 2) CHECK (height >= 0)
);