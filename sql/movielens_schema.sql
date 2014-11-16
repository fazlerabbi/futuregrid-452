DROP TABLE IF EXISTS movies;

CREATE TABLE movies(
  id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  imdbID INT NULL,
  spanishTitle VARCHAR(255) NULL,
  imdbPictureURL TEXT NULL,
  year INT(4) NULL,
  rtID VARCHAR(255) NULL,
  rtAllCriticsRating FLOAT(2,1)	NULL,
  rtAllCriticsNumReviews INT NULL,
  rtAllCriticsNumFresh INT NULL,
  rtAllCriticsNumRotten INT NULL,
  rtAllCriticsScore INT NULL,
  rtTopCriticsRating FLOAT(2,1) NULL,
  rtTopCriticsNumReviews INT NULL,
  rtTopCriticsNumFresh INT NULL,
  rtTopCriticsNumRotten	INT NULL,
  rtTopCriticsScore INT NULL,
  rtAudienceRating FLOAT(2,1) NULL,
  rtAudienceNumRatings INT NULL,
  rtAudienceScore INT NULL,
  rtPictureURL TEXT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS movie_actors;

CREATE TABLE movie_actors(
  movieID INT NOT NULL,
  actorID INT NOT NULL,
  actorName VARCHAR(255) NULL,
  ranking INT NULL,
  PRIMARY KEY (movieID,actorID)
);

