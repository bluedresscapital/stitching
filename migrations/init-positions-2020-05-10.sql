CREATE TABLE positions (
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  stock_id int REFERENCES stocks(id) ON DELETE CASCADE,
  quantity double precision NOT NULL,
  value double precision NOT NULL,
  PRIMARY KEY (port_id, stock_id)
);

