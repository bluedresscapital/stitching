CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);

CREATE TABLE tokens (
  id SERIAL,
  user_id integer REFERENCES users(id) ON DELETE CASCADE,
  auth_tok VARCHAR(100) NOT NULL,
  ttl_sec integer,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id)
);
