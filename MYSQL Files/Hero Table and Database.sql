
USE hero;

SELECT Gender, COUNT(name) FROM heroes_information
GROUP BY Gender HAVING Gender = Male;

SELECT `Hair color` AS hc FROM heroes_information;
SELECT `Hair color` AS hc FROM heroes_information;

SELECT hc from hi LIMIT 5;

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'heroes_information';

SELECT station_number, REGEXP_REPLACE(station_number, '[^0-9]','')
FROM hero_battles;
