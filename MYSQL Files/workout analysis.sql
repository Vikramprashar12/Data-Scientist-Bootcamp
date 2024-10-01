USE new_db;

-- I came to the gym after 2 weeks, is my weight/reps as before or less?


/************************************************************************************************************************************************************************************************/
SELECT start_date, Count(*) FROM workout_data group by start_date;
/************************************************************************************************************************************************************************************************/
ALTER TABLE workout_data
ADD COLUMN 
start_date date generated always 
as (str_to_date(CONCAT(
CASE
	WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jan" THEN "01"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Feb" THEN "02"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Mar" THEN "03"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Apr" THEN "04"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "May" THEN "05"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jun" THEN "06"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jul" THEN "07"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Aug" THEN "08"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Sep" THEN "09"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Oct" THEN "10"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Nov" THEN "11"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Dec" THEN "12"
END,
"/", 
CASE 
	WHEN SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1) in ('1','2','3','4','5','6','7','8','9') THEN CONCAT("0",SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1))
    ELSE SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1)
END, 
"/", SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11), LOCATE(" ", SUBSTRING(start_time, 1, 11))+1)+1, 4) ),'%c/%d/%Y' ))
stored;
/************************************************************************************************************************************************************************************************/
SELECT *, str_to_date(start_date, '%c/%d/%Y' )  FROM date_time;
/************************************************************************************************************************************************************************************************/
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'workout_data';
/************************************************************************************************************************************************************************************************/
ALTER TABLE workout_data 
drop column start_date;


/************************************************************************************************************************************************************************************************/

SELECT start_time , right(left(start_time, 11), 4) as start_year, left(start_time, 2) as start_date, right(left(start_time, 6),3) as checker, 
CASE 
	WHEN right(left(start_time, 6),3) = 'Aug' THEN 8
END AS start_month
FROM workout_data;
/************************************************************************************************************************************************************************************************/
SELECT  *, COUNT(*) OVER(ORDER BY start_time) FROM workout_data;
/************************************************************************************************************************************************************************************************/
-- CREATE TEMPORARY TABLE date_time
SELECT start_time, 
CASE 
	WHEN SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1) in ('1','2','3','4','5','6','7','8','9') THEN CONCAT("0",SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1))
    ELSE SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1)
END as start_day, 
SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11), LOCATE(" ", SUBSTRING(start_time, 1, 11))+1)+1, 4) AS start_year, 
CASE
	WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jan" THEN "01"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Feb" THEN "02"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Mar" THEN "03"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Apr" THEN "04"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "May" THEN "05"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jun" THEN "06"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jul" THEN "07"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Aug" THEN "08"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Sep" THEN "09"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Oct" THEN "10"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Nov" THEN "11"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Dec" THEN "12"
END AS start_month, 
CONCAT(
CASE
	WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jan" THEN "01"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Feb" THEN "02"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Mar" THEN "03"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Apr" THEN "04"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "May" THEN "05"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jun" THEN "06"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Jul" THEN "07"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Aug" THEN "08"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Sep" THEN "09"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Oct" THEN "10"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Nov" THEN "11"
    WHEN SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11))+1, 3) = "Dec" THEN "12"
END,
"/", 
CASE 
	WHEN SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1) in ('1','2','3','4','5','6','7','8','9') THEN CONCAT("0",SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1))
    ELSE SUBSTRING(start_time, 1, LOCATE(" ", SUBSTRING(start_time, 1, 11))-1)
END, 
"/", SUBSTRING(start_time, LOCATE(" ", SUBSTRING(start_time, 1, 11), LOCATE(" ", SUBSTRING(start_time, 1, 11))+1)+1, 4) ) as start_date
FROM workout_data;
/************************************************************************************************************************************************************************************************/