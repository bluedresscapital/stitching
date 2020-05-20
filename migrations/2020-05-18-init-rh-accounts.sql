CREATE TABLE rh_accounts (
  id SERIAL UNIQUE,
  user_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  username_hash bytea NOT NULL,
  username_cipher bytea NOT NULL,
  password_cipher bytea NOT NULL,
  device_token_cipher bytea NOT NULL,
  refresh_token_cipher bytea NOT NULL,
  UNIQUE(user_id, username_hash),
  PRIMARY KEY (id)
);
