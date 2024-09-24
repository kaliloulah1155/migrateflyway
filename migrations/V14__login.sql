CREATE OR REPLACE FUNCTION api.login(email text, pass text, OUT token text) AS $$
DECLARE
    _role name;
BEGIN
    -- Vérification de l'email et du mot de passe
    SELECT api.user_role(email, pass) INTO _role;
    IF _role IS NULL THEN
        RAISE invalid_password USING message = 'invalid user or password';
    END IF;

    -- Génération du JWT avec l'email et le rôle de l'utilisateur
    SELECT jwt.sign(
        row_to_json(r), current_setting('app.jwt_secret')
    ) INTO token
    FROM (
        SELECT _role AS role, email AS user_email,
               extract(epoch FROM now())::integer + 60*60 AS exp
    ) r;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Donner l'accès à la fonction login à l'utilisateur todo_user
GRANT EXECUTE ON FUNCTION api.login(text, text) TO todo_user;
