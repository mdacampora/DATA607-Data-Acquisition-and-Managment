-- movieratings.sql


DROP TABLE IF EXISTS ratings;

CREATE TABLE ratings (
title char(100),
greg integer,
nick integer,
joe integer,
deb integer,
brian integer,
laura integer
);

LOAD DATA LOCAL INFILE  'C:/data/movieratings.csv' 
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM ratings;
