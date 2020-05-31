CREATE TABLE daily_portfolio_values (
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  date timestamptz NOT NULL,
  value double precision NOT NULL,
  PRIMARY KEY (port_id, date)
);

