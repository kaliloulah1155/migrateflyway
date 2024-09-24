-- a computed field that combines data from two columns
CREATE FUNCTION full_name(people)
RETURNS text AS $$
  SELECT $1.name || ' ' || $1.pseudo;
$$ LANGUAGE SQL;