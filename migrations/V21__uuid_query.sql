create domain app_uuid as uuid;

-- and use it as our table PK.
create table profiles(
  id   app_uuid
, name text
);
-- some data for the example
insert into profiles values ('846c4ffd-92ce-4de7-8d11-8e29929f4ec4', 'John Doe');