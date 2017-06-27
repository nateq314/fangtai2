INSERT INTO users (username, first_name, last_name) VALUES ('nateq314', 'Nathan', 'Quarles');

/* 1 */ INSERT INTO countries (name_english) VALUES ('United States of America');
/* 2 */ INSERT INTO countries (name_english) VALUES ('China');

/* 1 */ INSERT INTO cities (name_english, country_id) VALUES ('Miami', 1);
/* 2 */ INSERT INTO cities (name_english, country_id) VALUES ('Atlanta', 1);
/* 3 */ INSERT INTO cities (name_english, country_id) VALUES ('Raleigh', 1);
/* 4 */ INSERT INTO cities (name_english, country_id) VALUES ('Seattle', 1);
/* 5 */ INSERT INTO cities (name_english, country_id) VALUES ('Beijing', 2);
/* 6 */ INSERT INTO cities (name_english, country_id) VALUES ('Shanghai', 2);

/* 1 */ INSERT INTO guests (first_name, last_name, country_id) VALUES ('Nathan', 'Quarles', 1);
/* 2 */ INSERT INTO guests (first_name, last_name, country_id) VALUES ('Jiajia', 'Zhao', 2);
/* 3 */ INSERT INTO guests (first_name, last_name, country_id) VALUES ('Nadia', 'Quarles', 1);
