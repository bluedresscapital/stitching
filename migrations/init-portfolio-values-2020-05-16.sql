CREATE TABLE portfolio_values (
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  cash double precision NOT NULL,
  stock_value double precision NOT NULL,
  daily_net_deposited double precision NOT NULL,
  normalized_cash double precision NOT NULL,
  date timestamp NOT NULL,
  PRIMARY KEY (port_id, date)
);

