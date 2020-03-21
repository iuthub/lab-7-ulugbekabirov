SELECT name from movies where year = "1995"

SELECT COUNT(*) FROM movies m
JOIN roles r on r.movie_id=m.id
JOIN actors a on a.id=r.actor_id
WHERE m.name = "Lost in Translation"

SELECT a.first_name,a.last_name FROM movies m
JOIN roles r on r.movie_id=m.id
JOIN actors a on a.id=r.actor_id
WHERE m.name = "Lost in Translation"

SELECT d.first_name,d.last_name FROM movies m
JOIN movies_directors md on md.movie_id=m.id
JOIN directors d on d.id=md.director_id
WHERE m.name = "Fight Club"

SELECT COUNT(*) FROM movies m
JOIN movies_directors md on md.movie_id=m.id
JOIN directors d on d.id=md.director_id
WHERE d.first_name = "Clint" and d.last_name="Eastwood"

SELECT m.name FROM movies m
JOIN movies_directors md on md.movie_id=m.id
JOIN directors d on d.id=md.director_id
WHERE d.first_name = "Clint" and d.last_name="Eastwood"

SELECT d.first_name,d.last_name FROM movies m
JOIN movies_directors md on md.movie_id=m.id
JOIN directors d on d.id=md.director_id
JOIN movies_genres mg on mg.movie_id=m.id
WHERE mg.genre = "Horror"

SELECT * FROM actors a 
JOIN roles r on r.actor_id=a.id
JOIN movies_directors md on md.movie_id=r.movie_id
JOIN directors d on d.id=md.director_id
WHERE d.first_name="Christopher" and d.last_name="Nolan"

CREATE TABLE Users (
  id int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  username varchar(250),
  email varchar(250),
  password varchar(250),
  fullname varchar(250),
  dob date
)