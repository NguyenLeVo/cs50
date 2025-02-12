/* In 13.sql, write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.*/

SELECT DISTINCT(name) FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE movies.title IN(SELECT DISTINCT(movies.title) FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE people.name = "Kevin Bacon" AND people.birth = 1958) 
AND people.name != "Kevin Bacon";
