-- In the table actor, which are the actors whose last names are not repeated? 
-- For example if you would sort the data in the table actor by last_name, 
-- you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. 
-- These three actors have the same last name. So we do not want to include this last name in our output. 
-- Last name "Astaire" is present only one time with actor "Angelina Astaire", 
--  hence we would want this in our output list.
SELECT LAST_NAME
FROM SAKILA.ACTOR
GROUP BY LAST_NAME
HAVING COUNT(*) = 1;

-- Which last names appear more than once? We would use the same logic as in the previous question but this 
-- time we want to include the last names of the actors where the last name was present more than once
SELECT LAST_NAME
FROM SAKILA.ACTOR
GROUP BY LAST_NAME
HAVING COUNT(*) > 1;

-- Using the rental table, find out how many rentals were processed by each employee.
SELECT STAFF_ID, COUNT(*) AS RENTAL_COUNT
FROM SAKILA.RENTAL
GROUP BY 1;

-- Using the film table, find out how many films were released each year.
SELECT RELEASE_YEAR, COUNT(*) AS RELEASE_COUNT
FROM SAKILA.FILM
GROUP BY 1;

-- Using the film table, find out for each rating how many films were there.
SELECT RATING, COUNT(*) AS FILM_COUNT
FROM SAKILA.FILM
GROUP BY 1;

-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT RATING, ROUND(AVG(LENGTH), 2) AS MEAN_LENGTH
FROM SAKILA.FILM
GROUP BY 1;

-- Which kind of movies (rating) have a mean duration of more than two hours?
SELECT RATING, ROUND(AVG(LENGTH), 2) AS MEAN_LENGTH
FROM SAKILA.FILM
GROUP BY 1
HAVING AVG(LENGTH) > 120;

-- DONE
