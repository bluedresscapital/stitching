CREATE TABLE orders (
  uid varchar(100) NOT NULL,
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  stock_id int REFERENCES stocks(id) ON DELETE CASCADE,
  quantity double precision NOT NULL,
  value double precision NOT NULL,
  is_buy bool NOT NULL,
  manually_added bool NOT NULL,
  date timestamp NOT NULL,
  PRIMARY KEY (uid)
);

