ALTER TABLE stock_quotes DROP COLUMN is_valid_date;
ALTER TABLE stock_quotes ADD COLUMN updated_at timestamp NOT NULL;

CREATE OR REPLACE FUNCTION trigger_set_timestamp_stock_quotes()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_timestamp_stock_quotes
BEFORE UPDATE ON stock_quotes
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp_stock_quotes();
