ALTER TABLE moves
    ADD COLUMN character_id INTEGER REFERENCES characters(id) ON DELETE SET NULL;

ALTER TABLE info
    ADD COLUMN character_id INTEGER REFERENCES characters(id) ON DELETE SET NULL;

ALTER TABLE notes
    ADD COLUMN character_id INTEGER REFERENCES characters(id) ON DELETE SET NULL,
    ADD COLUMN user_id INTEGER REFERENCES users(id) ON DELETE SET NULL;

