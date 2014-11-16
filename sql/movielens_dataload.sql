LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movies.dat' 
INTO TABLE movies 
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movie_actors.dat' 
INTO TABLE movie_actors 
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movie_directors.dat' 
INTO TABLE movie_directors
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movie_countries.dat' 
INTO TABLE movie_countries
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movie_locations.dat' 
INTO TABLE movie_locations 
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movie_tags.dat' 
INTO TABLE movie_tags 
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/movie_genres.dat' 
INTO TABLE movie_genres
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/tags.dat' 
INTO TABLE tags 
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/user_ratedmovies.dat' 
INTO TABLE user_ratedmovies
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/home/ubuntu/.projects/futuregrid-452/data/movielens/hetrec2011/user_taggedmovies.dat' 
INTO TABLE user_taggedmovies
FIELDS TERMINATED BY '\t' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

