CREATE TABLE files(blob bytea);

CREATE FUNCTION upload_binary(bytea)RETURNS void AS $$
   INSERT INTO files (blob) VALUES ($1)
$$ LANGUAGE SQL;