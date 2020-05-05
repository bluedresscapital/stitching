CREATE TABLE transfers (
  uid varchar(100) NOT NULL,
  port_id int REFERENCES portfolios(id) ON DELETE CASCADE,
  amount double precision NOT NULL,
  is_deposit bool NOT NULL,
  manually_added bool NOT NULL,
  date timestamp NOT NULL,
  PRIMARY KEY (uid)
);

