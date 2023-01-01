select * from NameBasics;

--1. Compute the title and director of all movies released from 2008 to 2012 with a runtime longer than 62 minutes
WITH projects AS 
(SELECT TB.tconst, primaryTitle, directors, startYear, endYear, runtimeMinutes
FROM TitleBasics AS TB INNER JOIN Crew AS C
ON TB.tconst = C.tconst)

SELECT primaryTitle, directors
FROM projects
WHERE startYear > 2007 AND endYear < 2013 AND runtimeMinutes > 62;

--2. Compute the end year of every TV show that had a 4th season with at least 10 episodes

WITH shows AS (SELECT TB.tconst, primaryTitle, seasonNumber, endYear
                FROM TitleBasics AS TB JOIN Episodes AS E
                ON TB.tconst = E.tconst)
     fourths AS (SELECT *
                FROM shows
                WHERE seasonNumber = 4)

SELECT endYear
FROM fourths
GROUP BY primaryTitle, tconst
HAVING COUNT(primaryTitle) > 9;

--3. Compute the title of the TV show with both the least number of episodes and highest IMDb weighted average

WITH shows AS (SELECT TB.tconst, primaryTitle, seasonNumber, episodeNumber, averageRating
                FROM TitleBasics AS TB INNER JOIN Episodes AS E INNER JOIN Ratings AS R
                ON TB.tconst = E.tconst AND TB.tconst = R.tconst
                ),
    epcounts AS (SELECT tconst, COUNT(tconst) AS counts
                FROM shows
                GROUP BY tconst),			
    least AS (SELECT tconst, MIN(counts)
                FROM epcounts
                GROUP BY tconst),
    leastTconst AS (SELECT epcounts.tconst 
                FROM epcounts INNER JOIN least
                ON epcounts.tconst = least.tconst),
    max AS (SELECT tconst, MAX(averageRating)
                FROM shows
                GROUP BY tconst)

SELECT primaryTitle
FROM shows INNER JOIN leastTconst
ON shows.tconst = leastTconst.tconst
INNER JOIN max
ON shows.tconst = max.tconst;

--4. Compute the region with the lowest weighted average among both movies and tv shows

--5. Compute the titles of the TV episodes produced by the person who has produced the most movies before 2017

--6. Compute the name and birth year of people who have appeared in at least 2 movies, tv shows, and videos

WITH allinof AS (SELECT *
                FROM NameBasics AS N JOIN TitleBasics AS T
                ON N.knownForTitles = T.tconst),
    
    fourths AS (SELECT *
                FROM shows
                WHERE seasonNumber = 4
                GROUP BY primaryTitle)

SELECT primaryName
FROM fourths
HAVING COUNT(primaryTitle) > 9;

--7. Compute the name of every actor that died before the premiere of their 2nd movie

--8. Compute the writers who wrote the 3rd episode of the 4th season of the show with the highest average rating

--9. Compute the format of the title with the lowest number of votes

--10. Compute the original title of the video with both the most writers and least actors

--11. Compute the language of every short made in the region with the least projects

--12. Compute the runtime minutes and title of every movie that has a producer that was also a writer

--13. Compute the sum of cast and crew members for the tv show with the most episodes

--14. Compute the parent tv series of every tv series with less than 3 producers and a runtime of more than 42

--15. Compute the youngest writer of every movie of the horror genre
