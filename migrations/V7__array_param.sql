CREATE FUNCTION plus_one(arr int[]) RETURNS int[] as $$
   SELECT array_agg(n+1) FROM unnest($1) AS n;
$$ LANGUAGE SQL;