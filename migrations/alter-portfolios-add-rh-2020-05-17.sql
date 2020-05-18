ALTER TYPE port_type ADD VALUE 'rh';
ALTER TABLE portfolios ADD COLUMN rh_account_id int UNIQUE REFERENCES rh_accounts(id) ON DELETE CASCADE;
ALTER TABLE portfolios DROP CONSTRAINT check_types;
ALTER TABLE portfolios ADD CONSTRAINT check_types CHECK (
  type='paper' OR
  (type='tda' AND tda_account_id IS NOT NULL AND rh_account_id IS NULL) OR
  (type='rh' AND rh_account_id IS NOT NULL AND tda_account_id IS NULL)
);
