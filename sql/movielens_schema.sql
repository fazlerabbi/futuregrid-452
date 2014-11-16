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
  actorID VARCHAR(255) NOT NULL,
  actorName VARCHAR(255) NULL,
  ranking INT NULL,
  PRIMARY KEY (movieID,actorID)
);


DROP TABLE IF EXISTS movie_countries;

CREATE TABLE movie_countries(
  movieID INT NOT NULL,
  country VARCHAR(255) NOT NULL,
  PRIMARY KEY (movieID,country)
);


DROP TABLE IF EXISTS movie_directors;

CREATE TABLE movie_directors(
  movieID INT NOT NULL,
  directorID VARCHAR(255) NOT NULL,
  directorName VARCHAR(255) NULL,
  PRIMARY KEY (movieID,directorID)
);


DROP TABLE IF EXISTS movie_genres;

CREATE TABLE movie_genres(
  movieID INT NOT NULL,
  genre VARCHAR(255) NOT NULL,
  PRIMARY KEY (movieID,genre)
);


DROP TABLE IF EXISTS movie_locations;

CREATE TABLE movie_locations(
  movieID INT NOT NULL,
  location1 VARCHAR(255) NULL,
  location2 VARCHAR(255) NULL,
  location3 VARCHAR(255) NULL,
  location4 VARCHAR(255) NULL,
  PRIMARY KEY (movieID,location1,location2,location3,location4)
);


DROP TABLE IF EXISTS movie_tags;

CREATE TABLE movie_tags(
  movieID INT NOT NULL,
  tagID INT NOT NULL,
  tagWeight INT NULL,
  PRIMARY KEY (movieID,tagID)
);


DROP TABLE IF EXISTS tags;

CREATE TABLE tags(
  id INT NOT NULL,
  value VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


DROP TABLE IF EXISTS user_ratedmovies;

CREATE TABLE user_ratedmovies(
  userID INT NOT NULL,
  movieID INT NOT NULL,
  rating FLOAT(2,1) NOT NULL,
  date_day INT(2) NULL,
  date_month INT(2) NULL,
  date_year INT(4) NULL,
  date_hour INT(2) NULL,
  date_minute INT(2) NULL,
  date_second INT(2) NULL,
  PRIMARY KEY (userID,movieID)
);


DROP TABLE IF EXISTS user_taggedmovies;

CREATE TABLE user_taggedmovies(
  userID INT NOT NULL,
  movieID INT NOT NULL,
  tagID INT NOT NULL,
  date_day INT(2) NULL,
  date_month INT(2) NULL,
  date_year INT(4) NULL,
  date_hour INT(2) NULL,
  date_minute INT(2) NULL,
  date_second INT(2) NULL,
  PRIMARY KEY (userID,movieID,tagID)
);




