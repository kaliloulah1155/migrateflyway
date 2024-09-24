-- Associer la séquence existante à la colonne id
ALTER TABLE api.people
    ALTER COLUMN id SET DEFAULT nextval('people_id_seq');
