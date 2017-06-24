CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name varchar(30),
  last_name varchar(30),
  chinese_name varchar(5),
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now()
);

CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name_english varchar(30),
  name_chinese varchar(12),
  flag_url varchar(120),
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now()
);

CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name_english varchar(30),
  name_chinese varchar(12),
  country_id integer REFERENCES countries,
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now()
);

CREATE TABLE developments (
  id SERIAL PRIMARY KEY,
  name_english varchar(30),
  name_chinese varchar(12),
  address varchar(100),
  city_id integer REFERENCES cities,
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now()
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  bldg varchar(4),
  house_num smallint NOT NULL,
  ....
);
