-- (optional) you can add an index on the computed field to speed up the query
CREATE INDEX people_full_name_idx ON people
  USING GIN (to_tsvector('english', full_name(people)));