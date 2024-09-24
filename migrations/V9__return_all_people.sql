CREATE FUNCTION people_setof_record() RETURNS SETOF record as $$
   SELECT * FROM people;
$$ LANGUAGE sql;