CREATE OR REPLACE FUNCTION trigger_set_timestamp_transfers()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE transfers (
  uid varchar(100) NOT NULL,
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  amount double precision NOT NULL,
  is_deposit bool NOT NULL,
  manually_added bool NOT NULL,
  date timestamp NOT NULL,
  created_at timestamptz NOT NULL DEFAULT NOW(),
  updated_At timestamptz NOT NULL DEFAULT NOW(),
  PRIMARY KEY (uid)
);

CREATE TRIGGER set_timestamp_transfers
BEFORE UPDATE ON transfers
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp_transfers();

