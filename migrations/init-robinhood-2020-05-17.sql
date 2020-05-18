CREATE TABLE rh_accounts (
  id SERIAL UNIQUE,
  user_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  name varchar(100) NOT NULL,
  refresh_token_cipher bytea NOT NULL,
  UNIQUE(user_id, name),
  PRIMARY KEY (id)
);
