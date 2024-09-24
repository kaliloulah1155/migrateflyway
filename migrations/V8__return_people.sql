CREATE OR REPLACE FUNCTION api.get_people_by_name(p_name TEXT)
RETURNS SETOF api.people AS $$
BEGIN
  RETURN QUERY
  SELECT *
  FROM api.people
  WHERE name = p_name;
END;
$$ LANGUAGE plpgsql;
