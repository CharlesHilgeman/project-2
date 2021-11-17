# project-2

## Background

For this project, I wanted to create a database that housed different kinds of information (i.e. weather and residing rock stars in a state) to hopefully introduce some newfound conclusions that could come from querying data from my loaded final database.

## Extract

For this project, I extracted my data from the Kaggle website in order to form my database. This consisted of three CSV files containing different data:

1. FIFA 21 Player Stats/Attributes
2. World Cup History
3. National Population/Index Statistics

In choosing these three files, I was able to decide on a route that best fit my objectives for this project.

## Transform

In order to transform this data, I proceeded using a number of techniques that were more familiar to me. 

1. I used pandas to change data types and drop columns.
	(Please Note -- I lost the jupyter notebook file)
2. I used excel to better adjust individual rows where random, inaccurate, or missing data was an issue.

In putting my tables together, I decided to only use a number of columns from each file in order to create my final database. The tables I created were fifa_stats, world_cups, countries, corresponding to the aforementioned data files.

From those tables, these columns were included in my final database:

countries.country_name
countries.population
countries.med_age
fifa_stats.player_name
fifa_stats.overall_rating
fifa_stats.team
world_cups.cup_year
world_cups.cup_winner
world_cups.cup_second
world_cups.cup_third
world_cups.attendance


## Load

In loading my final database, I performed a series of joins that would combine all three of my constructed tables into a final dataset. The joining portion of my code can be seen below.

FROM fifa_stats
INNER JOIN countries
ON countries.country_name = fifa_stats.nationality
INNER JOIN world_cups
ON countries.country_name = world_cups.country;

This format was chosen in order to best display and gear possible queries for later use. The final database contains a number of data points from all the columns loaded.







