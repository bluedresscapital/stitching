CREATE TABLE tda_accounts (
  id SERIAL UNIQUE,
  user_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  client_id_hash bytea NOT NULL,
  client_id_cipher bytea NOT NULL,
  account_num_cipher bytea NOT NULL,
  refresh_token_cipher bytea NOT NULL,
  UNIQUE(user_id, client_id_hash),
  PRIMARY KEY (id)
);
