-- SELECT title, rating FROM series
-- JOIN reviews
-- 	ON series.id = reviews.series_id;


-- challenge 2 
-- SELECT title, AVG(rating) AS avg_rating FROM series
-- JOIN reviews 
-- 	ON series.id = reviews.series_id
-- 	GROUP BY series.id
-- 	ORDER BY avg_rating;

-- challenge 3 
-- SELECT first_name, last_name, rating FROM reviewers
-- JOIN reviews
-- 	ON reviewers.id = reviews.reviewer_id;

--  challenge 4
-- SELECT title AS unreviewed_series FROM series
-- LEFT JOIN reviews
-- 	ON series.id = reviews.series_id
-- WHERE rating IS NULL; 
-- can't use rating = NULL 

-- challenge 5
SELECT genre, ROUND(AVG(rating),2) AS avg_rating FROM series
JOIN reviews
 ON series.id = reviews.series_id
GROUP BY genre;



