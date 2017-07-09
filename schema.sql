CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username varchar(12) NOT NULL,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  chinese_name varchar(5),
  email varchar(50),
  hashed_password varchar(60),
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name_english varchar(30) NOT NULL,
  abbreviation varchar(5),
  name_chinese varchar(12),
  flag_url varchar(120),
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name_english varchar(30) NOT NULL,
  name_chinese varchar(12),
  country_id integer REFERENCES countries NOT NULL,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TABLE developments (
  id SERIAL PRIMARY KEY,
  name_english varchar(30) NOT NULL,
  name_chinese varchar(12),
  address varchar(100),
  city_id integer REFERENCES cities NOT NULL,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  bldg varchar(4),
  unit varchar(4),
  house_num varchar(8) NOT NULL,
  num_bedrooms smallint NOT NULL,
  dev_id integer REFERENCES developments NOT NULL,
  remarks text,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TABLE guests (
  id SERIAL PRIMARY KEY,
  country_id integer REFERENCES countries NOT NULL,
  prefix varchar(6),
  first_name varchar(30) NOT NULL,
  middle_name varchar(30),
  last_name varchar(30) NOT NULL,
  suffix varchar(10),
  chinese_name varchar(5),
  email1 varchar(50),
  email2 varchar(50),
  phone1 varchar(20),
  phone2 varchar(20),
  remarks text,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TYPE rate_type AS ENUM ('daily', 'weekly', 'monthly');

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  guest_id integer REFERENCES guests NOT NULL,
  date_in date NOT NULL,
  date_out date NOT NULL,
  may_extend boolean DEFAULT false NOT NULL,
  rate decimal NOT NULL,
  rate_type rate_type DEFAULT 'daily' NOT NULL,
  on_deposit decimal DEFAULT 0.0 NOT NULL,
  paid_amt decimal DEFAULT 0.0 NOT NULL,
  total_amt decimal NOT NULL,
  remarks text,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TABLE stays (
  id SERIAL PRIMARY KEY,
  booking_id integer NOT NULL REFERENCES bookings ON DELETE CASCADE,
  property_id integer REFERENCES properties NOT NULL,
  date_in date NOT NULL,
  date_out date NOT NULL,
  remarks text,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);

CREATE TYPE payment_type AS ENUM ('cash', 'bank transfer', 'credit card');

CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  booking_id integer NOT NULL REFERENCES bookings ON DELETE CASCADE,
  amount decimal NOT NULL,
  remarks text,
  type payment_type NOT NULL,
  created_at timestamp DEFAULT now() NOT NULL,
  updated_at timestamp DEFAULT now()
);
