CREATE OR REPLACE FUNCTION api.get_me(token text)
RETURNS TABLE(role text, user_email text, exp integer) AS $$
DECLARE
    header json;
    payload json;
    valid boolean;
BEGIN
    -- Décoder le JWT et obtenir le header, payload et validité
    SELECT * INTO header, payload, valid FROM jwt.verify(token, current_setting('app.jwt_secret'));

    -- Vérifier si le token est valide
    IF valid THEN
        RETURN QUERY 
        SELECT 
            payload->>'role' AS role,
            payload->>'user_email' AS user_email,
            (payload->>'exp')::integer AS exp;
    ELSE
        RAISE NOTICE 'Le token est invalide.';
        RETURN;  -- Retourne un ensemble vide en cas d'erreur
    END IF;

EXCEPTION
    WHEN others THEN
        RAISE NOTICE 'Erreur: %', SQLERRM;  -- Afficher l'erreur pour le débogage
        RETURN;  -- Retourne un ensemble vide en cas d'erreur
END;
$$ LANGUAGE plpgsql;
