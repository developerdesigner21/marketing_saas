CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL,
  password VARCHAR DEFAULT NULL,
  uid VARCHAR DEFAULT NULL,
  role VARCHAR NOT NULL DEFAULT 'admin',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) 


CREATE TABLE "user" (
  id serial PRIMARY KEY,
  role varchar(999) DEFAULT 'user',
  uid varchar(999),
  name varchar(999),
  email varchar(999),
  password varchar(999),
  country_code varchar(10),
  mobile_number varchar(999),
  timezone varchar(999) DEFAULT 'Asia/Kolkata',
  plan varchar(100) DEFAULT '',
  plan_expire varchar(999) DEFAULT '',
  trial smallint DEFAULT 0,
  api_key varchar(999) DEFAULT '',
  createdAt timestamp DEFAULT current_timestamp
);