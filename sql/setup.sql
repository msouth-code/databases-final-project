-- Create the NameBasics Relation 
DROP TABLE IF EXISTS NameBasics;
CREATE TABLE NameBasics 
(
nconst VARCHAR,
primaryName VARCHAR,
birthYear INT,
deathYear INT,
primaryProfession VARCHAR,
knownForTitles VARCHAR,
PRIMARY KEY (nconst)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/name.basics.tsv' 
INTO TABLE NameBasics
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from NameBasics;

-- Create the TitleAkas Relation 
DROP TABLE IF EXISTS TitleAkas;
CREATE TABLE TitleAkas 
(
titleId VARCHAR,
ordering INT,
title VARCHAR,
region VARCHAR,
lang VARCHAR,
types VARCHAR,
attributes VARCHAR,
isOriginalTitle BOOLEAN,
PRIMARY KEY (titleId)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/title.akas.tsv' 
INTO TABLE TitleAkas
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from TitleAkas;

-- Create the TitleBasics Relation 
DROP TABLE IF EXISTS TitleBasics;
CREATE TABLE TitleBasics 
(
tconst VARCHAR,
titleType VARCHAR,
primaryTitle VARCHAR,
originalTitle VARCHAR,
isAdult BOOLEAN,
startYear INT,
endYear INT,
runtimeMinutes INT,
genres VARCHAR,
PRIMARY KEY (tconst)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/title.basics.tsv' 
INTO TABLE TitleBasics
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from TitleBasics;

-- Create the Crew Relation 
DROP TABLE IF EXISTS Crew;
CREATE TABLE Crew 
(
tconst VARCHAR,
directors VARCHAR,
writers VARCHAR,
PRIMARY KEY (tconst)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/title.crew.tsv' 
INTO TABLE Crew
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from Crew;

-- Create the Episodes Relation 
DROP TABLE IF EXISTS Episodes;
CREATE TABLE Episodes 
(
tconst VARCHAR,
parentTconst VARCHAR,
seasonNumber INT,
episodeNumber INT,
PRIMARY KEY (tconst)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/title.episode.tsv' 
INTO TABLE Episodes
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from Episodes;

-- Create the Prinicpals Relation 
DROP TABLE IF EXISTS Prinicpals;
CREATE TABLE Prinicpals 
(
tconst VARCHAR,
ordering INT,
nconst VARCHAR,
category VARCHAR,
job VARCHAR,
characters VARCHAR,
PRIMARY KEY (tconst)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/title.principals.tsv' 
INTO TABLE Prinicpals
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from Prinicpals;

-- Create the Ratings Relation 
DROP TABLE IF EXISTS Ratings;
CREATE TABLE Ratings 
(
tconst VARCHAR,
averageRating REAL,
numVotes INT,=
PRIMARY KEY (tconst)
);

--Change to your full path
LOAD DATA LOCAL INFILE '/Users/miayarichard/Desktop/databases-final-project/tsv/title.ratings.tsv' 
INTO TABLE Ratings
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'; 

select * from Ratings;