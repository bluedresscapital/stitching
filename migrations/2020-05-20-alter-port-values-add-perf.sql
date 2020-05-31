ALTER TABLE portfolio_values ADD COLUMN cum_change double precision NOT NULL DEFAULT 1;
ALTER TABLE portfolio_values ALTER COLUMN cum_change DROP DEFAULT;
ALTER TABLE portfolio_values ADD COLUMN daily_change double precision NOT NULL DEFAULT 1;
ALTER TABLE portfolio_values ALTER COLUMN daily_change DROP DEFAULT;
