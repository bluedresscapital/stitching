CREATE TABLE stock_quotes (
  stock_id integer REFERENCES stocks(id) ON DELETE CASCADE NOT NULL,
  price double precision NOT NULL,
  date timestamp NOT NULL,
  is_valid_date bool NOT NULL,
  PRIMARY KEY (stock_id, date)
);
