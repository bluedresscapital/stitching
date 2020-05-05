DROP TYPE IF EXISTS port_type;
CREATE TYPE port_type AS ENUM ('paper', 'tda');

CREATE TABLE portfolios (
  id SERIAL UNIQUE,
  user_id int REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  name varchar(100) NOT NULL,
  type port_type NOT NULL,
  tda_account_id int UNIQUE REFERENCES tda_accounts(id) ON DELETE CASCADE,
  UNIQUE (user_id, name),
  PRIMARY KEY (id),
  CONSTRAINT check_types CHECK (
    type='paper' OR
    (type='tda' AND tda_account_id IS NOT NULL)
  )
);

