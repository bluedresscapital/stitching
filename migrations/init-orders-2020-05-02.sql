CREATE OR REPLACE FUNCTION trigger_set_timestamp_orders()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE orders (
  uid varchar(100) NOT NULL,
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  stock_id int REFERENCES stocks(id) ON DELETE CASCADE,
  quantity double precision NOT NULL,
  value double precision NOT NULL,
  is_buy bool NOT NULL,
  manually_added bool NOT NULL,
  date timestamp NOT NULL,
  created_at timestamptz NOT NULL DEFAULT NOW(),
  updated_at timestamptz NOT NULL DEFAULT NOW(),
  PRIMARY KEY (uid)
);

CREATE TRIGGER set_timestamp_orders
BEFORE UPDATE ON orders
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp_orders();

