CREATE OR REPLACE FUNCTION api.add_them(a integer, b integer)
RETURNS integer AS $$
   SELECT a + b;
$$ LANGUAGE SQL IMMUTABLE;
