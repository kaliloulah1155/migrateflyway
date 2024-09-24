create function
api.user_role(email text, pass text) returns name
  language plpgsql
  as $$
begin
  return (
  select role from api.users
   where users.email = user_role.email
     and users.pass = crypt(user_role.pass, users.pass)
  );
end;
$$;