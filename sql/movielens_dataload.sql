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


