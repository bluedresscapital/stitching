CREATE TABLE stocks (
  id SERIAL UNIQUE,
  ticker varchar(100) UNIQUE NOT NULL,
  name varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT ticker_uppercase_ck CHECK (ticker=upper(ticker))
);

