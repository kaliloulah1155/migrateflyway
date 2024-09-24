CREATE TABLE IF NOT EXISTS users (
    email text PRIMARY KEY CHECK (email ~* '^.+@.+\..+$') UNIQUE,
    pass text NOT NULL CHECK (length(pass) < 512),
    role text NOT NULL DEFAULT 'todo_user'
);
