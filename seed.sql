INSERT INTO users (username, first_name, last_name) VALUES ('nateq314', 'Nathan', 'Quarles');

/* 1 */ INSERT INTO countries (name_english) VALUES ('United States of America');
/* 2 */ INSERT INTO countries (name_english) VALUES ('China');

/* 1 */ INSERT INTO cities (name_english, country_id) VALUES ('Miami', 1);
/* 2 */ INSERT INTO cities (name_english, country_id) VALUES ('Atlanta', 1);
/* 3 */ INSERT INTO cities (name_english, country_id) VALUES ('Raleigh', 1);
/* 4 */ INSERT INTO cities (name_english, country_id) VALUES ('Seattle', 1);
/* 5 */ INSERT INTO cities (name_english, country_id) VALUES ('Beijing', 2);
/* 6 */ INSERT INTO cities (name_english, country_id) VALUES ('Shanghai', 2);

/* 1 */ INSERT INTO developments (name_english, city_id) VALUES ('Development A', 1);
/* 2 */ INSERT INTO developments (name_english, city_id) VALUES ('Development B', 2);
/* 3 */ INSERT INTO developments (name_english, city_id) VALUES ('Development C', 2);
/* 4 */ INSERT INTO developments (name_english, city_id) VALUES ('Development D', 3);
/* 5 */ INSERT INTO developments (name_english, city_id) VALUES ('Development E', 3);
/* 6 */ INSERT INTO developments (name_english, city_id) VALUES ('Development F', 3);
/* 7 */ INSERT INTO developments (name_english, city_id) VALUES ('Development G', 4);
/* 8 */ INSERT INTO developments (name_english, city_id) VALUES ('Development H', 4);
/* 9 */ INSERT INTO developments (name_english, city_id) VALUES ('Development I', 4);
/* 10 */ INSERT INTO developments (name_english, city_id) VALUES ('Development J', 5);
/* 11 */ INSERT INTO developments (name_english, city_id) VALUES ('Development K', 5);
/* 12 */ INSERT INTO developments (name_english, city_id) VALUES ('Development L', 6);

/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (1, '3', '1408', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (1, '3', '1603', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (1, '2', '510', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (2, '1', '1408', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (2, '1', '210', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (3, '1', '208', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (4, '3', '311', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (4, '3', '418', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (4, '2', '201', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (5, '5', '4A', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (5, '5', '4B', 2);
/* 1 */ INSERT INTO properties (dev_id, bldg, house_num, num_bedrooms) VALUES (6, '6', '1110', 2);

/* 1 */ INSERT INTO guests (first_name, last_name, country_id) VALUES ('Nathan', 'Quarles', 1);
/* 2 */ INSERT INTO guests (first_name, last_name, country_id) VALUES ('Jiajia', 'Zhao', 2);
/* 3 */ INSERT INTO guests (first_name, last_name, country_id) VALUES ('Nadia', 'Quarles', 1);
