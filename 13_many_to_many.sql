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
-- SELECT genre, ROUND(AVG(rating),2) AS avg_rating FROM series
-- JOIN reviews
--  ON series.id = reviews.series_id
-- GROUP BY genre;

-- challenge 6 - Reviewer Status
-- SELECT 
-- 	first_name, 
-- 	last_name, 
-- 	COUNT(reviews.id) AS COUNT,
-- 	IFNULL(MIN(rating),0) AS MIN,
-- 	IFNULL(MAX(rating),0) AS MAX,
-- 	IFNULL(AVG(rating),0) AS AVG,
-- CAN ALSO USE IF instead of CASE statement
	-- IF(COUNT(rating)>=1,'ACTIVE','INACTIVE') AS STATUS

-- case statement
	-- CASE 
	-- 	WHEN COUNT(reviews.id) = 0 THEN 'INACTIVE'
	-- 	ELSE 'ACTIVE'
	-- END AS STATUS

	-- CASE 
 --         WHEN Count(rating) >= 10 THEN 'POWER USER' 
 --         WHEN Count(rating) > 0 THEN 'ACTIVE' 
 --         ELSE 'INACTIVE' 
 --       end                              AS STATUS 
-- FROM reviewers
-- LEFT JOIN reviews 
-- 	ON reviewers.id = reviews.reviewer_id
-- GROUP BY reviewers.id;


-- challenge 7
SELECT 
	title,
	rating, 
	CONCAT(first_name,' ',last_name) AS reviewers
FROM series
INNER JOIN reviews 
	ON series.id = reviews.series_id
INNER JOIN reviewers
	ON reviews.reviewer_id = reviewers.id
ORDER BY title;