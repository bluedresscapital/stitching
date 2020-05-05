DROP TABLE users CASCADE;
CREATE TABLE users (
  id SERIAL UNIQUE,
  username VARCHAR(100) NOT NULL,
  password bytea NOT NULL,
  PRIMARY KEY (username)
);

