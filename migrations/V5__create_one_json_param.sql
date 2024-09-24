CREATE OR REPLACE FUNCTION api.mult_them(p_json jsonb)
RETURNS int AS $$
    SELECT (p_json->>'x')::int * (p_json->>'y')::int;
$$ LANGUAGE SQL;
