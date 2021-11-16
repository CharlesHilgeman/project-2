DROP TABLE IF EXISTS fifa_stats;

CREATE TABLE fifa_stats (
	player_id INT,
	player_name VARCHAR,
	nationality VARCHAR,
	player_position VARCHAR,
	overall_rating INT,
	age INT,
	total_stats INT,
	potential INT,
	team VARCHAR
);

ALTER TABLE fifa_stats
DROP COLUMN player_id;
ALTER TABLE fifa_stats
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM fifa_stats;

DROP TABLE IF EXISTS world_cups;

CREATE TABLE world_cups (
	id
	cup_year INT,
	country VARCHAR,
	cup_winner VARCHAR,
	cup_second VARCHAR,
	cup_third VARCHAR,
	cup_fourth VARCHAR,
	goals_scores INT,
	qualified_teams INT,
	matches_played INT,
	attendance INT
);

SELECT * FROM world_cups;

ALTER TABLE world_cups
ADD COLUMN id SERIAL PRIMARY KEY;
	
DROP TABLE IF EXISTS countries;

CREATE TABLE countries (
	country_name VARCHAR,
	population INT,
	net_change INT,
	density INT,
	area INT,
	fertility_rate NUMERIC,
	med_age INT
);
	
ALTER TABLE countries
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM countries;
	
	
	