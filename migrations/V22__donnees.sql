create table actors(
  id int primary key generated always as identity,
  first_name text,
  last_name text
);

create table directors(
  id int primary key generated always as identity,
  first_name text,
  last_name text
);

create table films(
  id int primary key generated always as identity,
  director_id int references directors(id),
  title text,
  year int,
  rating numeric(3,1),
  language text
);

create table technical_specs(
  film_id int references films(id) primary key,
  runtime time,
  camera text,
  sound text
);

create table roles(
  film_id int references films(id),
  actor_id int references actors(id),
  character text,
  primary key(film_id, actor_id)
);

create table competitions(
  id int primary key generated always as identity,
  name text,
  year int
);

create table nominations(
  competition_id int references competitions(id),
  film_id int references films(id),
  rank int,
  primary key (competition_id, film_id)
);