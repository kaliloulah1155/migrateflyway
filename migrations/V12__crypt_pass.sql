
create function
api.encrypt_pass() returns trigger as $$
begin
  if tg_op = 'INSERT' or new.pass <> old.pass then
    new.pass = crypt(new.pass, gen_salt('bf'));
  end if;
  return new;
end
$$ language plpgsql;

create trigger encrypt_pass
  before insert or update on api.users
  for each row
  execute procedure api.encrypt_pass();